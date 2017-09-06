<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	errorPage="errorpage.jsp"%>s
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>机动车驾驶在线考试系统</title>
<link rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/resource/application.css"
	data-turbolinks-track="true">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
<script src="${pageContext.request.contextPath}/resource/jquery-1.8.3.min.js"></script>
	<script>
	$(function(){
	$('#id').on('input',function(e){
	 $('#alertid').attr('hidden','hidden');
	 $.ajax({ 
		    type: "GET", 	
			url: "/driver/user?id="+$('#id').val(),
			dataType: "text",
			success: function(data) {
				if(data==1){
					$('#alertid').removeAttr('hidden');
					$('#signupBtn').attr('disabled','disabled');
				}else{
				    if($('#alertusername').attr('hidden')=='hidden')
	                $('#signupBtn').removeAttr('disabled');
				}
	                
			},
			error: function(jqXHR){     
			   alert("发生错误：" + jqXHR.status);  
			},     
		});
	});
	$('#username').on('input',function(e){
	$('#alertusername').attr('hidden','hidden');
	$.ajax({ 
		    type: "GET", 	
			url: "/driver/user?username="+$('#username').val(),
			dataType: "text",
			success: function(data) {
					if(data==1){
					$('#alertusername').removeAttr('hidden');
					$('#signupBtn').attr('disabled','disabled');
					}else{
					if($('#alertid').attr('hidden')=='hidden')
					$('#signupBtn').removeAttr('disabled');
					}
			},
			error: function(jqXHR){     
			   alert("发生错误：" + jqXHR.status);  
			},     
		});
	});
	});
	</script>
	</head>
<body class="page-registrations-new">
	<div class="partials-brands">
		<p class="login-tips">机动车驾驶在线考试系统</p>
	</div>

	<div class="form-container">
		<div class="form-behavior divider">
			<span>注册</span>
		</div>
		<div class="form-inner">
			<form class="form-float-label" id="new_user" action="checkregister"
				accept-charset="UTF-8" method="post">
				<input name="utf8" type="hidden" value="✓">
				 <div class="alert alert-warning alert-dismissible devise-error-msg" role="alert">
                 <ul hidden="hidden" id="alertid"><li>准考证已经被注册!</li></ul>
                 <ul hidden="hidden" id="alertusername"><li>该用户名已经被注册!</li></ul>
                 </div>
				<div class="form-group">
					<input class="float_label" placeholder="准考证" required="required"
						autofocus="autofocus" autocomplete="off" type="text" name="id"
						id="id" value="">
				</div>
				<div class="field form-group">
					<input class="float_label" placeholder="用户名" required="required"
						minlength="6" autocomplete="off" type="text" name="username"
						id="username" value="">
				</div>
				<div class="field form-group">
					<input class="float_label" placeholder="密码" required="required"
						minlength="6" autocomplete="off" type="password" name="password"
						id="password">
				</div>

				<div class="field form-group form-group-sign-code">
					<input class="form-control" placeholder="请输入验证码" id="rucaptcha"
						name="rucaptcha" type="text" autocorrect="off"
						autocapitalize="off" pattern="[0-9a-zA-Z]*" 
						autocomplete="off"  required="required" minlength="4"> <img alt="Captcha"
						id="rucaptcha_image" class="rucaptcha-image" src="/driver/Captcha">
				</div>
				<div class="form-group action">
					<button class="btn btn-block btn-primary" id="signupBtn">
						注册</button>
				</div>
			</form>
			<div class="help-section">
				<span class="btn-alternative"> <a href="/driver">我是老用户，要登录</a>
				</span>
			</div>
		</div>
	</div>
</body>
</html>
