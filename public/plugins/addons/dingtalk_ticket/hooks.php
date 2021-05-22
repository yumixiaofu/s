<?php
use think\Db;
/*
 *  @author wyh
 *  @time 2021-01-13
 *  @description 客户自定义实现插件钩子,可以在application或template或者新建目录下建任意文件,并调用hook_add()方法
 *  application 应用钩子; template 模板钩子
 *
 *  hook_add($tag,$fun)
 *  @param  tag 钩子标签
 *  @param  fun 匿名函数
 *  @return mixed
 */
hook_add('after_daily_cron',function ($param){return 'test';});
# \think\facade\Hook::add('after_ticked_create', 'addons\client_care\controller\PushMsgController');