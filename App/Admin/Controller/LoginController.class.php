<?php
namespace Admin\Controller;
use Think\Controller;
use Think\Model;
class LoginController extends Controller
{
    public function login()
    {
        $this->display();
    }

    public function verify()
    {
        $config = array(
            'fontSize'=>14, //字体大小
            'length'=>4, //验证码位数
            'useNoise'=>false, //关闭验证码咋点
        );
        $verify = new \Think\Verify($config);
        $verify->entry();
    }

    public function signin()
    {
        if(IS_POST)
        {

            $username = $_POST['username'];
            $email = $_POST['email'];
            $regtime = time();
            $token = md5($username . $_POST['password'] . $regtime); //创建用于激活识别码
            $token_exptime = time() + 60 * 60 * 24; //过期时间为24小时后
            //现在这里简单的处理一下
            //TODO 在这里插入验证 和 更新时间
            $data = array(
                'user_name'=>$username,
                'user_pwd'=>md5($_POST['password']),
                'register_time'=>$regtime,
                'token'=>$token,
                'user_email'=>$_POST['email'],
            );
            $res = M('Users')->add($data);
            if(!$res){
                exit(json_encode(array('status'=>0,'message'=>'注册失败')));
            }
            //没有激活失败的话 保存在Session中
            $_SESSION['userid'] = $res;
            $str = "<a href='http://liyangceshi.sc2yun.com/tp/admin.php?c=login&a=checksign&token=".$data['token']."'>点此链接进行激活</a>";

            $flag = sendMail($email,'激活注册',$str);
            if($flag){
                exit(json_encode(array('status'=>1,'message'=>'注册成功,亲马上去邮箱进行验证')));
            }else{
                exit(json_encode(array('status'=>0,'message'=>'注册失败111')));
            }
    }
        $this->display();
    }

    public function checksign()
    {
        if($_GET['token'])
        {
            if($_SESSION['userid'])
            {
                $uid = $_SESSION['userid'];
                $token =  M('Users')->where(array('user_id'=>$uid))->getField('token');
                if($_GET['token'] == $token)
                {
                    $_SESSION['userid'] = $uid;
                    $this->success('恭喜你激活成功','http://liyangceshi.sc2yun.com/tp/admin.php');
                }
            }else{
                exit(json_encode(array('status'=>0,'message'=>'链接已过期')));
            }
        }
    }
}