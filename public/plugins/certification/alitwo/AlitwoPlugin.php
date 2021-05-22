<?php
namespace certification\alitwo;

use app\admin\lib\Plugin;
use certification\alitwo\logic\Alitwo;
use think\Db;

class AlitwoPlugin extends Plugin
{
    # 基础信息
    public $info = array(
        'name'        => 'Alitwo',//Demo插件英文名，改成你的插件英文就行了
        'title'       => '阿里云身份证二要素',
        'description' => '阿里云身份证二要素',
        'status'      => 1,
        'author'      => '顺戴网络',
        'version'     => '1.0',
        'help_url'    => 'https://market.aliyun.com/products/57000002/cmapi022049.html?spm=5176.2020520132.101.2.d4467218o9nv71#sku=yuncode16049000014'
    );

    # 插件安装
    public function install()
    {
        return true;//安装成功返回true，失败false
    }

    # 插件卸载
    public function uninstall()
    {
        return true;//卸载成功返回true，失败false
    }

    # 个人认证
    public function personal($certifi)
    {
        # TODO WYH 自定义字段 自行操作
        $custom1 = $certifi['test_field'];

        $logic = new Alitwo();
        $result = $logic->alitwoHttp($certifi['card'],$certifi['name']);
        $data = [
            'status' => 2,
            'auth_fail' => '',
            'certify_id' => $result['body']['traceId']?:'',
        ];
        if ($result['status'] == 200){
            if ($result['body']['status'] == '01'){
                $data['status'] = 1;
            }
            $data['auth_fail'] = $result['body']['msg']?:'';
        }else{
            $data['auth_fail'] = $result['msg']?:'实名认证接口配置错误,请联系管理员';
        }
        # 调用系统方法，更新实名认证状态
        updatePersonalCertifiStatus($data);
        return "<h3 class=\"pt-2 font-weight-bold h2 py-4\"><img src=\"\" alt=\"\"> 正在认证,请稍等...</h3>";
    }

    # 企业认证
    public function company($certifi)
    {
        # TODO WYH 自定义字段 自行操作
        $custom1 = $certifi['test_field'];

        $logic = new Alitwo();
        $result = $logic->alitwoHttp($certifi['card'],$certifi['name']);
        $data = [
            'status' => 2,
            'auth_fail' => '',
            'certify_id' => $result['body']['traceId']?:'',
        ];
        if ($result['status'] == 200){
            if ($result['body']['status'] == '01'){
                $data['status'] = 1;
            }
            $data['auth_fail'] = $result['body']['msg']?:'';
        }else{
            $data['auth_fail'] = $result['msg']?:'实名认证接口配置错误,请联系管理员';
        }
        # 调用系统方法，更新实名认证状态
        updateCompanyCertifiStatus($data);
        return "<h3 class=\"pt-2 font-weight-bold h2 py-4\"><img src=\"\" alt=\"\"> 正在认证,请稍等...</h3>";
    }

    # 前台自定义字段输出
    public function collectionInfo()
    {
        return [];
    }

    # 当返回数据中ping为true时,需要实现此方法,系统轮询调用
    public function getStatus($certifi)
    {
        return true;
    }
}