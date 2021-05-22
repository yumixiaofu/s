<?php

namespace addons\product_divert;

use addons\product_divert\model\productDivertModel;
use app\admin\lib\Plugin;
use think\Db;
use think\db\Query;

class ProductDivertPlugin extends Plugin
{
    public $info = array(
        'name' => 'ProductDivert',//Demo插件英文名，改成你的插件英文就行了
        'title' => '产品转移',//插件名称
        'description' => '管理用户的产品转移',//插件说明
        'status' => 1, //插件状态 1开启 0禁用，3未安装
        'author' => '顺戴网络', //作者
        'version' => '1.0', //版本
        'module' => 'addons' //所属模块,这里固定为addons
    );

    // 插件安装
    public function install()
    {
        # step1:执行sql语句，插入需要的表、字段、数据
        # 表名不可与系统表名重复,尽量取长表名,表前缀shd_,字符集utf8mb4，innodb引擎，字段NOT NULL 且有默认值,字段说明
        $sql = [
            "DROP TABLE IF EXISTS `shd_product_divert`",
            "CREATE TABLE `shd_product_divert`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `hostid` int(10) NOT NULL COMMENT '对应转移的数据表',
  `product_name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `product_domain` varchar(255) NOT NULL DEFAULT '' COMMENT '主机名',
  `product_ip` varchar(255) NOT NULL DEFAULT '' COMMENT 'ip',
  `push_userid` int(10) NOT NULL COMMENT '转出人id',
  `push_username` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '转出人名称',
  `pull_userid` int(10) NOT NULL COMMENT '转入人id',
  `pull_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '转入人名称',
  `create_time` int(10) NOT NULL DEFAULT 0 COMMENT '发起时间',
  `end_time` int(10) NOT NULL DEFAULT 0 COMMENT '完成时间',
  `due_time` int(10) NOT NULL DEFAULT 0 COMMENT '过期时间',
  `push_cost` decimal(10, 2) NOT NULL DEFAULT 0 COMMENT '转出手续费',
  `pull_cost` decimal(10, 2) NOT NULL DEFAULT 0 COMMENT '转入手续费',
  `push_invoice_id` int(10) NOT NULL DEFAULT 0 COMMENT '转出账单id',
  `pull_invoice_id` int(10) NOT NULL DEFAULT 0 COMMENT '转入账单id',
  `status` enum('1','2','3','4') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态对应:待接收-已完成-已关闭-已拒绝',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4"
        ];

        foreach ($sql as $v){
            Db::execute($v);
        }
        #无专属数据表 省略过程
        return true;//安装成功返回true，失败false
    }

    // 插件卸载
    public function uninstall()
    {
        # 在这里不要try catch数据库异常，直接抛出上层会处理异常后回滚的
        # step1:删除安装时插入的表、字段、数据
        $sql = "DROP TABLE IF EXISTS `shd_product_divert`";
        Db::execute($sql);
        #无专属数据表 省略过程
        # 卸载成功返回true，失败false
        return true;
    }

    // 实现系统钩子invoice_paid 账单支付后操作
    public function invoicePaid($param)
    {

        $invoiceid = intval($param['invoiceid']);
        $uid = request()->uid;
        $res = Db::name('product_divert')
            ->alias('p')
            ->leftJoin('invoices i','p.pull_invoice_id=i.id')
            ->where(['i.id'=>$invoiceid,'p.pull_userid'=>$uid])
            ->field('i.status as pay_status,p.hostid,p.id')
            ->find();

        if(!$res['pay_status'] == 'Paid') {
            return json(['status' => 200, 'data' => 0]);
        }
        Db::startTrans();
        try{
            Db::name('product_divert')->where(['id' => $res['id'],'pull_userid'=>$uid])->update(['status' => 2,'end_time'=>time()]);
            Db::name('host')->where(['id'=>$res['hostid']])->update(['uid'=>$uid]);
            Db::commit();
        }catch(\Exception $e){
            Db::rollback();
        }
        return json(['status' => 200, 'data' => 1]);
    }

    // 实现模板钩子template_after_servicedetail_suspended,输出按钮
    public function templateAfterServicedetailSuspended($param)
    {
        $hostid = intval($param['hostid']);
        $_config = $this->getConfig();
        if (!$_config['is_open']){ # 功能未开启
            return '';
        }
        $tmp = Db::name('host')
            ->where('create_time','<=',time()-$_config['protection_period']*24*3600)
            ->where('id',$hostid)
            ->where('domainstatus','Active')
            ->find();
        if (empty($tmp)){ # 保护期内    激活状态
            return '';
        }
        if (!in_array($tmp['productid'],$_config['product_range'])){ # 不在转移范围内
            return '';
        }
        $product_divert = Db::name('product_divert')
            ->field('id')
            ->where(['hostid'=>$hostid,'status'=>1])
            ->find();
        $url = shd_addon_url("ProductDivert://Index/pushpulllist",['hostIdToken'=>$hostid],true);
        if ($product_divert){ # 正处于转移流程
            return "<a href=\"{$url}\" class=\"btn btn-primary h-100 custom-button text-white\" disabled>转移</a>";
        }
        return "<a href=\"{$url}\" class=\"btn btn-primary h-100 custom-button text-white\" >转移</a>";
    }

    // 实现模板钩子template_after_service_domainstatus_selected
    public function templateAfterServiceDomainstatusSelected()
    {
        $_config = $this->getConfig();
        if (!$_config['is_open']){ # 功能未开启
            return '';
        }
        $uid = request()->uid;
        $count = Db::name('product_divert')
            ->where('pull_userid',$uid)
            ->where('status',1)
            ->count();
        $count = intval($count);
        if (empty($count)){ # 没有产品
            return '';
        }
        // return "<input type=\"text\" class=\"form-control \" placeholder=\"您有{$count}个产品待转入\" disabled>";
        return "<div class=\"alert alert-warning alert-dismissible\" role=\"alert\"><button type=\"button\" class=\"close\" data-dismiss=\"alert\" aria-label=\"Close\"><span aria-hidden=\"true\">&times;</span></button>您有<strong>{$count}</strong>个产品待转入</div>";
    }

    //定时任务钩子 after_daily_cron 每日自动任务之后
    public function afterDailyCron()
    {
        $_config = $this->getConfig();
        if (!$_config['is_open']){ # 功能未开启
            exit();
        }
        $tmp = Db::name('product_divert')
            ->where('due_time','<=',time())
            ->where('status',1)
            ->count('id');
        if (empty($tmp)){ # 无需处理
            exit();
        }

        Db::name('product_divert')
            ->where('due_time','<=',time())
            ->where('status',1)
            ->field('id,push_invoice_id,push_userid')
            ->chunk(100,function ($pd){
                #处理逻辑
                foreach ($pd as $v){
                    Db::startTrans();
                    try{
                        $param['id'] = $v['id'];
                        $param['from_author']='SERVER';
                        productDivertModel::refuseDivert($param);
                        Db::commit();
                    }catch(\Exception $e){
                        Db::rollback();
                    }
                }
            });
    }

}