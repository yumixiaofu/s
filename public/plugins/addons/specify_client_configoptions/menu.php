<?php
/*
 *  自定义菜单
 */
return [
    [
        'name' => '设置', # 链接名称
        'url'  => 'SpecifyClientConfigoptions://AdminIndex/setting', # 链接格式   插件名://控制器名/方法
        'custom' => 0, # 是否为自定义路由
    ],
    [
        'name' => '规则列表',
        'url'  => 'SpecifyClientConfigoptions://AdminIndex/index',
        'custom' => 0,
    ],
];