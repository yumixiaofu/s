<?php

namespace addons\dingtalk_ticket\controller;

use addons\dingtalk_ticket\model\TicketDepartmentModel;
use app\admin\controller\PluginAdminBaseController;
use think\Db;

/*
 *  @author 顺戴网络
 *  继承app\admin\controller\PluginAdminBaseController;
 *  后台基础设置
 */
class AdminIndexController extends PluginAdminBaseController
{
    protected function initialize()
    {
        parent::initialize();
        $adminId = cmf_get_current_admin_id(); //获取后台管理员id，可判断是否登录
        if (!empty($adminId)) {
            $this->assign('admin_id', $adminId);
        }
    }

    public function index()
    {
        return $this->fetch('/index'); # 对应template/admin/index.tpl模板
    }

    // 自定义设置
    public function setting()
    {
        $configInDb = $this->getPlugin()->getConfig();
        if ($this->request->isPost()){
            $param = $this->request->param();
            $action = $param['action'];
            $config = $param['config'];
            if ($action == 'setwebhook'){ # 接口设置
                $_config = array_merge($configInDb,$config);
            }elseif ($action == 'setsend'){ # 发送设置
                $dmlist = Db::name('ticket_department')->whereIn('id',$config['dmlist'])->column('id');
                $config['dmlist'] = $dmlist;
                $_config = array_merge($configInDb,$config);
            }
            # 插件表shd_plugin有config配置字段,可以存json格式的配置数据
            Db::name('plugin')->where('name',$this->getPlugin()->getName())->update(['config'=>json_encode($_config)]);
        }else{
            $_config = $configInDb;
        }
        $_config['dmlist'] = implode(',',$_config['dmlist']);
        $this ->assign([
            'config' => $_config,
            'dm_list' => TicketDepartmentModel::select(),
        ]);
        $this->assign('Title','基础设置');
        return $this->fetch('/setting'); # 对应template/admin/setting.tpl模板
    }
}
