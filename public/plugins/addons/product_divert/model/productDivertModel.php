<?php


namespace addons\product_divert\model;


use think\Db;
use think\db\Query;
use think\Exception;

class productDivertModel
{

    /*
     * @title 获取所有转移产品
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @return array
     */
    public static function getList($param)
    {
        $page = !empty($param['page']) ? intval($param['page']) : config('page');
        $limit = !empty($param['limit']) ? intval($param['limit']) : config('limit');
        $order = !empty($param['order']) ? trim($param['order']) : 'id';
        $sort = !empty($param['sort']) ? trim($param['sort']) : 'DESC';
        $status = !empty($param['status']) ? trim($param['status']) : '';
        if(!in_array($order, ['create_time','end_time'])){
            $order = 'create_time';
        }
        $userid = $param['uid'];
        $fun = function (Query $query) use ($status ,$userid) {
            if (!empty($status)) {
                $query->where('status', $status);
            }
        };
        $fun_user = function (Query $query) use ($status ,$userid) {
            $query->whereOr(['push_userid'=>$userid,'pull_userid'=>$userid]);
        };

        $model = Db::name('product_divert')
            ->where($fun)
            ->where($fun_user);

        $product_divert_count = $model ->count('id');
        $product_divert = $model
            ->field('id,push_invoice_id,pull_invoice_id,product_name,product_domain,product_ip,push_userid,pull_userid,push_username,pull_username,push_cost,pull_cost,status,create_time,end_time')
            ->order($order, $sort)
            ->limit($limit)
            ->page($page)
            ->select()
            ->toArray();

        $status_text = lang('STATUS_DESCRIBE');
        foreach ($product_divert as $k =>$v){
            if ($v['push_invoice_id'])$product_divert[$k]['push_pay_status'] = Db::name('invoices')->where(['id'=>$v['push_invoice_id']])->value('status');
            if ($v['pull_invoice_id'])$product_divert[$k]['pull_pay_status'] = Db::name('invoices')->where(['id'=>$v['pull_invoice_id']])->value('status');
            $product_divert[$k]['create_time'] = date('Y-m-d H:i', $product_divert[$k]['create_time']);
            $product_divert[$k]['end_time'] = $product_divert[$k]['end_time']?date('Y-m-d H:i', $product_divert[$k]['end_time']):'N/A';
            $product_divert[$k]['status_text'] = $status_text[$product_divert[$k]['status']];
        }
        return ['status' => 200, 'data' => $product_divert, 'count' =>$product_divert_count];
    }

    public static function countProductDivert($userid)
    {
        $count = Db::name('product_divert')
            ->whereOr(['push_userid'=>$userid,'pull_userid'=>$userid])
            ->count('id');
        return ['status' => 200, 'data' => $count];;
    }

    /*
     * @title 根据用户获取一条记录-包括账单支付状态
     * @param .name:id type:int require:1 default: other: desc:记录id
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @param .name:from_author type:string require:1 default: other: desc:  发起模式 | 转出PUSH | 接收PULL
     * @return array
     */
    public static function getRowsData($param)
    {
        $whereMap = [];
        $whereMap['p.id'] = $param['id'];
        if ($param['from_author']=='PUSH') {
            $whereMap['p.push_userid'] = $param['uid'];
        }
        elseif ($param['from_author']=='PULL') {
            $whereMap['p.pull_userid'] = $param['uid'];
        }else {
            return ['status' => 400, 'data' => []];
        }
        $product_divert = Db::name('product_divert')
            ->alias('p')
            ->leftJoin('invoices i','p.push_invoice_id=i.id')
            ->where($whereMap)
            ->field('p.*,i.status as pay_status')
            ->find();
        $data['product_divert'] = $product_divert;
        return ['status' => 200, 'data' => $data];
    }

