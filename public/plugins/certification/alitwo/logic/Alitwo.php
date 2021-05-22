<?php
namespace certification\alitwo\logic;

use certification\alitwo\AlitwoPlugin;

class Alitwo
{
    public $_config;

    public function __construct()
    {
        if (file_exists(dirname(__DIR__).'/config/config.php')){
            $con = require dirname(__DIR__).'/config/config.php';
        }else{
            $con = [];
        }
        $config = (new AlitwoPlugin())->getConfig();
        $this->_config = array_merge($con,$config);
    }

    public function alitwoHttp($idCard,$name)
    {
        $host = $this->_config['url'];
        $path = $this->_config['path'];
        $method = "GET";
        $appcode = $this->_config['app_code'];//开通服务后 买家中心-查看AppCode
        $headers = array();
        array_push($headers, "Authorization:APPCODE " . $appcode);
        $querys = "idCard={$idCard}&name=".urlencode($name);
        $url = $host . $path . "?" . $querys;
        $curl = curl_init();
        curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
        curl_setopt($curl, CURLOPT_URL, $url);
        curl_setopt($curl, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($curl, CURLOPT_FAILONERROR, false);
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($curl, CURLOPT_HEADER, true);
        if (1 == strpos("$" . $host, "https://")) {
            curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
            curl_setopt($curl, CURLOPT_SSL_VERIFYHOST, false);
        }
        $out_put = curl_exec($curl);
        $httpCode = curl_getinfo($curl, CURLINFO_HTTP_CODE);
        list($header, $body) = explode("\r\n\r\n", $out_put, 2);
        if ($httpCode == 200) {
            #print("正常请求计费(其他均不计费)<br>");
            #print($body);
            $body = json_decode($body,true);
            return ['status'=>200,'msg'=>'请求成功','body'=>$body];
        } else {
            if ($httpCode == 400 && strpos($header, "Invalid Param Location") !== false) {
                $msg = '参数错误';
            } elseif ($httpCode == 400 && strpos($header, "Invalid AppCode") !== false) {
                $msg = 'AppCode错误';
            } elseif ($httpCode == 400 && strpos($header, "Invalid Url") !== false) {
                $msg = '请求的 Method、Path 或者环境错误';
            } elseif ($httpCode == 403 && strpos($header, "Unauthorized") !== false) {
                $msg = '服务未被授权（或URL和Path不正确）';
            } elseif ($httpCode == 403 && strpos($header, "Quota Exhausted") !== false) {
                $msg = '套餐包次数用完';
            } elseif ($httpCode == 500) {
                $msg = 'API网关错误';
            } elseif ($httpCode == 0) {
                $msg = 'URL错误';
            } else {
                $headers = explode("\r\n", $header);
                $headList = array();
                foreach ($headers as $head) {
                    $value = explode(':', $head);
                    $headList[$value[0]] = $value[1];
                }
                $msg = $headList['x-ca-error-message']?:'参数名错误 或 其他错误';
            }
        }
        return ['status'=>400,'msg'=>$msg];
    }
}