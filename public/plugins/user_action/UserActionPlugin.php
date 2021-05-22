<?php
namespace plugins\user_action;

use cmf\lib\Plugin;
use plugins\user_action\model\UserLogsModel;
use think\Db;

class UserActionPlugin extends Plugin
{

    public $info = array(
        'name'        => 'UserAction',//Demo插件英文名，改成你的插件英文就行了
        'title'       => '用户行为插件',
        'description' => '用户行为插件',
        'status'      => 1,
        'author'      => 'zjmf',
        'version'     => '1.0'
    );

    public $hasAdmin = 0;//插件是否有后台管理界面

    // 插件安装
    public function install()
    {
        return true;//安装成功返回true，失败false
    }

    // 插件卸载
    public function uninstall()
    {
        // 在这里不要try catch数据库异常，直接抛出上层会处理异常后回滚的
        return true;//卸载成功返回true，失败false
    }

    //实现的footer_start钩子方法
//    public function userActionLog($param)

//        public function run()
//        {
//
//    }

    public function userActionLog($param)
    {
        $request = request();
        //> 请求路径
        $action = $request->server()['REQUEST_URI'];
        $method = $request->method();
        $str=explode('/',$action);
        $action = str_replace('/','.',$action);
        $path = '';

        // 三元运算符从左到右， 想要右边整体加括号
        $id = $request->uid > 0 ? $request->uid : ($param['uid'] >0 ? $param['uid'] : $param['id']);
        $id =(int)$id;
        foreach ($str as $k => $v){
            if($k<3){
                $path .=str_replace('_','',$v);
            }
        }
        $path = strtolower($path);
        $time=time();
        $this->assign("js_debug",APP_DEBUG?"?v=$time":"");
        $ip = get_client_ip();
        $username = $request->uname??$param['uname']??$param['username'];
        $array_log = [$id,$username,date('H:i:s'),$ip,$method,$action,$request->param()];
        $filename = CMF_ROOT . 'data/user_log/';
        !is_dir($filename) && mkdir($filename, 0755, true);
        $file_hwnd=fopen($filename.date('Y-m-d').".log","a+");
        fwrite($file_hwnd,json_encode($array_log)."\r\n");
        fclose($file_hwnd);
        $routeInfo = $request->routeInfo();
        //> 日志存库
        $data = array(
            'uid'   =>  $id??0,
            'username'  =>  $username,
            'method'    =>  $method,
            'action'    =>  $action,
            'url'  => $routeInfo['route'],
            'ip'    =>  $ip,
            'create_time'   =>  time(),
        );
        try
        {
            // TODO: 先保存到日志 然后统一时间写入数据库
            UserLogsModel::create($data);
        }
            //捕获异常

        catch(Exception $e)
        {
            $error_log =  'ErrorMessage: ' .$e->getMessage();
            !is_dir($filename) && mkdir($filename, 0755, true);
            $file_hwnd=fopen($filename.date('Y-m-d').".log","a+");
            fwrite($file_hwnd,json_encode($error_log)."\r\n");
            fclose($file_hwnd);
        }
    }

}