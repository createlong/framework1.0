<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <meta name="description" content="">
  <meta name="author" content="">
  <link rel="icon" href="">
  <title>登陆平台</title>
  <link href="/tp/Public/css/bootstrap.min.css" rel="stylesheet">
  <!--[endif]-->
</head>

<body>
<style>
  .s_center {
    margin-left: auto;
    margin-right: auto;
  }
  .is-right{
    width:200px;
    height:30px;
    float:right;
  }
</style>
<div class="s_center container col-lg-6 ">

    <form class="form-signin" enctype="multipart/form-data"  method="post">
      <h2 class="form-signin-heading">请登录</h2>
      <label class="sr-only">用户名</label>
      <input type="text"  class="form-control" name="username" placeholder="请填写用户名" required autofocus>
      <br />
      <label  class="sr-only">密码</label>
      <input type="password" name="password" id="inputPassword" class="form-control" placeholder="密码" required>
      <br />
      <label  class="sr-only">验证码</label>
      <div class="row">
        <div class="col-sm-2">
        <input type="text" name="code" class="form-control" placeholder="请填写验证码" required>
        </div>
        <img src="./admin.php?c=login&a=verify" onclick="this.src='./admin.php?c=login&a=verify&d='+Math.random();">
      </div>
      <div class="is-right">
        <p><a href="./admin.php?c=login&a=signin">没有帐号？注册一个！</a></p>
      </div>

        <br />
      <button class="btn btn-lg btn-primary btn-block" type="button" onclick="login.check()">登录</button>
    </form>

</div> <!-- /container -->
<script src="/tp/Public/js/jquery.js"></script>
<script src="/tp/Public/js/dialog/layer.js"></script>
<script src="/tp/Public/js/dialog.js"></script>
<script src="/tp/Public/js/admin/login.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
</body>
</html>