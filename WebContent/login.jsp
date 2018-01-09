<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>请登录系统</title>
    
    <link href="css/login.css" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script> 
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link href="../../assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script> 
    $(function () {
        (function ($) {
            $.getUrlParam = function (name) {
                var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
                var r = window.location.search.substr(1).match(reg);
                if (r != null) return unescape(r[2]); return null;
            }
        })(jQuery);
        var err = $.getUrlParam('error');
	if (err == "yes") {
		document.getElementById("alert").style.display="";
	}
    });
</script>
  </head>
	<style type="text/css">
		body{background-color:#efeff4}
	</style>
	
  <body>
  <div class="container">  

	<div class="row" style="margin-top: 20%;margin-left: 30px;">
		<div class="col-md-6" style="border-right: 1px solid #ddd;">
			<form class="well col-md-10" action="Login" method="post">
				<div id="alert" class="alert alert-warning" style="display:none">
				    <a href="#" class="close" data-dismiss="alert">
				        &times;
				    </a>
				    <strong>警告！</strong>用户名密码错误，请重试！
				</div>
				<h3>用户登录</h3>
				<div class="input-group input-group-md">
					<span class="input-group-addon" id="sizing-addon1">
					<i class="glyphicon glyphicon-user" aria-hidden="true"></i></span>
					<input type="text" name="uname" id="uname" class="form-control" placeholder="用户名" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-md">
					<span class="input-group-addon" id="sizing-addon1">
					<i class="glyphicon glyphicon-lock"></i></span> 
					<input type="password" name="upass" id="upass" class="form-control" placeholder="密码" aria-describedby="sizing-addon1">
				</div>
				<br>
				<button type="submit" class="btn btn-success btn-block">登录</button>
			</form>
		</div>
		<div class="col-md-6">
			<h3>欢迎使用航班查询系统</h3>
			<ul>
				<li>普通用户登陆后即可查询航班信息</li>
				<li>管理员登录后可进行高级操作</li>
				<br><br>
				<li>还没账号？请点击<a href="register.html">此处</a>注册</li>
			</ul>
		</div>
	</div>
	


</div>
<!-- 	<div class="container">

      <form class="form-signin" action="Login" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input id="uname" name="uname" class="form-control" placeholder="uname" required autofocus>
        <input type="password" name="upass" id="upass" class="form-control" placeholder="Password" required>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
      </form>

    </div> /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>