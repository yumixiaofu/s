<?php
/*
 *  自定义菜单
 */
return [
    [
        'name' => '基础配置', # 链接名称
        'url'  => 'ProductDivert://AdminIndex/setting', # 链接格式   插件名://控制器名/方法
        'custom' => 0, # 是否为自定义路由
    ],
    [
        'name' => '转移列表',
        'url'  => 'ProductDivert://AdminIndex/index',
        'custom' => 0,
    ],
];