    /*
     * @title 检测返回数据
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @param .name:hostid type:int require:1 default: other: desc:主机id
     * @return array
     */
    public static function checkDivertData($param)
    {
        #配置
        $res = Db::name('plugin')
            ->where('name','ProductDivert')
            ->find();
        $system = json_decode($res['config'],true);

        #产品
        $product = Db::name('host')
            ->alias('h')
            ->leftJoin('products p','h.productid=p.id')
            ->field('h.domain,h.dedicatedip,p.name,p.id,h.id as hid')
            ->where(['h.id'=>$param['hostid'],'h.uid'=>$param['uid']])
            ->find();
        $data['system'] = $system;
        $data['product'] = $product;

        #验证 是否可以转移 （产品资格 与 产品归属权）
        if (!in_array($product['id'],$system['product_range'])){
            throw new Exception(lang('NOT_PRODUCT_DIVERT'));
        }

        #验证：服务是否处于转移流程
        $product_divert = Db::name('product_divert')
            ->field('id')
            ->where(['hostid'=>$param['hostid'],'status'=>1])
            ->find();
        if ($product_divert){
            throw new Exception(lang('NON_REPEATABLE'));
        }
        return ['status' => 200, 'data' => $data];
    }

    /*
     * @title 创建转移数据
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @param .name:hostid type:int require:1 default: other: desc:主机id
     * @param .name:name type:int require:1 default: other: desc:名称
     * @param .name:domain type:int require:1 default: other: desc:主机名
     * @param .name:dedicatedip type:int require:1 default: other: desc:ip
     * @param .name:userid type:int require:1 default: other: desc:转移目标用户id
     * @param .name:uname type:int require:1 default: other: desc:转移目标用户名
     * @param .name:validity_period type:int require:1 default: other: desc:过期时间
     * @param .name:push_cost type:int require:1 default: other: desc:转出费用
     * @param .name:pull_cost type:int require:1 default: other: desc:接收费用
     * @return int
     */
    public static function createData($params)
    {
        $touser = Db::name('clients')
            ->field('id,username')
            ->where(['id'=>$params['userid']])
            ->find();

        $data['hostid'] = $params['hostid'];
        $data['product_name'] = $params['name']??'NAME:N/A';
        $data['product_domain'] = $params['domain']??'DOMAIN:N/A';
        $data['product_ip'] = $params['dedicatedip']??'IP:N/A';
        $data['push_userid'] = $params['uid'];
        $data['push_username'] = $params['uname'];
        $data['pull_userid'] = $touser['id'];
        $data['pull_username'] = $touser['username'];
        $data['create_time'] = time();
        $data['due_time'] = time()+86400*$params['validity_period'];;
        $data['push_cost'] = $params['push_cost'];
        $data['pull_cost'] = $params['pull_cost'];
        try{
            $product_divert_id = Db::name('product_divert')->insertGetId($data);#转移记录
        }catch (\Exception $e){
            throw new Exception($e->getMessage());
        }
        $res['product_divert_id'] = $product_divert_id;
        $res['from_author'] = 'PUSH';
        return ['status' => 200, 'data' => $res];
    }

    /*
     * @title 创建转移费用账单
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @param .name:product_divert_id type:int require:1 default: other: desc:转移记录id
     * @param .name:from_author type:string require:1 default: other: desc:  发起模式 | 转出账单PUSH | 接收账单PULL
     */
    public static function divertInvoiceID($param,$divert)
    {
        if ($param['from_author']=='PUSH') {
            $divert_cost = $divert['push_cost'];
            $invoice_obj = 'push_invoice_id';
        }
        elseif ($param['from_author']=='PULL') {
            $divert_cost = $divert['pull_cost'];
            $invoice_obj = 'pull_invoice_id';
        }else {
            throw new Exception('账单创建方式不存在');
        }
        #转移费用最小为整数
        $divert_cost = (float)$divert_cost;
        $inc_data = [
            'uid' => $param['uid']
            ,'create_time' => time()
            ,'due_time' => time()
            ,'subtotal' => $divert_cost
            ,'total' => $divert_cost
            ,'status' => 'Unpaid'
            ,"type" => 'transfer_fee'   //> 类型:转移费用
            ,'url' => shd_addon_url("ProductDivert://Index/pushpulllist",[],true)
        ];
        #此次转移费用为0的时候-修改为已支付
        if (empty($divert_cost)){
            $inc_data['invoice_num'] = date("Ymd") . $param['uid'] . mt_rand(100000,999999);
            $inc_data['paid_time'] = time();
            $inc_data['status'] = 'Paid';
        }

        $item_data = [
            'uid' => $param['uid']
            ,'rel_id' => $divert['hostid']
            ,'type' => 'transfer_fee'   //> 类型:转移费用
            ,'description' => '产品转移费用账单'
            ,'amount' => $divert_cost
            ,'due_time' => strtotime("+365 day")
        ];
        try{
            $invoice_id = Db::name('invoices')->insertGetId($inc_data);
            $item_data['invoice_id'] = $invoice_id;
            Db::name('invoice_items')->insert($item_data);
            Db::name('product_divert')->where(['id'=>$param['product_divert_id']])->update([$invoice_obj=>$invoice_id]);
        }catch (\Exception $e){
            throw new Exception($e->getMessage());
        }
        #此次转移费用为0的时候-不返回账单号(用于控制JS的支付弹窗)
        if (empty($divert_cost)){
            $invoice_id = 0;
        }

        return ['status' => 200, 'data' => ['invoice_id'=>$invoice_id]];
    }

