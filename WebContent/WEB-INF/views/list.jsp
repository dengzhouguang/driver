<%@page import="com.dzg.driver.entity.User"%>
<%@ page language="java" import="java.util.*,java.text.DecimalFormat" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
    <title>统计</title>
</head>
<body>
<div style="margin-top:5px;margin-left:250px;margin-right: 250px">
    <div style="float:right"><a href="/driver/excel">下载到本地</a></div>
    <table class="tableResult"  cellspacing="0" cellpadding="3" border="3" style="background-color:#e0e0e0;width:100%;border-collapse:collapse;">
        <tbody>
        <tr class="text2" align="center" style="font-weight:bold;">
            <td  align="center" style="width:360px;cursor: pointer;">准考证</td>
            <td  align="center" style="width:360px;cursor: pointer;">用户名</td>
            <td align="center" style="width:360px;cursor: pointer;">分数</td>
        </tr>
        <%
        List<User>list=(List<User>)request.getAttribute("list");
        for(int i=0;i<list.size();i++){
         %>
        <tr style="background:white;">
            <td align="center" style="width:360px;cursor: pointer;"><%=list.get(i).getId() %></td>
            <td align="center" style="width:360px;cursor: pointer;"><%=list.get(i).getUsername()%></td>
            <td align="center" style="width:360px;cursor: pointer;"><%=list.get(i).getScore()>=0?list.get(i).getScore():"未考试"%></td>
        </tr>
        <%} %>
        </tbody>
    </table>
</div>
</body>
</html>