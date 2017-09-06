<%@ page language="java" import="java.util.*,java.text.DecimalFormat" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%String path=request.getContextPath(); %>
    <meta charset="UTF-8">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
    <script src="https://img.hcharts.cn/jquery/jquery-1.8.3.min.js"></script>
    <script src="https://img.hcharts.cn/highcharts/highcharts.js"></script>
    <script src="https://img.hcharts.cn/highcharts/modules/exporting.js"></script>
    <script src="https://img.hcharts.cn/highcharts-plugins/highcharts-zh_CN.js"></script>
    <title>统计</title>
</head>
<body>
<div style="margin-top:5px;margin-left:250px;margin-right: 250px">
    <table class="tableResult" qi="20000" cellspacing="0" cellpadding="3" border="0" style="background-color:#e0e0e0;width:100%;border-collapse:collapse;">
        <tbody>
        <tr class="text2" align="center" style="font-weight:bold;">
            <td  style="cursor: pointer;">分数段</td>
            <td  align="center" style="width:200px;cursor: pointer;white-space:nowrap;">小计</td>
            <td align="left" style="width:360px;">比例</td>
        </tr>
        <%int index=0; 
        DecimalFormat df= new DecimalFormat("######0.00"); 
        List<Double> list=(List<Double>)request.getAttribute("list");
        Integer size=(Integer)request.getAttribute("size");
        Double undo=(Double)request.getAttribute("num0");
        for(int j=0;j<10;j++){
        %>
        <tr style="background:white;">
            <td val="<%=j+1 %>" align="center"><%=index%>-<%=index+10 %></td>
            <td align="center"><%=list.get(j).intValue() %></td>
            <td percent="<%=list.get(j) %>%">
                <div class="bar">
                    <div style="width:<%=list.get(j) %>%; display: block;" class="precent">
                        <img height="13" width="<%=list.get(j)*1.49 %>" alt="" src="${pageContext.request.contextPath}/resource/vote_cl_v2.png">
                    </div>
                </div>
                <div style="margin-top:3px;float:left;"><%=df.format(list.get(j)/size*100) %>%</div>
                <div style="clear:both;"></div>
            </td>
        </tr>
        <%index+=10; }%>
        <tr style="background:#f9f9f9;">
            <td val="11" align="center">尚未考试人数</td>
            <td align="center">${requestScope.num0.intValue() }</td>
            <td percent="${requestScope.num0  }%">
                <div class="bar">
                    <div style="width: ${requestScope.num0  }%; display: block;" class="precent">
                        <img height="13" width="${requestScope.num0 *1.49 }" alt="" src="${pageContext.request.contextPath}/resource/vote_cl_v2.png">
                    </div>
                </div>
                <div style="margin-top:3px;float:left;"><%=df.format(undo/size*100) %>%</div>
                <div style="clear:both;"></div>
            </td>
        </tr>
        </tbody>
    </table>
</div>
<div id="container" style="margin-left: 250px;margin-right: 250px;min-width:400px;height:400px"></div>
<script>
    $(function () {
                $('#container').highcharts({
                    chart: {
                        type: 'column'
                    },
                    title: {
                        text: '分数统计表'
                    },
                    subtitle: {
                        text: '数据来源:自定义随机写入'
                    },
            xAxis: {
                categories: [
                    '0-10',
                    '10-20',
                    '20-30',
                    '30-40',
                    '40-50',
                    '50-60',
                    '60-70',
                    '70-80',
                    '80-90',
                    '90-100',
                    '未考'
                ],
                crosshair: true
            },
            yAxis: {
                min: 0,
                title: {
                    text: '人数'
                }
            },
            tooltip: {
                headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
                pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
                '<td style="padding:0"><b>{point.y:1f} 人</b></td></tr>',
                footerFormat: '</table>',
                shared: true,
                useHTML: true
            },
            plotOptions: {
                column: {
                    pointPadding: 0.2,
                    borderWidth: 0
                }
            },
            series: [{
                name: '分数',
                data: [<%=list.get(0).intValue()%> , <%=list.get(1).intValue()%>, <%=list.get(2).intValue()%>,<%=list.get(3).intValue()%>, <%=list.get(4).intValue()%>,<%=list.get(5).intValue()%>, <%=list.get(6).intValue()%>,<%=list.get(7).intValue()%>,<%=list.get(8).intValue()%>,<%=list.get(9).intValue()%>,<%=undo.intValue()%>]
            }]
        });
    });
</script>
</body>
</html>