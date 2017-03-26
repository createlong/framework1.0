<?php
namespace Admin\Controller;
use Think\Controller;
class CommonController extends Controller
{
    public function __construct()
    {
        parent::__construct();
//        if(!$_SESSION['userid'])
//        {
//            redirect('./admin.php?c=login&a=login');
//        }
    }

}