    /*
     * @title 接收时候检检测数据
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @param .name:id type:int require:1 default: other: desc:转移记录id
     * @param .name:from_author type:string require:1 default: other: desc:模式 PULL
     * @divert .name:pull_cost type:float desc:接收费用
     * @divert .name:hostid type:in desc:主机hostid
     */
    public static function pullServerDivert($param,$divert)
    {
        if ($param['from_author']=='PULL') {
            $divert_cost = (float)$divert['pull_cost'];
        }else {
            return false; #方式不匹配 不自动完成
        }

        if (empty($divert_cost)) {
            Db::name('product_divert')->where(['id' => $param['id'],'pull_userid'=>$param['uid']])->update(['status' => 2,'end_time'=>time()]);
            Db::name('host')->where(['id'=>$divert['hostid']])->update(['uid'=>$param['uid']]);
        }
        return true;
   }

    /*
     * @title 拒绝转移的数据修正
     * @param .name:uid type:int require:1 default: other: desc:用户id
     * @param .name:id type:int require:1 default: other: desc:转移记录id
     * @param .name:from_author type:string require:1 default: other: desc:发起模式 | 转出方PUSH | 接收方PULL | 定时任务SERVER
     */
    public static function refuseDivert($param)
    {
        #操作方过滤
        $whereMap = [];
        $whereMap['id'] = $param['id'];
        if ($param['from_author']=='PUSH') {
            $whereMap['push_userid'] = $param['uid'];
            $status = 3;#已关闭
        }
        elseif ($param['from_author']=='PULL') {
            $whereMap['pull_userid'] = $param['uid'];
            $status = 4;#已拒绝
        }
        elseif ($param['from_author']=='SERVER') {
            $status = 4;#已拒绝
        }else {
            throw new Exception('不存在此发起方式');
        }

        #查找记录
        $divert = Db::name('product_divert')
            ->where($whereMap)
            ->find();
        if (!$divert) {
            throw new Exception('未匹配到此记录,稍后刷新记录后重试');
        }
        $status_text = lang('STATUS_DESCRIBE');
        if (!($divert['status']==1)){
            throw new Exception('无法进行此操作,因为记录 '.$status_text[$divert['status']]);
        }

        #查找对应账单
        $invoice = Db::name('invoices')
            ->where(['id' => $divert['push_invoice_id']])
            ->field('status as pay_status,subtotal')
            ->find();
        if (!$divert) {
            throw new Exception('账单不存在，无法进行此操作');
        }

        #拒绝两种情况  /转出账户未付款
        if ($invoice['pay_status'] == 'Unpaid') {
            Db::name('product_divert')->where(['id' => $divert['id']])->update(['status' => $status,'end_time'=>time()]);
            Db::name('invoices')->where(['id' => $divert['push_invoice_id']])->update(['status' => 'Cancelled']);
        }

        #拒绝两种情况  /转出账户已付款
        if ($invoice['pay_status'] == 'Paid') {
            Db::name('product_divert')->where(['id' => $divert['id']])->update(['status' => $status,'end_time'=>time()]);
            Db::name('invoices')->where(['id' => $divert['push_invoice_id']])->update(['status' => 'Refunded']);
            Db::name('clients')->where(['id' => $divert['push_userid']])->setInc('credit', $invoice['subtotal']);
        }

        return ['status' => 200, 'data' => []];
    }

}