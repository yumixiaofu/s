<?php
return [
        [
            'type' => '账单支付',
            'var' => '您好,您已成功支付账单号#{invoiceid},账单金额{total},谢谢支持.',
            'name'=>'invoice_pay'
        ],
        [
            'type' => '账单支付逾期',
            'var' => '您有一笔账单已过期,账单号{invoiceid},金额{total},请及时关注.',
            'name'=>'invoice_overdue_pay'
        ],
        [
            'type' => '提交工单',
            'var' => '您好,我们已经收到您提交的工单：{subject}.团队将火速处理您的问题.请耐心等待.',
            'name'=>'submit_ticket'
        ],
        [
            'type'=> '工单回复',
            'var' => '您提交的工单{subject}有新的回复,请注意查收.',
            'name'=>'ticket_reply'
        ],
        [
            'type' => '产品暂停',
            'var' => '您好,您购买的产品{product_name}由于{description}的缘故,现已被暂停所有功能.如需恢复使用,请尽快处理.',
            'name'=>'host_suspend'
        ],
        [
            'type' => '未支付账单',
            'var' => '您好,您已成功支付账单号#{invoiceid},账单金额{total}没有支付',
            'name'=>'unpay_invoice'
        ],
        [
            'type' => '发送验证码',
            'var' => '您的验证码{code},该验证码5分钟内有效,请勿泄漏于他人.',
            'name'=>'send_code'
        ],
        [
            'type'=>'登录短信提醒',
            'var'=> '您好,您的账号{account}于{time}时间在以下{address}地址登录.如您未曾尝试登录,请立即更改登录密码,以防账号被盗.',
            'name'=>'login_sms_remind'
        ],
        [
            'type' => '订单退款',
            'var' => '订单{order_id},金额{order_total_fee}已退款',
            'name'=>'order_refund'
        ],
        [
            'type' => '订单支付提醒(客户)',
            'var' => '您的订单(编号{order_id})已经完成付款,付款金额为：{order_total_fee}',
            'name'=>'invoice_payment_confirmation'
        ],
        [
            'type'=> '账单未付款提醒',
            'var' => '您购买的产品{product_name}(主机名{hostname})将于{product_end_time}到期.为了保证届时可以正常使用,请在产品到期之前先行续费',
            'name'=>'second_renew_product_reminder'
        ],
        [
            'type' => '自动生成续费账单提醒',
            'var' => '您购买的产品{product_name}(主机名{hostname})将于{product_end_time}到期.为了保证届时可以正常使用,请在产品到期之前先行续费',
            'name'=>'renew_product_reminder'
        ],
        [
            'type' => '第3次逾期提醒',
            'var' => '您在{product_first_time}订购的{product_name}产品(主机名：{hostname})支付尚未完成.暂时无法开通.为了避免订单过期,请您及时付款',
            'name'=>'third_invoice_payment_reminder'
        ],
        [
            'type' => '第2次逾期提醒',
            'var' => '您在{product_first_time}订购的{product_name}产品(主机名：{hostname})支付尚未完成.暂时无法开通.为了避免订单过期,请您及时付款',
            'name'=>'second_invoice_payment_reminder'
        ],
        [
            'type'=>'第1次逾期提醒',
            'var'=> '您在{product_first_time}订购的{product_name}产品(主机名：{hostname})支付尚未完成.暂时无法开通.为了避免订单过期,请您及时付款。',
            'name'=>'first_invoice_payment_reminder'
        ],
        [
            'type'=>'下单提醒(客户)',
            'var'=> '您已成功下单{product_name}产品,为期{product_binlly_cycle}.请及时付款,以免订单失效.以下为账单信息产品名称:{product_name}产品单价:{product_price}付款周期:{product_binlly_cycle}订单创建时间:{order_create_time}',
            'name'=>'new_order_notice'
        ],
        [
            'type'=>'产品开通提醒(用户)',
            'var'=> '您购买的产品{product_name}现已开通,感谢使用!购买时间:{product_first_time},到期时间:{product_end_time},付款周期:{product_binlly_cycle}',
            'name'=>'default_product_welcome'
        ],
        [
            'type'=>'未续期产品删除提醒(用户)',
            'var'=> '您购买的产品{product_name}({hostname})由于未能在指定时间内续费,已于{product_terminate_time}自动删除.对因此而造成的不便我们表示歉意,希望您可以选择我们的其它产品.',
            'name'=>'service_termination_notification'
        ],
        [
            'type'=>'续费成功提醒(用户)',
            'var'=> '您购买的产品({product_name})现已续费成功,服务将持续至{product_end_time}.感谢您对我们的信赖!',
            'name'=>'service_unsuspension_notification'
        ],
        [
            'type'=>'未实名暂停产品',
            'var'=> '您购买的产品：{product_name}，主机名（{hostname}）由于为实名认证的缘故,现已被暂停所有功能.如需恢复使用，请尽快进行实名认证，否则产品将会在{product_end_time}日自动删除.',
            'name'=>'uncertify_reminder'
        ],
        [
            'type'=>'工单已开通提醒(客户)',
            'var'=> '我们已经收到您在{ticket_createtime}(时间)提交的工单:({ticketnumber_tickettitle}).团队将火速处理您的问题.请耐心等待.',
            'name'=>'support_ticket_opened'
        ],
        [
            'type'=>'成功绑定提醒(客户)',
            'var'=> '您的账号{username}与此{epw_type}:({epw_account})已成功进行绑定.如有疑问,请联系客服.',
            'name'=>'email_bond_notice'
        ],
        [
            'type'=>'注册成功',
            'var'=> '您已成功注册{system_companyname}账号,感谢您的使用.请完善账号个人信息并妥善保管.切勿向他人透漏登录密码!',
            'name'=>'registration_success'
        ],
        [
            'type'=>'信用额账单提醒',
            'var'=> '您有一笔信用额账单产生:账单号#{invoiceid},金额{total},请及时付款，以免相关产品被暂停',
            'name'=>'credit_limit_invoice_notice'
        ],
        [
            'type'=>'信用额账单逾期提醒',
            'var'=> '您有一笔信用额账单#{invoiceid}，金额{total}逾期未支付，现已被暂停相关产品所有功能，请及时支付',
            'name'=>'credit_limit_invoice_payment_reminder'
        ],
        [
            'type'=>'信用额账单未支付暂停产品',
            'var'=> '您购买的产品：{product_name}，主机名（{hostname}）由于未在有效期内支付信用额账单，现已被暂停所有功能.如需恢复使用，请尽快支付，否则产品将会在{product_end_time}日自动删除.',
            'name'=>'credit_limit_invoice_payment_reminder_host_suspend'
        ],

    ];