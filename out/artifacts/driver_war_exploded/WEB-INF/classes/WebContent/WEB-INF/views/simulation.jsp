<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <title>2017驾照考试</title>
  <meta name="keywords" content="驾照考试"/>
  <meta name="description" content="驾照网提供2017最新科目一考试题库，科目四考试题库"/>
  <link rel="stylesheet"  href="${pageContext.request.contextPath}/resource/style.css"/>
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
  <script charset="utf-8" src="${pageContext.request.contextPath}/resource/s.js"></script>
  <script src="${pageContext.request.contextPath}/resource/hm.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery-1.8.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery.cookie.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery.countdown.js"></script>
  <script src="${pageContext.request.contextPath}/resource/layer.js"></script>
   <script src="${pageContext.request.contextPath}/resource/layui.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layer.css" id="layui_layer_skinlayercss"/>
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layui.css" id="layui_layer_skinlayercss"/>
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
    <a  class="logo f-l">
      <img src="${pageContext.request.contextPath }/resource/logo.png"/>
    </a>
    <div class="ui-nav f-r">
      <ul>
        <li><a href="/driver/simulation" class="current" target="_blank">模拟考试</a></li>
        <li><a href="/driver/exam/exam1/1" target="_blank">驾考题库</a></li>
 	    <li><a href="javascript:void(0);" target="_blank"  id="exam">正式考试</a></li>
      </li></ul>
    </div>
  </div>
</div>
<div style="clear:both"></div>
<div style="clear:both"></div>
<div class="ui-content">
  <div class="wrap clearfix">
    <div class="ui-exam">
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">驾校模拟考试</a></div>
        <ul>
          <c:forEach var="p" begin="0" end="5" items="${requestScope.jx }">
            <li><a href="test?name=${p.name }" target="_blank">"${p.name }"</a></li>
          </c:forEach>
        </ul>
      </div>
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">2017交规理论考试</a></div>
        <ul>题目最新版</a></li>
           <c:forEach var="p" begin="0" end="5" items="${requestScope.jg }">
            <li><a href="test?name=${p.name }" target="_blank">"${p.name }"</a></li>
          </c:forEach>
        </ul>
      </div>
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">驾照模拟考试</a></div>
        <ul>
          
           <c:forEach var="p" begin="0" end="5" items="${requestScope.jz }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
          
        </ul>
      </div>
    </div>
    <div class="ui-exam">
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a target="_blank">驾驶证考试</a></div>
        <ul>
          
          <c:forEach var="p" begin="0" end="5" items="${requestScope.jsz }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
          
        </ul>
      </div>
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">机动车驾驶人考试题库</a></div>
        <ul>
          
            <c:forEach var="p" begin="0" end="5" items="${requestScope.jdc }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
          
        </ul>
      </div>
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">驾校一点通2017</a></div>
        <ul>
          
           <c:forEach var="p" begin="0" end="5" items="${requestScope.jxydt }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
          
        </ul>
      </div>
    </div>
    <div class="ui-exam">
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">驾考宝典</a></div>
        <ul>
            <c:forEach var="p" begin="0" end="5" items="${requestScope.jkbd }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
        </ul>
      </div>
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">元贝驾考</a></div>
        <ul>
            <c:forEach var="p" begin="0" end="5" items="${requestScope.yb }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
        </ul>
      </div>
      <div class="ui-news-list">
        <div class="ui-news-list-title"><a  target="_blank">驾驶员考试</a></div>
        <ul>
          
           <c:forEach var="p" begin="0" end="5" items="${requestScope.jsy }">
            <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
          </c:forEach>
        </ul>
      </div>
    </div>
    <div class="ui-newlist mt-30">
                <div class="newtop">
                    <div class="newlist-hd"><h3>2017最新模拟试题汇总</h3><a href="/driver/simulationlist" class="f-r more" target="_blank">更多+</a></div>
                    <div class="newt-cn clearfix">
                        <ul>
                        <c:forEach var="p"  begin="0" end="6" items="${requestScope.list }">
                         <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
                        </c:forEach> 
                        </ul>
                        <ul>
                         <c:forEach var="p" begin="7" end="13" items="${requestScope.list }">
                        <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
                        </c:forEach>      
                        </ul>
                        <ul>
                       <c:forEach var="p" begin="14" end="20" items="${requestScope.list }">
                       <li><a href="test?name=${p.name }" target="_blank">${p.name }</a></li>
                       </c:forEach>             
                        </ul>
                    </div>
                </div>
    </div>
</div>
</div>
<div id="hm_t_undefined" class="hm-t-container"><div class="hm-t-go-top" style="display: block;"></div></div>
<script src="${pageContext.request.contextPath}/resource/alert.js"></script>
</body></html>