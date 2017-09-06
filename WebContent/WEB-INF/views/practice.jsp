<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html >
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>驾照网</title>
	<meta name="keywords" content="科目一考试题库,驾照考试科目">
		<meta name="description"
			content="驾照网提供的2017年最新科目一考试题库试题分析">
			<link rel="stylesheet" type="text/css"
				href="${pageContext.request.contextPath}/resource/style.css">
					<script charset="utf-8"
						src="${pageContext.request.contextPath}/resource/s.js"></script>
					<script src="${pageContext.request.contextPath}/resource/hm.js"></script>
					<script
						src="${pageContext.request.contextPath}/resource/jquery-1.8.3.min.js"></script>
					
						<script
							src="${pageContext.request.contextPath}/resource/jquery.cookie.js"></script>
						<script
							src="${pageContext.request.contextPath}/resource/jquery.countdown.js"></script>
					<script src="${pageContext.request.contextPath}/resource/layer.js"></script>
					<script src="${pageContext.request.contextPath}/resource/layui.js"></script>
					<link rel="stylesheet"
						href="${pageContext.request.contextPath}/resource/layer.css">
					<link rel="stylesheet"
						href="${pageContext.request.contextPath}/resource/layui.css">
					
						<style>
</style>
<style>
html  .hm-t-go-top {
	position: fixed;
	right: 2px;
	bottom: 2px;
	z-index: 99998;
	cursor: pointer;
	width: 40px;
	height: 37px !important;
	text-align: center;
	white-space: normal;
	font-size: 14px;
	line-height: 17px;
	padding-top: 3px;
	color: #fff;
	background: #404040;
	background:
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEkAAAAXCAYAAABH92JbAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowMjgwMTE3NDA3MjA2ODExODA4M0UyNDA4ODdDRTZBQiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpBQjc5RkRFNkI5ODMxMUUzQkZGNDhENEJFQjM2OTcyRiIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpBQjc5RkRFNUI5ODMxMUUzQkZGNDhENEJFQjM2OTcyRiIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MDI4MDExNzQwNzIwNjgxMTgwODNFMjQwODg3Q0U2QUIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDI4MDExNzQwNzIwNjgxMTgwODNFMjQwODg3Q0U2QUIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5HPYM5AAACC0lEQVR42uyZTSgEYRjH90NoqaVcpDblvKW2XOSkNh8H5Yac9sBBDqQokiJKSMpNTi5OPo6Ktsgu67JcUHIXWfK1u3b8Xx6Zxuzu+64dM83uv34zNfu8b8/8Z+d5P8YqSZLFJNLsRmyWvIRMKgVD4AhEwA3YAV0pzGwEqyAEwmAddIICHe7FqhnsdQM14FxKLj+ooFiGE2ykiD8GVbJ4I1ELAnTmasMODnAhpVcIFIMicMgRH6Z4IxnUAh4pP3Zu5TVpUOLXDJgWiB8wkEF9IK7IL07X05oUFLjpZ4JXQQOYYwfzafJcoDjVPqw43KE4lWtUTF+AQ8eBqQSsgTaO2E0apJ7URrdCDZOM62hQJfBzGmShOD+1+2XSiYaJ7utkkBsEgEewnYfauZUmzWmU6DuY0sEgLzgArgzbu6i992cu/1WclqXsa1iHIt0DYlnKP0b9fRZu5pWdZs7dWXqa7B80+s//oF5aMSjflGqBPq5BQnFtVv4UmGHjIPEH96PAZ6C5kVMwf6daPzbFKnqCqvx9Bk/yFjSBFTMvcL+1DerAmUA/p9Rm1+y7AHJdgnqwx9EHm1s0gKtc2CpR6gE00/ZHMm3RKxbJlf0kNb2BDrCk8hsbDdvBay5tuiUTGxL7waTs2iLw0YTR9BLZQRwDUVqwjuTS9q3VRB8C1OQUnM6UqdXX/IcADn0IMADs2AqDOPSutQAAAABJRU5ErkJggg==)
		no-repeat -42px center #666;
	*background-image:
		url(http://ecma.bdimg.com/holmes/t-popup-icons-png8.png);
	_position: absolute;
}
</style>
</head>
<body>
	<div class="ui-top">
		<div class="wrap clearfix">
			<div class="f-l">
				<div class="car-tp">
				</div>
			</div>
			<div class="f-r">
			<%
		      Cookie[]cookies=request.getCookies();
		      boolean found=false;
              if (cookies!=null){
		      for(int i=0;i<request.getCookies().length;i++){
		      if("username".equals(cookies[i].getName())) {
		      found=true;
		      %>
		                  你好  <span class="username"><a href="/driver/modify"><%=cookies[i].getValue() %></a></span>
		      <a href="/driver/exit" rel="nofollow">退出</a>
		      <%}else if("power".equals(cookies[i].getName())){
		      Integer power=Integer.valueOf(cookies[i].getValue());
		      if(power==1){
		      found=true;%>
		      <span ><a href="/driver/list">成绩列表</a></span>
		      <span ><a href="/driver/count">成绩统计</a></span>
		      <% }}}} 
		      if(!found){ %>
			  <script src="${pageContext.request.contextPath}/resource/index.js"></script>
			  <%} %>
			</div>
		</div>
	</div>
	<div class="ui-head">
		<div class="wrap clearfix">
			<div class="ui-nav f-r">
				<ul>
					<li><a href="/driver/simulation" target="_blank">模拟考试</a></li>
					<li><a href="/driver/exam/exam1/1" class="current" target="_blank">驾考题库</a></li>
					<li><a href="javascript:void(0);" target="_blank"  id="exam">正式考试</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div style="clear:both"></div>
	<style type="text/css">
.mbx a {
	color: #717171;
}

.mbx a:hover {
	text-decoration: underline;
}

.mbx span {
	color: #717171;
}
</style>
	<div class="mbx" style="width:1200px;margin:0 auto;line-height:30px;">
		<a href="/driver/exam/exam1/1" target="_blank">驾考题库</a> &gt;<a href="/driver/exam/exam1/1" target="_blank">科目一考试题库</a>
	</div>
	<div style="clear:both"></div>
	<style type="text/css">
.Content a:hover {
	color: #333;
}

.ui-test .test-bd ul li {
	padding: 13px 0 13px 0px;
	margin-left: 0px;
	background: none;
	font-size: 16px;
}

.ui-test .test-bd ul li strong {
	font-size: 16px;
}

.ui-test .test-bd ul li.answer span {
	color: #526ED2;
}

.ui-test .test-bd ul li.answer span:hover {
	text-decoration: underline;
	color: #f3583c;
}
</style>
	<div class="ui-content kaolist">
		<div class="wrap clearfix">
			<div class="ui-topic f-l">
				<div class="test-bg Content mt-30">
					<c:forEach var="p" items="${requestScope.list }">
						<div href="#" target="_blank">
							<div class="ui-test clearfix titem">
								<p class="title">${p.question }</p>
								<!--单选-->
								<div class="test-bd f-l">
									<ul>
										<li>${p.option1 }</li>
										<li>${p.option2 }</li>
										<c:if test="${not empty p.option3}">
											<li>${p.option3 }</li>
											<li>${p.option4 }</li>
										</c:if>

										<li class="answer"><strong class="right"></strong> <strong>${p.answer }</strong>
									</ul>
								</div>
								<div class="test-r f-r">
									<img src="${p.imgurl }">
								</div>
							</div>
						</div>
					</c:forEach>

					<style>
.pages {
	text-align: center;
	padding: 30px 0 0px;
	background-color: #F9F9F9;
}

.pages a {
	display: inline-block;
	margin: 0 2px;
	border: 1px solid #dcdcdc;
	padding: 0 10px;
	background: #f6f6f6;
	line-height: 26px;
}

.pages a:hover, .pages a.act {
	background: #2285bd;
	color: #fff;
}
</style>
					<div class="pages">
						<%
							String examIndex = (String) request.getAttribute("exam");
							int pageIndex = ((Integer) request.getAttribute("page")).intValue();
							int maxIndex = ((Integer) request.getAttribute("maxIndex")).intValue();
							if (pageIndex > 3 && (pageIndex < maxIndex - 3)) {
								int pageIndex_1 = pageIndex - 1;
								int pageIndex_2 = pageIndex - 2;
								int pageIndex_3 = pageIndex - 3;
								int pageIndex1 = pageIndex + 1;
								int pageIndex2 = pageIndex + 2;
								int pageIndex3 = pageIndex + 3;
						%>
						<a href="<%="1"%>" rel="nofollow">首页</a> <a
							href="<%=pageIndex_1%>" rel="nofollow">上一页</a>
						<a href="<%=pageIndex_3%>"
							rel="nofollow"><%=pageIndex - 3%></a> <a
							href="<%=pageIndex_2%>" rel="nofollow"><%=pageIndex - 2%></a>

						<a href="<%=pageIndex_1%>"
							rel="nofollow"><%=pageIndex - 1%></a> <a
							style="background-color:#2285bd;color:#fff" rel="nofollow"><%=pageIndex%></a>

						<a href="<%=pageIndex1%>"
							rel="nofollow"><%=pageIndex + 1%></a> <a
							href="<%=pageIndex2%>" rel="nofollow"><%=pageIndex + 2%></a>

						<a href="<%=pageIndex3%>"
							rel="nofollow"><%=pageIndex + 3%></a> <a
							href="<%=pageIndex1%>" rel="nofollow">下一页</a>
						<a href="<%=maxIndex%>" rel="nofollow">尾页</a>

						<%
							} else if (pageIndex < 4 && pageIndex > 1) {
								int pageIndex_1 = pageIndex - 1;
								int pageIndex1 = pageIndex + 1;
						%>

						<a href="<%="1"%>" rel="nofollow">首页</a> <a
							href="<%=pageIndex_1%>" rel="nofollow">上一页</a>
						<%
							for (int i = 1; i < pageIndex; i++) {
						%>
						<a href="<%=i%>" rel="nofollow"><%=i%></a>
						<%
							}
						%>
						<a style="background-color:#2285bd;color:#fff" rel="nofollow"><%=pageIndex%></a>
						<%
							for (int j = pageIndex + 1; j < 8; j++) {
						%>
						<a href="<%=j%>" rel="nofollow"><%=j%></a>
						<%
							}
						%>
						<a href="<%=pageIndex1%>"
							rel="nofollow">下一页</a> <a
							href="<%=maxIndex%>" rel="nofollow">尾页</a>
						<%
							} else if (pageIndex == 1) {
						%>
						<a style="background-color:#2285bd;color:#fff" rel="nofollow">1</a>

						<a href="<%=2%>" rel="nofollow">2</a> <a
							href="<%=3%>" rel="nofollow">3</a> <a
							href="<%=4%>" rel="nofollow">4</a> <a
							href="<%=5%>" rel="nofollow">5</a> <a
							href="<%=6%>" rel="nofollow">6</a> <a
							href="<%=7%>" rel="nofollow">7</a> <a
							href="<%=2%>" rel="nofollow">下一页</a> <a
							href="<%=maxIndex%>" rel="nofollow">尾页</a>
						<%
							} else if (pageIndex + 3 > maxIndex && pageIndex != maxIndex) {
								int pageIndex_1 = pageIndex - 1;
								int pageIndex1 = pageIndex + 1;
								int start = maxIndex - 6;
						%>
						<a href="<%= "1"%>" rel="nofollow">首页</a> <a
							href="<%=pageIndex_1%>" rel="nofollow">上一页</a>
						<%
							for (int i = start; i < pageIndex; i++) {
						%>
						<a href="<%=i%>" rel="nofollow"><%=i%></a>
						<%
							}
						%>
						<a style="background-color:#2285bd;color:#fff" rel="nofollow"><%=pageIndex%></a>
						<%
							for (int j = pageIndex + 1; +j <= maxIndex; j++) {
						%>
						<a href="<%=j%>" rel="nofollow"><%=j%></a>
						<%
							}
						%>
						<a href="<%=pageIndex1%>"
							rel="nofollow">下一页</a> <a
							href="<%=maxIndex%>" rel="nofollow">尾页</a>
						<%
							} else if (pageIndex == maxIndex) {
								int maxIndex_1 = maxIndex - 1;
								int maxIndex_2 = maxIndex - 2;
								int maxIndex_3 = maxIndex - 3;
								int maxIndex_4 = maxIndex - 4;
								int maxIndex_5 = maxIndex - 5;
								int maxIndex_6 = maxIndex - 6;
						%>
						<a href="<%="1"%>" rel="nofollow">首页</a> <a
							href="<%=maxIndex_1%>" rel="nofollow">上一页</a>
						<a href="<%=maxIndex_6%>"
							rel="nofollow"><%=maxIndex_6%></a> <a
							href="<%=maxIndex_5%>" rel="nofollow"><%=maxIndex_5%></a>

						<a href="<%=maxIndex_4%>"
							rel="nofollow"><%=maxIndex_4%></a> <a
							href="<%=maxIndex_3%>" rel="nofollow"><%=maxIndex_3%></a>

						<a href="<%=maxIndex_2%>"
							rel="nofollow"><%=maxIndex_2%></a> <a
							href="<%=maxIndex_1%>" rel="nofollow"><%=maxIndex_1%></a>
						<a style="background-color:#2285bd;color:#fff" rel="nofollow"><%=pageIndex%></a>
						<%
							}
						%>
					</div>
				</div>
				·
			</div>
			<div class="f-r">
				<div class="f-r ui-imitate ">
					<div class="topic-b">
						<span class="imitate">2017最新题库</span>
						<div class="imitate-car">
							<ul>
								<li>
								<li><a href="/driver/exam/exam1/1" target="_blank" class="">第1章：道路交通安全法律、法规和规章</a></li>
						<li><a href="/driver/exam/exam2/1" target="_blank" class="">第2章：交通信号</a></li>
						<li><a href="/driver/exam/exam3/1" target="_blank" class="">第3章：安全行车、文明驾驶基础知识</a></li>
						<li><a href="/driver/exam/exam4/1" target="_blank" class="">第4章：机动车驾驶操作相关基础知识</a></li>
						<li><a href="/driver/exam/exam5/1" target="_blank" class="">第5章：货车专用试题 </a></li>
						<li><a href="/driver/exam/exam6/1" target="_blank" class="">第6章：客车专用试题 </a></li>
						<li><a href="/driver/exam/exam7/1" target="_blank" class="">第7章：摩托车专用试题 </a></li>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="hm_t_undefined" class="hm-t-container">
		<div class="hm-t-go-top" style="display: none;"></div>
	</div>
	<script src="${pageContext.request.contextPath}/resource/alert.js"></script>
</body>
</html>
