<?php
namespace certification\threehc;

use app\admin\lib\Plugin;
use certification\threehc\logic\Threehc;

class ThreehcPlugin extends Plugin
{
    # 基础信息
    public $info = array(
        'name'        => 'Threehc',//Demo插件英文名，改成你的插件英文就行了
        'title'       => '三要素--深圳华辰',
        'description' => '三要素--深圳华辰',
        'status'      => 1,
        'author'      => '顺戴网络',
        'version'     => '1.0',
        'help_url'    => 'https://market.aliyun.com/products/57000002/cmapi025566.html?spm=5176.10695662.1996646101.searchclickresult.52b1749a9QYHYu'
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

    /*
     * 个人认证
     * certifi参数为系统参数+自定义参数数组:
     * $certifi = [
     *    # 系统参数
     *    'name' => '姓名',
     *    'card' => '身份证号',
     *    'phone' => '手机号', # phone字段需要开发者在collectionInfo()中定义,否则返回空
     *    'bank' => '银行卡号', # bank字段需要开发者在collectionInfo()中定义,否则返回空
     *    'company_name' => '公司名',
     *    'company_organ_code' => '公司代码',
     *    # 插件自定义参数 collectionInfo()中返回,列：
     *    'test_field' => '自定义字段'
     * ]
     */
    public function personal($certifi)
    {
        if (file_exists(__DIR__.'/config/config.php')){
            $con = require __DIR__.'/config/config.php';
        }else{
            $con = [];
        }
        $config = $this->getConfig();
        $_config = array_merge($con,$config);
        $type = $_config['type'];
        if ($type == 2){
            $param = [
                'name'=>  $certifi['name'],
                'bank'=>  $certifi['bank'],
            ];
        }elseif ($type == 3){
            $param=[
                'bank'=>  $certifi['bank'],
                'name'=>  $certifi['name'],
                'number'=>   $certifi['card'],
                'type'=>   0,
            ];
        }else{
            $param=[
                'bank'=>  $certifi['bank'],
                'mobile'=>  $certifi['phone'],
                'name'=>   $certifi['name'],
                'number'=>   $certifi['card'],
                'type'=>   0,
            ];
        }
        # TODO WYH 自定义字段 自行操作
        # $custom1 = $certifi['test_field'];

        $logic = new Threehc();
        $query = $logic->createLinkstrings($param);
        $appcode = $_config['app_code'];
        $result = $logic->httpsPhoneThree($appcode,$query,$_config['threehc_url'],$type);
        $data = [
            'status' => 2, # 1通过，2未通过，3待审核
            'auth_fail' => '',
            'certify_id' => $result['log_id']?:'',
        ];
        if ($result['ret'] == 200){
            if (isset($result['data']['desc']) && $result['data']['desc'] == '一致'){ # 通过
                $data['status'] = 1;
            }else{
                $data['auth_fail'] = $result['data']['desc']?:'';
            }
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
        $config = $this->getConfig();
        $_config = array_merge($con,$config);
        $type = $_config['type'];
        if ($type == 2){
            $param = [
                'name'=>  $certifi['name'],
                'bank'=>  $certifi['bank'],
            ];
        }elseif ($type == 3){
            $param=[
                'bank'=>  $certifi['bank'],
                'name'=>  $certifi['name'],
                'number'=>   $certifi['card'],
                'type'=>   0,
            ];
        }else{
            $param=[
                'bank'=>  $certifi['bank'],
                'mobile'=>  $certifi['phone'],
                'name'=>   $certifi['name'],
                'number'=>   $certifi['card'],
                'type'=>   0,
            ];
        }
        # TODO WYH 自定义字段 自行操作
        # $custom1 = $certifi['test_field'];

        $logic = new Threehc();
        $query = $logic->createLinkstrings($param);
        $appcode = $_config['app_code'];
        $result = $logic->httpsPhoneThree($appcode,$query,$_config['threehc_url'],$type);
        $data = [
            'status' => 2, # 1通过，2未通过，3待审核
            'auth_fail' => '',
            'certify_id' => $result['log_id']?:'',
        ];
        if ($result['ret'] == 200){
            if (isset($result['data']['desc']) && $result['data']['desc'] == '一致'){ # 通过
                $data['status'] = 1;
            }else{
                $data['auth_fail'] = $result['data']['desc']?:'';
            }
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
        $config = $this->getConfig();
        $type = $config['type'];
        if ($type == 2){
            $data = [
                'bank' => [
                    'title' => '银行卡号',
                    'type'  => 'text', # 字段类型：text文本,目前仅支持文本类型!
                    'value' => '',
                    'tip'   => '请输入银行卡号',
                    'required'   => true, # 是否必填
                ],
            ];
        }elseif ($type == 3){
            $data = [
                'bank' => [
                    'title' => '银行卡号',
                    'type'  => 'text', # 字段类型：text文本,目前仅支持文本类型!
                    'value' => '',
                    'tip'   => '请输入银行卡号',
                    'required'   => true, # 是否必填
                ]
            ];
        }elseif ($type == 4){
            $data = [
                'bank' => [
                    'title' => '银行卡号',
                    'type'  => 'text',
                    'value' => '',
                    'tip'   => '请输入银行卡号',
                    'required'   => true, # 是否必填
                ],
                'phone' => [
                    'title' => '手机号',
                    'type'  => 'text',
                    'value' => '',
                    'tip'   => '请输入手机号',
                    'required'   => true, # 是否必填
                ],
            ];
        }else{
            $data = [];
        }
        return $data;
    }

    # 当返回数据中ping为true时,需要实现此方法,系统轮询调用
    public function getStatus($certifi)
    {
        return true;
    }
}