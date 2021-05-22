<?php
/*
 *  自定义菜单
 */
return [
    [
        'name' => '样式1', # 链接名称
        'url'  => 'DemoStyle://AdminIndex/addhelp', # 链接格式   插件名://控制器名/方法
        'custom' => 0, # 是否为自定义路由
    ],
    [
        'name' => '样式2',
        'url'  => 'DemoStyle://AdminIndex/customerdetail1',
        'custom' => 0,
    ],
    [
        'name' => '样式3',
        'url'  => 'DemoStyle://AdminIndex/customerdetail2',
        'custom' => 0,
    ],
    [
        'name' => '样式4',
        'url'  => 'DemoStyle://AdminIndex/customerdetail3',
        'custom' => 0,
    ],
    [
        'name' => '样式5',
        'url'  => 'DemoStyle://AdminIndex/customerdetail4',
        'custom' => 0,
    ],
    [
        'name' => '样式6',
        'url'  => 'DemoStyle://AdminIndex/helplist',
        'custom' => 0,
    ],
    [
        'name' => '样式7',
        'url'  => 'https://www.baidu.com',
        'custom' => 1,
    ],
];