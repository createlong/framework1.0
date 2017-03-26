<?php
function show($code,$message,$data = array())
{
    $result = array(
        'status'=>$code,
        'message'=>$message,
        'data'=>$data
    );
    exit(json_encode($result));
}
function p($data){
    // 定义样式
    $str='<pre style="display: block;padding: 9.5px;margin: 44px 0 0 0;font-size: 13px;line-height: 1.42857;color: #333;word-break: break-all;word-wrap: break-word;background-color: #F5F5F5;border: 1px solid #CCC;border-radius: 4px;">';
    // 如果是boolean或者null直接显示文字；否则print
    if (is_bool($data)) {
        $show_data=$data ? 'true' : 'false';
    }elseif (is_null($data)) {
        $show_data='null';
    }else{
        $show_data=print_r($data,true);
    }
    $str.=$show_data;
    $str.='</pre>';
    echo  $str;
}
//获取菜单类型
function getMenuModel($type)
{
    if($type == 1)
    {
        return "后台菜单";
    }
    if($type == 2)
    {
        return "前台菜单";
    }
}
//更改状态
function changeStatus($status)
{
    if($status == 1) return '开启';
    else return '关闭';
}
//url
function getUrl($nav)
{
    if(isset($nav['f']) && $nav['f'] == 'index')
    {
        $url = './admin.php?c='.$nav['c'];
    }else{
        $url = './admin.php?c='.$nav['c'].'&a='.$nav['f'];
    }
    return $url;

}
//获取所有的前台菜单
function getMenu($menus,$catid)
{
    foreach($menus AS $key=>$value)
    {
        $menus[$value['menu_id']] = $value['name'];
    }
    return $menus[$catid];
}
//判断是否有图
function is_hasthumb($thumb)
{
    if(isset($thumb) && $thumb)
    {
        return '有';
    }
    return '无';
}