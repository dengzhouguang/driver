<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>最新资讯_模拟试题精选 - 驾照网</title>
  <meta name="keywords" content="驾校学车，考驾照，科目一模拟考试，科目四模拟考试"/>
  <meta name="description" content="驾照网最新资讯栏目汇集前瞻的一手学车资讯"/>
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/style.css"/>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
  <script charset="utf-8" src="${pageContext.request.contextPath}/resource/s.js">
  </script><script src="${pageContext.request.contextPath}/resource/hm.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery-1.8.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery.cookie.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery.countdown.js"></script>
  <script src="${pageContext.request.contextPath}/resource/layer.js"></script>
  <script src="${pageContext.request.contextPath}/resource/layui.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layer.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layui.css" />
<body>
<div class="ui-top">
  <div class="wrap clearfix">
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
        <li><a href="/driver/exam/exam1/1" target="_blank">驾考题库</a></li>
		<li><a href="javascript:void(0);" target="_blank"  id="exam">正式考试</a></li>
      </ul>
    </div>
  </div>
</div>
<div style="clear:both"></div>
<div style="clear:both"></div>
     <div class="ui-content kaolist">
        <div class="wrap clearfix">
            <div class="ui-topic f-l">
                            <div class="ui-newlist">
                <div class="newtop">

                </div>
              </div>
                                          <div class="ui-newlist">
                <div class="newtop">
                    <div class="newlist-hd"><h3>最新试题</h3></div>
                    <div class="newt-cn clearfix">
                        <ul>
                        <c:forEach var="p" begin="0" end="24" items="${requestScope.list }">
                        <li><a href="test?name=${p.name }" target="_blank">"${p.name }"</a></li>
                        </c:forEach>                         
                        </ul>
                        <ul>
                         <c:forEach var="p" begin="25" end="49" items="${requestScope.list }">
                        <li><a href="test?name=${p.name }" target="_blank">"${p.name }"</a></li>
                        </c:forEach>                               
                        </ul>
                    </div>
                </div>
              </div>
                        <div class="pages">
                        <%
                        Integer pageIndex= (Integer) request.getAttribute("page");
                        Integer maxPage=(Integer) request.getAttribute("max");
                        int index=pageIndex.intValue();
                        int max=maxPage.intValue();
                        int preIndex=index-1;
                        int nextIndex=index+1;
                        if (index!=1){ %>
                        <a href="simulationlist?page=1"><em>首页</em></a>
                        <a href="simulationlist?page=<%=index-1 %>" class="updown">上一页</a>
                         <% }
                         for(int i=index-3;i<index;i++){
                         if(i<1)
                         continue;
                         %>
                         <a href="simulationlist?page=<%=i%>"><%=i%></a>
                         <%}%>
                         <a style="background-color:#2285bd;color:#fff" rel="nofollow"><%=index %></a>
                        <% 
                        int end;
                        if(index<4)
                        end=7-index;
                        else
                        end=index+3;
                        for(int i=index+1;i<end;i++){
                        if(i>max)
                        continue;
                        %>
                        <a href="simulationlist?page=<%=i%>"><%=i%></a>
                        <%} %>
                        <%
                        if(index!=max){
                         %>
                        <a href="simulationlist?page=<%=index+1 %>" class="updown">下一页</a>
                        <a href="simulationlist?page=<%=max%>">尾页</a>
                        <%} %>
                        <div class="clear"></div>
                        </div>
                                                  </div>
            <div class="f-r">
             <div class="f-r ui-imitate">
                <div class="topic-b">
                       <span class="imitate">2017最新题库</span>
						<div class="imitate-car">
							<ul>
						<li><a href="/driver/exam/exam1/1" target="_blank" class="">第1章：道路交通安全法律、法规和规章</a></li>
						<li><a href="/driver/exam/exam2/1" target="_blank" class="">第2章：交通信号</a></li>
						<li><a href="/driver/exam/exam3/1" target="_blank" class="">第3章：安全行车、文明驾驶基础知识</a></li>
						<li><a href="/driver/exam/exam4/1" target="_blank" class="">第4章：机动车驾驶操作相关基础知识</a></li>
						<li><a href="/driver/exam/exam5/1" target="_blank" class="">第5章：货车专用试题 </a></li>
						<li><a href="/driver/exam/exam6/1" target="_blank" class="">第6章：客车专用试题 </a></li>
						<li><a href="/driver/exam/exam7/1" target="_blank" class="">第7章：摩托车专用试题 </a></li>
							</ul>
						</div>
            </div>
            </div>

        </div>
     </div>
</div>
<script src="${pageContext.request.contextPath}/resource/alert.js"></script>
</body></html>