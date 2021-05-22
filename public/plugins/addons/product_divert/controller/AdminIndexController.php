<?php
namespace addons\product_divert\controller;

use addons\product_divert\validate\ProductDivertValidate;
use app\admin\controller\PluginAdminBaseController;
use think\Db;
use think\db\Query;
use think\Exception;

/*
 *  @author 顺戴
 *  继承app\admin\controller\PluginAdminBaseController;
 *  后台基础设置
 */
class AdminIndexController extends PluginAdminBaseController
{
    # 配置
    private $_config;
    private $validate;

    public function initialize()
    {
        parent::initialize();
        $con = require dirname(__DIR__) . '/config/config.php';
        $this->_config = array_merge($con, $this->getPlugin()->getConfig());
        $this->validate = new ProductDivertValidate();
    }

    //转移列表页面
    public function index()
    {
        $params = $this->request->param();
        $page = !empty($params['page']) ? intval($params['page']) : config('page');
        $limit = !empty($params['limit']) ? intval($params['limit']) : config('limit');
        $describe = lang('STATUS_DESCRIBE');
        $res = Db::name('product_divert')
            ->order('create_time','DESC')
            ->withAttr('create_time', function ($value) {
                return $value?date('Y-m-d H:i', $value):'N/A';
            })
            ->withAttr('end_time', function ($value) {
                return $value?date('Y-m-d H:i', $value):'N/A';
            })
            ->withAttr('status', function ($value)use($describe) {
                return $describe[$value];
            })
            ->field('id,product_name,push_username,pull_username,create_time,end_time,push_cost,pull_cost,status')
            ->page($page)
            ->limit($limit)
            ->select()
            ->toArray();

        $count = Db::name('product_divert')->count('id');

        $page_info = [];
        $page_info['count'] = $count;
        $page_info['limit'] = $limit;
        $page_info['page'] = ceil($count/$limit);
        $page_info['pages'] = range(1,$page_info['page']);

        $this->assign('pageInfo',$page_info);
        $this->assign('list',$res);
        return $this->fetch('/index');
    }

    //配置页面
    public function setting()
    {
        $res = Db::name('plugin')
            ->where('name','ProductDivert')
            ->find();
        #产品组
        $product_groups = Db::name('product_groups')
            ->field('id,name')
            ->select()
            ->toArray();
        #产品
        $products = Db::name('products')
            ->field('id,name,gid')
            ->select()
            ->toArray();
        #产品分配到所属分组
        $res_products = [];
        foreach ($products as $k => $v) {
            $res_products[$v['gid']][] = $v;
        }
        #配置
        $system = json_decode($res['config'],true);

        if ($this->request->isPost()) {
            $param = $this->request->param();
            $system['is_open'] = $param['is_open']??0;
            $system['validity_period'] = $param['validity_period']?:$system['validity_period'];
            $system['push_cost'] = ($param['push_cost'])??$system['push_cost'];
            $system['pull_cost'] = $param['pull_cost']??$system['pull_cost'];
            $system['protection_period'] = $param['protection_period']??$system['protection_period'];
            $system['product_range'] = $param['product_range']?:$system['product_range'];

            $dataArr['config'] = json_encode($system);
            if (!$res){
                $error_msg = lang('PLUGIN_INSTALL_ERROR');
                $this->assign('ErrorMsg',$error_msg);
            }else {
                Db::name('plugin')
                    ->where('name','ProductDivert')
                    ->update($dataArr);
                $success_msg = lang('CHANGE_SUCCESS');
                $this->assign('SuccessMsg',$success_msg);
            }
        }
        $this->assign('system',$system);
        $this->assign('productgroups',$product_groups);
        $this->assign('res_products',$res_products);
        $this->assign('selected',$system['product_range']);
        return $this->fetch('/setting');
    }



}