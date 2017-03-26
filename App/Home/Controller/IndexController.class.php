<?php
namespace Home\Controller;
use Think\Controller;
use Think\Exception;

class IndexController extends CommonController {
    static $templates;
    public function index($type =''){

       $res =  M('Menu')->where('type=2')->select();
       $this->assign('res',$res);
       $this->display();
    }
    public function product()
    {

        $this->display();
    }

    //获取阅读量
    public function getCount()
    {
      if(IS_POST && IS_AJAX)
      {
          if(!$_POST)
          {
              return show(0,'获取失败');
          }
          $newsIds = array_unique($_POST);
         try{
             $list = D('News')->getNewsByNewsIdIn($newsIds);
         }catch(Exception $e)
         {
              return show(0,$e->getMessage());
         }
          if(!$list)
          {
              return show(0,'数据获取失败');
          }
              return show(1,'success',$list);
      }
    }

    //生成 缓存
    public function build_html()
    {
        $this->index('buildHtml');
        return show(1,'首页缓存成功');
    }
    //自动生成缓存
    public function crontab_build_html()
    {
        if(APP_CRONTAB !=1)
        {
              die('the_file_must_exec_crontab');
        }
        $result = D('Baisc')->select();
        if(!$result['cacheindex'])
        {
            die('系统没有设置开启自动生成首页缓存的内容');
        }
        $this->index('buildHtml');
    }

    //  备份 mysqldump -uroot -p -B obj >F://
}