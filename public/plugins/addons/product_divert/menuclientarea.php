<?php
/*
 *  前台自定义菜单
 */
return [
    [
        'name' => '产品转移', # 菜单名称 默认为一级菜单
        'url'  => '', # 菜单路由 (若有子菜单,此值留空)
        'fa_icon' => 'bx bxs-grid-alt', # 菜单图标 支持bootstrap
        'lang' => [ # 菜单多语言
            'chinese' => '产品转移', # 中文
            'chinese_tw' => '产品转移', # 台湾
            'english' => 'Product Divert', # 英文
        ],
        'child' => [  # 子菜单 没有定义为空数组
            [
                'name' => '转移列表', # 链接名称
                'url'  => 'ProductDivert://Index/pushpulllist', # 链接格式   插件名://控制器名/方法   菜单路由 (若有子菜单,此值留空)
                'fa_icon' => '',
                'lang' => [ # 菜单多语言
                    'chinese' => '转移列表', # 中文
                    'chinese_tw' => '转移列表', # 台湾
                    'english' => 'Divert List', # 英文
                ],
                'child' => []
            ]
        ]
    ]
];