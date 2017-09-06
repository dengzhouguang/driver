<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <title class="idtitle">${requestScope.name }</title>
  <meta name="keywords" content="${requestScope.name }">
  <meta name="description" content="驾校模拟考试2017科目四考试">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/style.css">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/font_1468169579_2859218.css">
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/favicon.png"/>
  <script charset="utf-8" src="${pageContext.request.contextPath}/resource/s.js"></script>
  <script src="${pageContext.request.contextPath}/resource/hm.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery-1.8.3.min.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery.cookie.js"></script>
  <script src="${pageContext.request.contextPath}/resource/jquery.countdown.js"></script>
  <script src="${pageContext.request.contextPath}/resource/layer.js"></script>
  <script src="${pageContext.request.contextPath}/resource/layui.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layer.css" id="layui_layer_skinlayercss">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/layui.css" id="layui_layer_skinlayercss">
<style>@font-face{font-family:uc-nexus-iconfont;src:url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.woff) format('woff'),url(chrome-extension://pogijhnlcfmcppgimcaccdkmbedjkmhi/res/font_9qmmi8b8jsxxbt9.ttf) format('truetype')}</style><style>html #hm_t_undefined .hm-t-go-top {position:fixed;right:2px;bottom:2px;z-index:99998;cursor:pointer;width:40px;height:37px!important;text-align:center;white-space:normal;font-size:14px;line-height:17px;padding-top:3px;color:#fff;background:#404040;background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEkAAAAXCAYAAABH92JbAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowMjgwMTE3NDA3MjA2ODExODA4M0UyNDA4ODdDRTZBQiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDpBQjc5RkRFNkI5ODMxMUUzQkZGNDhENEJFQjM2OTcyRiIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDpBQjc5RkRFNUI5ODMxMUUzQkZGNDhENEJFQjM2OTcyRiIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MDI4MDExNzQwNzIwNjgxMTgwODNFMjQwODg3Q0U2QUIiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6MDI4MDExNzQwNzIwNjgxMTgwODNFMjQwODg3Q0U2QUIiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz5HPYM5AAACC0lEQVR42uyZTSgEYRjH90NoqaVcpDblvKW2XOSkNh8H5Yac9sBBDqQokiJKSMpNTi5OPo6Ktsgu67JcUHIXWfK1u3b8Xx6Zxuzu+64dM83uv34zNfu8b8/8Z+d5P8YqSZLFJNLsRmyWvIRMKgVD4AhEwA3YAV0pzGwEqyAEwmAddIICHe7FqhnsdQM14FxKLj+ooFiGE2ykiD8GVbJ4I1ELAnTmasMODnAhpVcIFIMicMgRH6Z4IxnUAh4pP3Zu5TVpUOLXDJgWiB8wkEF9IK7IL07X05oUFLjpZ4JXQQOYYwfzafJcoDjVPqw43KE4lWtUTF+AQ8eBqQSsgTaO2E0apJ7URrdCDZOM62hQJfBzGmShOD+1+2XSiYaJ7utkkBsEgEewnYfauZUmzWmU6DuY0sEgLzgArgzbu6i992cu/1WclqXsa1iHIt0DYlnKP0b9fRZu5pWdZs7dWXqa7B80+s//oF5aMSjflGqBPq5BQnFtVv4UmGHjIPEH96PAZ6C5kVMwf6daPzbFKnqCqvx9Bk/yFjSBFTMvcL+1DerAmUA/p9Rm1+y7AHJdgnqwx9EHm1s0gKtc2CpR6gE00/ZHMm3RKxbJlf0kNb2BDrCk8hsbDdvBay5tuiUTGxL7waTs2iLw0YTR9BLZQRwDUVqwjuTS9q3VRB8C1OQUnM6UqdXX/IcADn0IMADs2AqDOPSutQAAAABJRU5ErkJggg==) no-repeat -42px center #666;*background-image:url(http://ecma.bdimg.com/holmes/t-popup-icons-png8.png);_position:absolute;_top:expression(eval(document.documentElement.scrollTop+(document.documentElement.clientHeight||document.body.clientHeight)-this.offsetHeight-2));}</style></head>
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
    <a href="#" class="logo f-l">
      <img src="${pageContext.request.contextPath}/resource/logo.png">
    </a>
    <div class="ui-nav f-r">
      <ul>
        <li><a href="simulation" target="_blank">模拟考试</a>
        </li><li><a href="exam/exam1/1" target="_blank">驾考题库</a>
       	<li><a href="javascript:void(0);" target="_blank"  id="exam">正式考试</a></li>
      </li></ul>
    </div>
  </div>
</div>
<div style="clear:both"></div>
<style type="text/css">
  .mbx a{color:#717171;}
  .mbx a:hover{text-decoration: underline;}
  .mbx span{color:#717171;}
</style><div class="mbx" style="width:1200px;margin:0 auto;line-height:30px;">
      <a href="/driver/simulation" target="_blank">驾照网</a>
    &gt; <a href="#" target="_blank">驾校模拟考试</a>&gt; <span>${requestScope.name }</span>  
  </div><div style="clear:both"></div><div class="ui-content">
  <div class="wrap clearfix">
    <div class="ui-topic f-l">
      <div class="topic-hd">
       <h3 class="title">${requestScope.name }</h3>
       <h3 style="text-align:center"><i class="yellow">(总分100分，90分及格)</i></h3>
       <p class="description">本次考试时间为30分钟，请于30分钟内完成考试，超时分数直接为0分。</p>
     </div>
     <div class="test-bg Content">
       <c:forEach var="p" items="${requestScope.list }">
      <div class="ui-test clearfix titem">
      ${p.explain}
        <span id="MT${p.num}" class="aimscroll"></span>
        <p class="title">${p.num }、<span style="border:1px solid red;border-radius:3px;padding:0 5px;font-size:12px;"><c:if test="${p.tixing==1}">判断</c:if><c:if test="${p.tixing==2}">单选</c:if><c:if test="${p.tixing==3}">多选</c:if> </span>${p.question }</p>
        <div class="test-bd f-l">
        <ul id="DT${p.num}" ta="${p.ta}" tixing="${p.tixing }" num="${p.num }">
          <li choice="1"><a href="javascript:;">${p.a }</a></li>
          <li choice="2"><a href="javascript:;">${p.b }</a></li>
          <c:if test="${p.tixing>1}"><li choice="3"><a href="javascript:;">${p.c }</a></li>
          <li choice="4"><a href="javascript:;">${p.d }</a></li></c:if> 
        </ul>
      </div>
            <div class="test-r f-r">
        <img src="${p.imgurl }"><!-- <a href="javascript:;" class="t-big">查看大图</a> -->      </div>
    </div>
    </c:forEach>
    </div>
    
    <div class="examresult" id="examresult">
      <div id="resultright" style="display:none">
        <p class="pass"></p>
        <p>恭喜您，您过关了!<br><font>驾考网为您加油</font></p>
        <p>您的得分：&nbsp;&nbsp;<font class="score">0</font>&nbsp;&nbsp;分。</p>
      </div>
      <div id="resultwrong" style="display:none">
        <p class="fail"></p>
        <p>很遗憾！您没有过关!<br><font>驾考网为您加油</font></p>
        <p>您的得分：&nbsp;&nbsp;<font class="score">0</font>&nbsp;&nbsp;分。</p>
      </div>
    </div>
  </div>
 
  <style type="text/css">
    .catlist a{width:auto;padding:0 10px;}
    .catlist a:hover,.catlist a.current{text-decoration: underline;color: #526ed2;}
    .ui-newlist .newlist-hd h3 {
        min-width: 130px;
    }
  </style>
<div class="f-r">
  <style type="text/css">
  .rmcity{margin-bottom:30px;}
  .rmcity ul li a {
    display: inline-block;
    background:none;
}
</style>

  <div class="f-r ui-imitate ">
<div class="topic-b  mt-30"> 
</div>

<div class="timetp m-t" id="timeandlist">
  <div class="setting">
    时：<input type="text" name="" class="input hour" maxlength="2" value="00">
    分：<input type="text" name="" class="input minute" maxlength="2" value="30">
    秒：<input type="text" name="" class="input second" maxlength="2" value="00">
    <a class="begin">重置</a>
  </div>

  <div class="ui-time clearfix">
    <span>剩余时间</span>
    <div class="time" alltime="0">
      <ul>
        <li class="num hide"><span class="static old">0</span></li>
        <li class="num hide"><span class="static old">0</span></li>
        <li class="hide"><span>:</span></li>
        <li class="num"><span class="static old" style="opacity: 1;">3</span></li>
        <li class="num"><span class="static old" style="opacity: 1;">0</span></li>
        <li class="space"><span></span></li>
        <li class="num"><span class="static old" style="opacity: 1;">0</span></li>
        <li class="num"><span class="static old" style="opacity: 1;">0</span></li>
      </ul>
    </div>
    <i class="right">对<font id="rightNum">0</font>题</i> <i class="wrong">错<font id="wrongNum">0</font>题</i>
  </div>
  <div class="test-answer tilist">
    <ul>
          <c:forEach var="p" items="${requestScope.list }">
            <li id="T${p.num }" rid="1000" trueanswer="${p.ta }" tixing="${p.tixing }"><a href="javascript:;" onclick="scrollToadd(&#39;MT${p.num}&#39;)">${p.num}</a></li>
          </c:forEach>
    </ul>
  </div>
  <div class="count">
    <em class="right"></em>
    <span>已答题</span>
    <em class="no"></em>
    <span>未答题</span>
    <em class="wrong"></em>
    <span>答错题</span>
  </div>
  <div class="a-btn">
    <input type="submit" value="交 卷" class="tjsj">
    <input type="submit" value="重 考" class="chongkao">
  </div>
</div>

</div>



</div>
</div>
<div id="hidevalue" isjiaojuan=""></div>
<div class="wrap clearfix" id="check" style="display:none">
  <div class="c-top"><h4>考试确认窗口</h4></div>
  <div class="c-content">
    <span>操作提示：</span>
    <p>1：点击【确认交卷】，将提交考试成绩，结束考试！</p>
    <p>2：点击【继续考试】，将关闭本窗口，继续考试！</p>
  </div>
  <div class="c-bottom">
    <button onclick="tijiao()" class="current">确认交卷</button>
    <button onclick="closeDialog()" class="b2">继续考试</button>
  </div>
</div>
<div class="wrap clearfix" id="explain" style="display:none">
  <div class="e-top"><h4>题目详细解说</h4></div>
  <div class="e-content">
    <p id="jieshi_content"></p>
  </div>
  <div class="e-bottom">
    <button onclick="closeJiexi()">关闭解释</button>
    <em>页面将在<span id="time">10</span>秒后自动关闭，回到考试状态！</em>
  </div>
</div>
<style type="text/css">
  .comDiv {
    position: fixed;
    top: 0;
    z-index: 999;
    _position: absolute;
    _top: expression(documentElement.scrollTop);
    overflow: visible;
  }
</style>
<script type="text/javascript">
  var kmtype="4";
  var nowurl="/driver/test?name="+${requestScope.name };
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resource/moni.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/font_1460701011_6339538.css">
</div><div id="hm_t_undefined" class="hm-t-container"><div class="hm-t-go-top" style="display: block;"></div></div>
<script src="${pageContext.request.contextPath}/resource/alert.js"></script>
</body></html>