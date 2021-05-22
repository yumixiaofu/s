<?php
namespace addons\product_divert\controller\clientarea;

use addons\product_divert\model\productDivertModel;
use app\home\controller\PluginHomeBaseController;
use think\Db;
use think\Exception;
use think\Request;

/*
 *  @author 顺戴
 *  继承app\home\controller\PluginHomeBaseController;
 */
class IndexController extends PluginHomeBaseController
{

    /** 确认转移
     * @param Request $request
     * @return string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function pushserver(Request $request)
    {
        $param = $request->param();
        #数据验证
        if ($this->request->isPost()){
            Db::startTrans();
            try{
                $push_data = productDivertModel::checkDivertData($param);
                $param['name'] = $push_data['data']['product']['name'];
                $param['domain'] = $push_data['data']['product']['domain'];
                $param['dedicatedip'] = $push_data['data']['product']['dedicatedip'];
                $param['validity_period'] = $push_data['data']['system']['validity_period'];
                $param['push_cost'] = $push_data['data']['system']['push_cost'];
                $param['pull_cost'] = $push_data['data']['system']['pull_cost'];
                $res_divert = productDivertModel::createData($param);
                $res_divert['data']['uid'] = $param['uid'];
                $res_invoice = productDivertModel::divertInvoiceID($res_divert['data'],$param);
                Db::commit();
            }catch(\Exception $e){
                Db::rollback();
                $this->assign('ErrorMsg',$e->getMessage());
            }
        }
        if($res_invoice['status']==200){
            $this->assign('pay_invoice_id',$res_invoice['data']['invoice_id']);#账单id --TODO 判断是否弹起支付框
        }

        #渲染数据-分页-排序-筛选
        $res_data = $this->data_pagedata($request,$param);
        $data['page_data'] = $res_data['page_data'];
        $data['product_divert'] = $res_data['data'];

        $data['user_now'] = $param['uid'];
        $data['Title'] = lang('DIVERT_LIST');
        return $this->fetch('/pushpulllist',$data);
    }

    /**确认接收
     * @param id int 记录id
     * @param uid int 用户id
     * @return mixed|string
     */
    public function pullserver(Request $request)
    {
        $param = $request->param();
        $param['from_author'] = 'PULL';
        $product_divert = productDivertModel::getRowsData($param);
        # 模板数据
        $pull_data = $product_divert['data']['product_divert'];

        if (!$pull_data){
            #错误输出：该记录数据异常
            $this->assign('ErrorMsg',lang('ABNORMA_DATA'));
        }
        if ($pull_data['pay_status'] == 'Unpaid'){
            #错误输出：转让方还未付款，接收方不能进行操作
            $this->assign('ErrorMsg',lang('NO_OPERATION'));
        }
        if ($request->isPost()) {
            $param['product_divert_id'] = $param['id'];
            $param['from_author'] = 'PULL';
            Db::startTrans();
            try{
                $res_invoice = productDivertModel::divertInvoiceID($param,$pull_data);
                productDivertModel::pullServerDivert($param,$pull_data);//费用检测
                Db::commit();
            }catch(\Exception $e){
                Db::rollback();
                $this->assign('ErrorMsg',$e->getMessage());
            }
            if($res_invoice['status']==200){
                $this->assign('pay_invoice_id',$res_invoice['data']['invoice_id']);#账单id --TODO 判断是否弹起支付框
            }
        }
        if ($request->isGet()) {
            ######-PULL模态框数据-数据验证-弹窗渲染
            $is_open_pull_div = ($pull_data['pull_invoice_id'] > 1) ? 0 : 1;//已经确认过的不在弹出
            $this->assign('pull_data', $pull_data);#模态框数据
            $this->assign('is_open_pull_div', $is_open_pull_div);#TODO 判断是否弹起PULL模态框
        }

        #渲染数据-分页-排序-筛选
        $res_data = $this->data_pagedata($request,$param);
        $data['page_data'] = $res_data['page_data'];
        $data['product_divert'] = $res_data['data'];

        $data['user_now'] = $param['uid'];
        $data['Title'] = lang('DIVERT_LIST');
        return $this->fetch('/pushpulllist',$data);
    }

    /** 列表
     * @param Request $request
     * @return string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     */
    public function pushpulllist(Request $request)
    {
        $param = $request->param();
        $uid = $param['uid'];
        ######-PUSH模态框数据-数据验证-弹窗渲染
        #检测是否执行弹窗
        $host_id_token = $param['hostIdToken'] ?? 0;
        if ($host_id_token){
            try{
            $push_data = productDivertModel::checkDivertData(['uid'=>$uid,'hostid'=>$host_id_token]);
            }catch(\Exception $e){
                $this->assign('ErrorMsg',$e->getMessage());
            }
            if($push_data['status']==200){
                $this->assign('hostid',$host_id_token);#TODO 判断是否弹起PUSH模态框
                $this->assign('push_data',$push_data['data']);#模态框数据
            }
        }
        #渲染数据-分页-排序-筛选
        $res_data = $this->data_pagedata($request,$param);
        $data['page_data'] = $res_data['page_data'];
        $data['product_divert'] = $res_data['data'];

        $data['user_now'] = $param['uid'];
        $data['Title'] = lang('DIVERT_LIST');
        $data['status_describe'] = lang('STATUS_DESCRIBE');

        return $this->fetch('/pushpulllist',$data);
    }



