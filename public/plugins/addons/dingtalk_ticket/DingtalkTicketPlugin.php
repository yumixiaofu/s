<?php
namespace addons\dingtalk_ticket;

use app\admin\lib\Plugin;
use think\Db;

/*
 * 工单推送至钉钉插件--范例1：无台管理界面类插件
 * @author wyh <1340863150@qq.com>
 * @time 2021-01-13
 * @copyright Copyright (c) 2013-2021 https://www.idcsmart.com All rights reserved.
 */
class DingtalkTicketPlugin extends Plugin
{
    # 插件基本信息
    public $info = array(
        'name'        => 'DingtalkTicket', //插件英文名，改成你的插件英文就行了
        'title'       => '工单推送消息至钉钉',
        'description' => '工单推送消息至钉钉',
        'status'      => 1,           //状态
        'author'      => '顺戴网络',  //开发者
        'version'     => '1.0',      // 版本号
        'module'     => 'addons', //插件模块
    );
    # 插件安装
    public function install()
    {
        # step1:执行sql语句，插入需要的表、字段、数据
        # 表名不可与系统表名重复,尽量取长表名,字符集utf8mb4，innodb引擎，字段NOT NULL 且有默认值,字段说明
//        $sql = [
//            'DROP TABLE IF EXISTS `shd_ticket_config`',
//            'CREATE TABLE `shd_ticket_config` (
//  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
//  `department` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT \'部门id， 逗号隔开\',
//  `webhook` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT \'\' COMMENT \'机器人url\',
//  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT \'通知内容\',
//  `create_time` int(11) NOT NULL,
//  `update_time` int(11) NOT NULL,
//  PRIMARY KEY (`id`)
//) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;',
//        ];
//        foreach ($sql as $v){
//            Db::execute($v);
//        }
//        if ($this->hasAdmin){
//            # 插入权限
//            Db::name('auth_rule')->insertAll();
//        }
        # 安装成功返回true，失败false
        return true;
    }

    # 插件卸载
    public function uninstall()
    {
        # 在这里不要try catch数据库异常，直接抛出上层会处理异常后回滚的

        # step1:删除安装时插入的表、字段、数据
//        $sql = [
//            'DROP TABLE IF EXISTS `shd_ticket_config`',
//        ];
//        foreach ($sql as $v){
//            Db::execute($v);
//        }
        # 卸载成功返回true，失败false
        return true;
    }

    // 实现系统钩子after_ticket_create
    public function afterTicketCreate($param)
    {
        $config = $this->getConfig();
        $webhook = $config['webhook'];
        $content = $config['content'];
        $dpt = $config['dmlist'];# 需要通知的部门
        # 工单id
        $ticket_id = $param['id'];
        # 构造参数
        $ticket = Db::name('ticket')
            ->alias('a')
            ->field('a.dptid,a.title,a.content,b.name')
            ->leftJoin('ticket_department b','a.dptid = b.id')
            ->where('a.id',$ticket_id)
            ->find();
        if (!in_array($ticket['dptid'],$dpt)){
            return true;
        }
        # 参数替换
        $content = str_replace(['{$department}','{$ticket_title}','$ticket_content'],[$ticket['name'],$ticket['title'],$ticket['content']],$content);
        $json = [
            'msgtype' => 'text',
            'text' => [
                'content' => $content,
            ],
        ];
        $result = $this->request_by_curl($webhook,json_encode($json));
        $result = json_decode($result,true);
        $uid = request()->uid?:0;
        if($result['errcode'] != 0)
        {
            active_logs('钉钉推送消息失败:' . $content . "时间：".date('Ymd H:i:s',time()) . ';errorMsg:' . $result['errmsg'],$uid,'',2);
            return false;
        }
        active_logs('钉钉推送消息成功:' . $content . "时间：".date('Ymd H:i:s',time()),$uid,'',2);
        return true;
    }

    private function request_by_curl($remote_server, $post_string)
    {
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, $remote_server);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 5);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array ('Content-Type: application/json;charset=utf-8'));
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        // 线下环境不用开启curl证书验证, 未调通情况可尝试添加该代码
        curl_setopt ($ch, CURLOPT_SSL_VERIFYHOST, 0);
        curl_setopt ($ch, CURLOPT_SSL_VERIFYPEER, 0);
        $data = curl_exec($ch);
        curl_close($ch);
        return $data;
    }

}