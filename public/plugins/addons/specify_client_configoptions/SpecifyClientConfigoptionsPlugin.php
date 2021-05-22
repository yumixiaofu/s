<?php
namespace addons\specify_client_configoptions;

use app\admin\lib\Plugin;
use think\Db;
use think\db\Query;

/*
 * 指定客户产品配置插件
 * @author 顺戴
 * @time 2021-03-15
 * @copyright Copyright (c) 2013-2021 https://www.idcsmart.com All rights reserved.
 */
class SpecifyClientConfigoptionsPlugin extends Plugin
{
    # 插件基本信息
    public $info = array(
        'name'        => 'SpecifyClientConfigoptions', //插件英文名，改成你的插件英文就行了
        'title'       => '指定客户产品配置插件',
        'description' => '用于指定客户在开通指定产品时,可以强制指定其中的可配置选项为指定配置',
        'status'      => 1,           //状态
        'author'      => '顺戴网络',  //开发者
        'version'     => '1.0',      // 版本号
        'module'     => 'addons', //插件模块
    );
    # 插件安装
    public function install()
    {
        # step1:执行sql语句，插入需要的表、字段、数据
        # 表名不可与系统表名重复,尽量取长表名,表前缀shd_,字符集utf8mb4，innodb引擎，字段NOT NULL 且有默认值,字段说明
        $sql = [
            'DROP TABLE IF EXISTS `shd_specify_client_configoptions`',
            'CREATE TABLE `shd_specify_client_configoptions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL DEFAULT \'0\' COMMENT \'客户id\',
  `pid` int(11) NOT NULL DEFAULT \'0\' COMMENT \'产品id\',
  `cid` int(11) NOT NULL DEFAULT \'0\' COMMENT \'配置项id\',
  `oid` int(11) NOT NULL DEFAULT \'0\' COMMENT \'子项id\',
  `status` tinyint(1) NOT NULL DEFAULT \'1\' COMMENT \'是否启用:1是默认\',
  `create_time` int(11) NOT NULL DEFAULT \'0\' COMMENT \'创建时间\',
  `update_time` int(11) NOT NULL DEFAULT \'0\' COMMENT \'更新时间\',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `pid` (`pid`),
  KEY `cid` (`cid`),
  KEY `oid` (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4'
        ];
        foreach ($sql as $v){
            Db::execute($v);
        }
        # 安装成功返回true，失败false
        return true;
    }
    # 插件卸载
    public function uninstall()
    {
        # 在这里不要try catch数据库异常，直接抛出上层会处理异常后回滚的

        # step1:删除安装时插入的表、字段、数据
        $sql = [
            'DROP TABLE IF EXISTS `shd_specify_client_configoptions`',
        ];
        foreach ($sql as $v){
            Db::execute($v);
        }
        # 卸载成功返回true，失败false
        return true;
    }
    # 实现系统钩子pre_cart_product_config(购物车输出配置项前)
    public function preCartProductConfig($param)
    {
        $uid = intval($param['uid']);
        $pid = intval($param['pid']);
        $options = $param['options'];
        foreach ($options as &$option){
            $cid = $option['id'];# 配置项id
            # 获取到指定的配置子项
            $oids = Db::name('specify_client_configoptions')
                ->where('uid',$uid)
                ->where('pid',$pid)
                ->where('cid',$cid)
                ->where('status',1) # 规则启用
                ->column('oid');
            if (!empty($oids)){ # 若存在规则
                $sub_filter = [];
                foreach ($option['sub'] as $v){
                    if (in_array($v['id'],$oids)){
                        $sub_filter[] = $v;
                    }
                }
                $option['sub'] = $sub_filter;
            }
        }
        return $options;
    }
}