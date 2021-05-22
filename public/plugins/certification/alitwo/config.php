<?php
/*
 * 实名认证后台自定义配置
 */
return [
    # 系统默认字段
    'amount' => [ # 无此配置,默认为0
        'title' => '金额',
        'type'  => 'text',
        'value' => 0,
        'tip'   => '支付金额',
    ],
    'free' => [ # 无此配置,默认为0
        'title' => '免费认证次数',
        'type'  => 'text',
        'value' => 0,
        'tip'   => '免费认证次数',
    ],
    # 开发者自定义字段
    'app_code'      => [
        'title' => 'appCode',
        'type'  => 'text',
        'value' => '',
        'tip'   => '',
    ]
];
