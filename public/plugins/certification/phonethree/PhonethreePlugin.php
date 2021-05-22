<?php
namespace certification\phonethree;

use app\admin\lib\Plugin;
use certification\phonethree\logic\Phonethree;

class PhonethreePlugin extends Plugin
{
    # 基础信息
    public $info = array(
        'name'        => 'Phonethree',//Demo插件英文名，改成你的插件英文就行了
        'title'       => '手机三要素',
        'description' => '手机三要素',
        'status'      => 1,
        'author'      => '顺戴网络',
        'version'     => '1.0',
        'help_url'    => 'https://market.aliyun.com/products/57000002/cmapi031847.html?spm=5176.730005-56956004-57000002.productlist.d_cmapi031847.191c36f29QwBy8&amp;innerSource=search#sku=yuncode2584700001'
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

    public function personal($certifi)
    {
        if (file_exists(__DIR__.'/config/config.php')){
            $con = require __DIR__.'/config/config.php';
        }else{
            $con = [];
        }
        $param = [
            'idcard' => $certifi['card'],
            'phone' => $certifi['phone'],
            'realname' => $certifi['name']
        ];
        $config = $this->getConfig();
        $_config = array_merge($con,$config);
        $logic = new Phonethree();
        $query = $logic->createLinkstrings($param);
        $appcode = $_config['app_code'];
        $result = $logic->httpsPhoneThree($appcode,$query,$_config['phonethree_url']);
        $data = [
            'status' => 2,
            'auth_fail' => '',
            'certify_id' => $result['ordersign']?:'',
        ];
        if ($result['code'] == 200){
            $data['status'] = 1; # 认证通过
            $data['auth_fail'] = $result['msg']?:'';
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
        if (file_exists(__DIR__.'/config/config.php')){
            $con = require __DIR__.'/config/config.php';
        }else{
            $con = [];
        }
        $param = [
            'idcard' => $certifi['card'],
            'phone' => $certifi['phone'],
            'realname' => $certifi['name']
        ];
        $config = $this->getConfig();
        $_config = array_merge($con,$config);
        $logic = new Phonethree();
        $query = $logic->createLinkstrings($param);
        $appcode = $_config['app_code'];
        $result = $logic->httpsPhoneThree($appcode,$query,$_config['phonethree_url']);
        $data = [
            'status' => 2,
            'auth_fail' => '',
            'certify_id' => $result['ordersign']?:'',
        ];
        if ($result['code'] == 200){
            $data['status'] = 1; # 认证通过
            $data['auth_fail'] = $result['msg']?:'';
        }else{
            $data['auth_fail'] = $result['msg']?:'实名认证接口配置错误,请联系管理员';
        }
        # 调用系统方法，更新实名认证状态
        updateCompanyCertifiStatus($data);
        return "<h3 class=\"pt-2 font-weight-bold h2 py-4\"><img src=\"\" alt=\"\"> 正在认证,请稍等...</h3>";
    }

    # 收集信息
    public function collectionInfo()
    {
        $data = [
            'phone' => [
                'title' => '手机号',
                'type'  => 'text',
                'value' => '',
                'tip'   => '请输入手机号',
                'required'   => true, # 是否必填
            ],
        ];
        return $data;
    }

    # 当返回数据中ping为true时,需要实现此方法,系统轮询调用
    public function getStatus($certifi)
    {
        return true;
    }

}