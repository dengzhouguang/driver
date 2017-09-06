<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="org.apache.tomcat.util.http.Cookies"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
	errorPage="errorpage.jsp"%>
<html lang="zh">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>机动车驾驶在线考试系统</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no">
<link rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/resource/application.css"
	data-turbolinks-track="true">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
<style>
@font-face {
	font-family: uc-nexus-iconfont;
	format
	('woff'),
	url(chrome-extension
	:
	/
	/
	pogijhnlcfmcppgimcaccdkmbedjkmhi
	/
	res
	/
	font_9qmmi8b8jsxxbt9.ttf
	)
	format(
	'truetype'
	)
}
</style>
<%
  Cookie[] cookies=request.getCookies();
  for(Cookie cookie:cookies){
  if("username".equals(cookie.getName())&&cookie.getValue()!=null){
  response.sendRedirect("/driver/exam/exam1/1");
  }
  }
 %>
</head>
<div class="partials-brands">
	<p class="login-tips">机动车驾驶在线考试系统</p>
</div>
<body class="page-sessions-new">
	<div class="form-container">
		<div class="form-behavior divider">
			<span>登录</span>
		</div>

		<div class="form-inner">
			<form class="form-float-label" id="longin" action="signin"
				accept-charset="UTF-8" method="post">
				<input name="utf8" type="hidden" value="✓"> <input
					type="hidden" id="user" value="">
				<div class="form-group">
					<input class="form-control" autofocus placeholder="账号" type="text"
						name="id" id="id">
				</div>

				<div class="form-group">
					<input class="form-control" autocomplete="off" placeholder="密码"
						type="password" name="password" id="password">
				</div>

				<div class="checkbox-group">
					<input type="checkbox" value="1" checked="checked" name="remember"
						id="remember" value="checked"> <label for="remember">两周内免登录</label>
				</div>
				<div class="form-group action">
					<button class="btn btn-block btn-primary">登录</button>
				</div>
			</form>
			<div class="help-section">
				<span class="btn-alternative"> <a href="register">注册</a>
			</div>
		</div>
	</div>
</body>
</html>
