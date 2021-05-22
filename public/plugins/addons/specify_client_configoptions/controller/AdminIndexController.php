<?php
namespace addons\specify_client_configoptions\controller;

use app\admin\controller\PluginAdminBaseController;
use think\Db;
use think\db\Query;

/*
 *  @author 顺戴
 *  继承app\admin\controller\PluginAdminBaseController;
 *  后台基础设置
 */
class AdminIndexController extends PluginAdminBaseController
{
    # 配置
    private $_config = [];

    public function initialize()
    {
        parent::initialize();
        if (file_exists(dirname(__DIR__).'/config/config.php')){
            $con = require dirname(__DIR__).'/config/config.php';
        }else{
            $con = [];
        }

        $this->_config = array_merge($con,$this->getPlugin()->getConfig());
    }
    /**
     * @title 规则列表
     * @description 接口说明:规则列表
     * @author wyh
     */
    public function index()
    {
        $data = $this->request->param();
        $page = !empty($data['page'])?intval($data['page']):config('page');
        $limit = !empty($data['limit'])?intval($data['limit']):config('limit');
        $order = !empty($data['order'])?intval($data['order']):'a.id';
        $sort = !empty($data['sort'])?intval($data['sort']):'desc';
        $rules = Db::name('specify_client_configoptions')
            ->alias('a')
            ->field('a.id,b.username,c.name,d.option_name,e.option_name as sub_name,a.status,a.create_time')
            ->leftJoin('clients b','a.uid = b.id')
            ->leftJoin('products c','a.pid = c.id')
            ->leftJoin('product_config_options d','a.cid = d.id')
            ->leftJoin('product_config_options_sub e','a.oid = e.id')
            //->limit($limit)
            //->page($page)
            ->order($order,$sort)
            ->select()->toArray();
        $count = Db::name('specify_client_configoptions')
            ->alias('a')
            ->leftJoin('clients b','a.uid = b.id')
            ->leftJoin('products c','a.pid = c.id')
            ->leftJoin('product_config_options d','a.cid = d.id')
            ->leftJoin('product_config_options_sub e','a.oid = e.id')
            ->count();
        $return['rules'] = $rules;
        $return['total'] = $count;
        $return['pages'] = $this->ajaxPages($rules, $limit, $page, $count); # 分页方法
        $return['limit'] = $limit;
        $this->assign($return);
        $this->assign('Title','规则列表');
        return $this->fetch('/index');
    }

    /**
     * @title 设置规则
     * @description 接口说明:设置规则
     * @author wyh
     */
    public function setting()
    {
        $params = $this->request->param();
        $id = intval($params['id']);
        $rule = Db::name('specify_client_configoptions')->where('id',$id)->find();
        # 所有激活客户
        $clients = Db::name('clients')
            ->field('id,username')
            ->where('status',1)
            ->select()->toArray();
        # 选择产品
        $products = Db::name('products')
            ->field('id,name')
            ->select()->toArray();
        # 产品配置项
        foreach ($products as &$product){
            $pid = $product['id'];
            $configs = Db::name('product_config_options')
                ->alias('a')
                ->field('a.id,a.option_name')
                ->leftJoin('product_config_groups b','a.gid = b.id')
                ->leftJoin('product_config_links c','c.gid = b.id')
                ->where('c.pid',$pid)
                ->select()->toArray();
            foreach ($configs as &$config){
                $cid = $config['id'];
                $subs = Db::name('product_config_options_sub')
                    ->field('id,option_name')
                    ->where('config_id',$cid)
                    ->select()->toArray();
                $config['subs'] = $subs;
            }
            $product['configs'] = $configs;
        }
        $this->assign([
            'rule' => $rule?:[],
            'clients' => $clients,
            'products' =>$products,
        ]);
        $this->assign('Title','设置');
        return $this->fetch("/setting");
    }

    // 设置规则
    public function settingPost()
    {
        if ($this->request->isPost()){
            $param = $this->request->param();
            # TODO 未做验证
            $id = intval($param['id']);# 规则id
            $uids = $param['uids']?:[]; # 客户id 可多选
            $oids = $param['oids']?:[]; # 配置子线id 可多选
            $data = [];
            foreach ($uids as $uid){
                foreach ($oids as $oid){
                    $one = [
                        'uid' => $uid,
                        'pid' => intval($param['pid']),
                        'cid' => intval($param['cid']),
                        'oid' => $oid,
                        'status' => $param['status']?intval($param['status']):1,
                    ];
                    if ($id){ # 更新
                        $one['update_time'] = time();
                        Db::name('specify_client_configoptions')->where('id',$id)->update($one);
                    }else{ # 新增
                        $one['create_time'] = time();
                        $data[] = $one;
                    }
                }
            }
            if (!$id){ # 新增
                Db::name('specify_client_configoptions')->insertAll($data);
            }
        }
        $url = shd_addon_url('SpecifyClientConfigoptions://AdminIndex/index');
        header("location:{$url}");exit();
    }

    // 删除规则
    public function delete()
    {
        $params = $this->request->param();
        $id = intval($params['id']);
        Db::name('specify_client_configoptions')->where('id',$id)->delete();
        return ['status'=>200,'msg'=>'删除成功！'];
    }
}