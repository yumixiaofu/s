<?php
namespace addons\demo_style;

use app\admin\lib\Plugin;

/*
 * 插件页面样式Demo
 * @author 顺戴
 * @time 2021-03-15
 * @copyright Copyright (c) 2013-2021 https://www.idcsmart.com All rights reserved.
 */
class DemoStylePlugin extends Plugin
{
    # 插件基本信息
    public $info = array(
        'name'        => 'DemoStyle', //插件英文名，改成你的插件英文就行了
        'title'       => '插件页面样式Demo',
        'description' => '开发者开发插件页面时,可参考此demo样式',
        'status'      => 1,           //状态
        'author'      => '顺戴网络',  //开发者
        'version'     => '1.0',      // 版本号
        'module'     => 'addons', //插件模块
    );
    # 插件安装
    public function install()
    {
        # 安装成功返回true，失败false
        return true;
    }
    # 插件卸载
    public function uninstall()
    {
        return true;
    }

    // 实现模板钩子template_after_servicedetail_suspended,输出按钮(测试使用)
    public function templateAfterServicedetailSuspended($param)
    {
        return '';
        $hid = intval($param['hostid']);
        $url = shd_addon_url("DemoStyle://Index/addhelp",['hid'=>$hid],true);
        return "<a href=\"{$url}\" class=\"btn btn-primary\" >Demo转移</a>";
    }
}