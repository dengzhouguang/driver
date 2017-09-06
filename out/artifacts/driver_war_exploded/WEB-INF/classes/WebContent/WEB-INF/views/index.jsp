<%@page import="com.dzg.driver.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
<meta  http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" media="all"
	href="${pageContext.request.contextPath}/css/main.css"
	data-turbolinks-track="true">
</head>
<body>

	<div class="header">
		<span style="float: right; font-size: 16pt;">
		<%
		Cookie[]cookies=request.getCookies();
		for(int i=0;i<request.getCookies().length;i++){
		if("username".equals(cookies[i].getName())) {%>
		你好<%=cookies[i].getValue() %></span>
		<%}} %>
	</div>
	<hr>
	<div class="background">
		<div class="main">
			<div class="navigator-bar">
				<a href="#" target="_blank">驾校考题</a> > <a href="#" target="_blank">题库</a>
			</div>
			<div class="left-content ">
				<div class="newlist-hd">
					<h3>
						<a href="#" target="_blank"
							class="current">2017年科目一基础理论知识考试题库</a>
					</h3>
				</div>
				<div class="newt-cn clearfix">
					<ul>
						<li><a href="exam/exam1/1" target="_blank" class="">第1章：道路交通安全法律、法规和规章</a></li>
						<li><a href="exam/exam2/1" target="_blank" class="">第2章：交通信号</a></li>
						<li><a href="exam/exam3/1" target="_blank" class="">第3章：安全行车、文明驾驶基础知识</a></li>
						<li><a href="exam/exam4/1" target="_blank" class="">第4章：机动车驾驶操作相关基础知识</a></li>
						<li><a href="exam/exam5/1" target="_blank" class="">第5章：货车专用试题 </a></li>
						<li><a href="exam/exam6/1" target="_blank" class="">第6章：客车专用试题 </a></li>
						<li><a href="exam/exam7/1" target="_blank" class="">第7章：摩托车专用试题 </a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="right-content">
			<div class="am-u-sm-12 am-u-md-4">
				<div class="am-panel am-panel-primary">
					<header class="am-panel-hd">
					<h3 class="am-panel-title">
						<span>模拟考试</span>
					</h3>
					</header>
					<div class="am-panel-bd" id="an_content">
						<a id="1" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（一）</a>
						<hr />
						<a id="2" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（二）</a>
						<hr />
						<a id="3" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（三）</a>
						<hr />
						<a id="4" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（四）</a>
						<hr />
						<a id="5" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（五）</a>
						<hr />
						<a id="6" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（六）</a>
						<hr />
						<a id="7" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（七）</a>
						<hr />
						<a id="8" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（八）</a>
						<hr />
						<a id="9" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（九）</a>
						<hr />
						<a id="10" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（十）</a>
						<hr />
						<a id="11" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（十一）</a>
						<hr />
						<a id="12" target="_blank" href="#" class="shijuan">机动车模拟考试试卷（十二）</a>
						<hr />
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>