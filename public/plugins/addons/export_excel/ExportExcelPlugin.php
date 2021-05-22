<?php
namespace addons\export_excel;

use app\admin\lib\Plugin;
use think\Db;
use think\db\Query;

/*
 * 数据导出至Excel插件
 * @author 顺戴
 * @time 2021-03-17
 * @copyright Copyright (c) 2013-2021 https://www.idcsmart.com All rights reserved.
 */
class ExportExcelPlugin extends Plugin
{
    # 插件基本信息
    public $info = array(
        'name'        => 'ExportExcel', //插件英文名，改成你的插件英文就行了
        'title'       => '数据导出至Excel插件',
        'description' => '选择列表,字段,可导出至Excel',
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
            "CREATE TABLE `shd_export_plugin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `custom_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '自定义名称',
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT '导出列表名称',
  `ep_param` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '要导出的参数',
  `create_time` int(11) NOT NULL DEFAULT '0',
  `update_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;",
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
            'DROP TABLE IF EXISTS `shd_export_plugin`'
        ];
        foreach ($sql as $v){
            Db::execute($v);
        }
        # 卸载成功返回true，失败false
        return true;
    }
    # 实现系统钩子pre_cart_product_config(购物车输出配置项前)
//    public function preCartProductConfig($param)
//    {
//
//    }
}