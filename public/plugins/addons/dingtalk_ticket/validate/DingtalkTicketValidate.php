<?php

namespace addons\dingtalk_ticket\validate;

use think\Validate;

class DingtalkTicketValidate extends Validate
{
    protected $rule = [
        'config'                      => 'require|array',
    ];
    protected $message = [
        'config.require'              => '{%CONFIG_REQUIRE}',
    ];
}

