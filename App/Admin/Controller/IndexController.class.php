<?php
namespace Admin\Controller;
use Think\Controller;
class IndexController extends CommonController {

    public function index(){

            $data = M('Menu')->where('type=1')->select();
            $this->assign('data',$data);
            $this->display();

    }

    public function add()
    {
        if(IS_POST && IS_AJAX)
        {
            $data = $_POST;
            $data['createtime'] = time();
            $menu_id = M('Menu')->add($data);
            if(!$menu_id)
            {
                return show(0,'添加失败');
            }
                return show(1,'添加成功');
        }
            $this->display();
    }

    public function content()
    {
        $res = M('New')->select();
        $data = M('Menu')->select();
        $this->assign('ContentRes',$res);
        $this->assign('menu_select',$data);
        $this->display();
    }

    public function addContent()
    {
        $data = M('Menu')->select();
        $jump_url = $_SERVER['HTTP_REFERER'];
        //来源
        $copy_from = C('COPY_FROM');
        //标题颜色
        $title_color = C('TITLE_FONT_COLOR');
        if(IS_POST && IS_AJAX)
        {
            $_POST['content'] = htmlspecialchars($_POST['content']);

            $data = $_POST;
            $cid = M('New')->add($data);
            if(!$cid) return show(0,'添加文章失败');
            return show(1,'添加成功');
        }
        $this->assign('menus',$data);
        $this->assign('copy_from',$copy_from);
        $this->assign('title_color',$title_color);
        $this->display();
    }


}