    /** 【取消转发】-转移记录修改为已关闭-账单修改为已取消(未支付)/账单修改为已退款（已支付）
     * @param Request $request
     * @throws \Exception
     */
    public function pushrefuse(Request $request)
    {
        $param = $request->param();
        $param['from_author'] = 'PUSH';
        Db::startTrans();
        try{
            productDivertModel::refuseDivert($param);
            Db::commit();
        }catch(\Exception $e){
            Db::rollback();
            $this->assign('ErrorMsg',$e->getMessage());
        }

        #渲染数据-分页-排序-筛选
        $res_data = $this->data_pagedata($request,$param);
        $data['page_data'] = $res_data['page_data'];
        $data['product_divert'] = $res_data['data'];

        $data['user_now'] = $param['uid'];
        $data['Title'] = lang('DIVERT_LIST');

        return $this->fetch('/pushpulllist',$data);
    }

    /** 【拒绝接受】-转移记录修改为已关闭-账单修改为已取消(未支付)/账单修改为已退款（已支付）
     * @param Request $request
     * @throws \Exception
     */
    public function pullrefuse(Request $request)
    {
        $param = $request->param();
        $param['from_author'] = 'PULL';
        Db::startTrans();
        try{
            productDivertModel::refuseDivert($param);
            Db::commit();
        }catch(\Exception $e){
            Db::rollback();
            $this->assign('ErrorMsg',$e->getMessage());
        }

        #渲染数据-分页-排序-筛选
        $res_data = $this->data_pagedata($request,$param);
        $data['page_data'] = $res_data['page_data'];
        $data['product_divert'] = $res_data['data'];

        $data['user_now'] = $param['uid'];
        $data['Title'] = lang('DIVERT_LIST');

        return $this->fetch('/pushpulllist',$data);
    }


    //手动验证
    public function verificationResult(Request $request)
    {
        $param = $request->param();
        $res = Db::name('product_divert')
            ->alias('p')
            ->leftJoin('invoices i','p.pull_invoice_id=i.id')
            ->where(['p.id'=>$param['id'],'p.pull_userid'=>$param['uid']])
            ->field('i.status as pay_status,p.hostid')
            ->find();
        if(!$res['pay_status'] == 'Paid') {
            return json(['status' => 200, 'data' => 0]);
        }
        Db::startTrans();
        try{
            Db::name('product_divert')->where(['id' => $param['id'],'pull_userid'=>$param['uid']])->update(['status' => 2,'end_time'=>time()]);
            Db::name('host')->where(['id'=>$res['hostid']])->update(['uid'=>$param['uid']]);
            Db::commit();
        }catch(\Exception $e){
            Db::rollback();
        }

        #渲染数据-分页-排序-筛选
        $res_data = $this->data_pagedata($request,$param);
        $data['page_data'] = $res_data['page_data'];
        $data['product_divert'] = $res_data['data'];

        $data['user_now'] = $param['uid'];
        $data['Title'] = lang('DIVERT_LIST');

        return $this->fetch('/pushpulllist',$data);
    }

    //分页数据
    private function data_pagedata(Request $request,$param)
    {
        #注册分页筛选条件数据
        $this->page_data_register($request);

        ######list页面渲染数据
        $res_product_divert = productDivertModel::getList($param);

        #渲染分页数据
        $res_data = $res_product_divert['data'];
        $res_count = $res_product_divert['count'];
        $page_data = $this->page_data_rendering($request,$res_data,$res_count);

        return ['status' => 200,'data' => $res_product_divert['data'],'page_data' => $page_data];
    }

    //注册参数 1
    private function page_data_register(Request $request)
    {
        $param = $request->param();
        $page  = $param['page']>=1 ? intval($param['page']) : 1;
        $limit = $param['limit']>=1 ? intval($param['limit']) : 20;
        $orderby = strval($param['orderby']) ? strval($param['orderby']) : 'create_time';
        $sort = $param['sort']?? "DESC";
        $request->page = $page;
        $request->limit = $limit;
        $request->order = $orderby;
        $request->sort = $sort;
        return true;
    }

    //获取渲染分页 2
    private function page_data_rendering(Request $request,$data,$count)
    {
        $param = $request->param();
        $page  = $param['page']>=1 ? intval($param['page']) : 1;
        $limit = $param['limit']>=1 ? intval($param['limit']) : 20;

        $page_data['Pages'] = $this->ajaxPages($data, $limit, $page, $count);
        $page_data['Limit'] = $limit;
        $page_data['Count'] = $count;

        return $page_data;
    }

}