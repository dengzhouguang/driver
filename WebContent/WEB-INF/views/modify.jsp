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
	 if($('#id').val()!="${requestScope.user.id }")
	 $.ajax({ 
		    type: "GET", 	
			url: "/driver/user?id="+$('#id').val(),
			dataType: "text",
			success: function(data) {
				if(data==1){
					$('#alertid').removeAttr('hidden');
					$('#signupBtn').attr('disabled',"disabled");
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
	
	 if($('#username').val()!="${requestScope.user.username }")
	$.ajax({ 
		    type: "GET", 	
			url: "/driver/user?username="+$('#username').val(),
			dataType: "text",
			success: function(data) {
					if(data==1){
					$('#alertusername').removeAttr('hidden');
					$('#signupBtn').attr('disabled',"disabled");
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
			<span>修改</span>
		</div>
		<div class="form-inner">
			<form class="form-float-label" id="new_user" action="checkmodify"
				accept-charset="UTF-8" method="post">
				<div class="alert alert-warning alert-dismissible devise-error-msg" role="alert">
                 <ul hidden="hidden" id="alertid"><li>准考证已经被注册！请修改。</li></ul>
                 <ul hidden="hidden" id="alertusername"><li>该用户名已经被注册!请修改。</li></ul>
                 </div>
				<div class="form-group">
					<input class="float_label" placeholder="账号" required="required"
						autofocus="autofocus" autocomplete="off" type="text" name="id"
						id="id" value="${requestScope.user.id }">
				</div>
				<div class="field form-group">
					<input class="float_label" placeholder="用户名" required="required"
						minlength="2" autocomplete="off" type="text" name="username"
						id="username" value="${requestScope.user.username }">
				</div>

				<div class="field form-group">
					<input class="float_label" placeholder="密码" required="required"
						minlength="6" autocomplete="off" type="password" name="password"
						id="password" value="${requestScope.user.password }">
				</div>

				<div class="field form-group form-group-sign-code">
					<input class="form-control" placeholder="请输入验证码" id="rucaptcha"
						name="rucaptcha" type="text" autocorrect="off" required="required"
						autocapitalize="off" pattern="[0-9a-zA-Z]*" minlength="4"
						autocomplete="off"> <img alt="Captcha"  
						id="rucaptcha_image" class="rucaptcha-image" src="/driver/Captcha">
				</div>
				<div class="form-group action">
					<button class="btn btn-block btn-primary" id="signupBtn">
						修改</button>
				</div>
			</form>
			<div class="help-section">
				<span class="btn-alternative"> <a href="/driver/exam/exam1/1">不修改了</a>
				</span>
			</div>
		</div>
	</div>
</body>
</html>
