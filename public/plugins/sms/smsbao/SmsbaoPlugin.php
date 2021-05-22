<?php
namespace sms\smsbao;

use app\admin\lib\Plugin;


class SmsbaoPlugin extends Plugin
{
    # 基础信息
    public $info = array(
        'name'        => 'Smsbao',//Demo插件英文名，改成你的插件英文就行了
        'title'       => '短信宝',
        'description' => '短信宝',
        'status'      => 1,
        'author'      => '智简魔方',
        'version'     => '1.0',
        'help_url'     => 'http://www.smsbao.com/',//申请接口地址
    );

    # 插件安装
    public function install()
    {
		//导入模板
		$smsTemplate= [];
		if (file_exists(__DIR__.'/config/smsTemplate.php')){
            $smsTemplate = require __DIR__.'/config/smsTemplate.php';
        }
		
        return $smsTemplate;
    }

    # 插件卸载
    public function uninstall()
    {
        return true;//卸载成功返回true，失败false
    }
	
	# 后台页面创建模板时可用参数
	public function description()
	{
		return file_get_contents(__DIR__.'/config/description.html');    
    } 
	
	#获取国内模板
	public function getCnTemplate($params)
	{				
		$data['status']='success';
		$data['template']['template_status']=2;
		return $data;
	}
	#创建国内模板
	public function createCnTemplate($params)
	{
		$data['status']='success';
		$data['template']['template_status']=2;
		return $data;
	}
	#修改国内模板
	public function putCnTemplate($params)
	{
		$data['status']='success';
		$data['template']['template_status']=2;
		return $data;
	}
	#删除国内模板
	public function deleteCnTemplate($params)
	{
		$data['status']='success';
		return $data;
	}
	#发送国内短信
    public function sendCnSms($params)
    {	   	
        $content=$this->templateParam($params['content'],$params['templateParam']);
		$param['content']=$params['config']['app_sign'].$content;
		$param['mobile']=trim($params['mobile']);
        $resultTemplate= $this->APIHttpRequestCURL('cn',$param,$params['config']);
		if($resultTemplate['status']=="success"){
			$data['status']="success";
			$data['content']=$content;
		}else{
			$data['status']="error";
			$data['content']=$content;
			$data['msg']=$resultTemplate['msg'];
		}
		return $data;
    }	
	#获取国际模板
	public function getGlobalTemplate($params)
	{		
		$data['status']='success';
		$data['template']['template_status']=2;
		return $data;
	}
	#创建国际模板
	public function createGlobalTemplate($params)
	{
		$data['status']='success';
		$data['template']['template_status']=2;
		return $data;
	}
	#修改国际模板
	public function putGlobalTemplate($params)
	{
		$data['status']='success';
		$data['template']['template_status']=2;
		return $data;
	}
	#删除国际模板
	public function deleteGlobalTemplate($params)
	{
		$data['status']='success';
		return $data;
	}
	#发送国际短信
    public function sendGlobalSms($params)
    {
    	$content=$this->templateParam($params['content'],$params['templateParam']);
		$param['content']=$params['config']['sign'].$content;
		$param['mobile']=trim($params['mobile']);
        $resultTemplate= $this->APIHttpRequestCURL('global',$param,$params['config']);
		if($resultTemplate['status']=="success"){
			$data['status']="success";
			$data['content']=$content;
		}else{
			$data['status']="error";
			$data['content']=$content;
			$data['msg']=$resultTemplate['msg'];
		}
		return $data;
    }	
	
	# 以下函数名自定义

	private function APIHttpRequestCURL($sms_type='cn',$params,$config){
		
		if($sms_type=='cn'){			
			$url='http://api.smsbao.com/sms';
		}else if($sms_type=="global"){
			$url='http://api.smsbao.com/wsms';
		}
        $statusStr = array(
            "0" => "短信发送成功",
            "-1" => "参数不全",
            "-2" => "服务器空间不支持,请确认支持curl或者fsocket，联系您的空间商解决或者更换空间！",
            "30" => "密码错误",
            "40" => "账号不存在",
            "41" => "余额不足",
            "42" => "帐户已过期",
            "43" => "IP地址限制",
            "50" => "内容含有敏感词",
            "51" => "手机号码不正确"
        );
        $user = $config['user']; //短信平台帐号
        $pass = md5($config['pass']); //短信平台密码
        $content= $params['content'];//要发送的短信内容
        $phone = $params['mobile'];//要发送短信的手机号码
        $sendurl = $url."?u=".$user."&p=".$pass."&m=".$phone."&c=".urlencode($content);
        $result =file_get_contents($sendurl) ;
        //短信发送成功返回True，失败返回false
        if ($result  == '0') {
            return array('status' => "success", 'msg' => $statusStr[$result]);
        } else {
            return array('status' => "error", 'msg' =>  $statusStr[$result] . '. Code: ' . $result);
        }
    }

    private function templateParam($content,$templateParam){
        foreach ($templateParam as $key => $para) {
            $content = str_replace('{' . $key . '}', $para, $content);//模板中的参数替换
        }       
        return $content;
    }
}