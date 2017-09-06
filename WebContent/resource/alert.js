
	$('#exam').click(function () {
	     $.ajax({
        type : "get",
        async : false,
        url : "/driver/examing",
        dataType : "text",
        cache : false,
        success : function (data) { 
            if(data==2){
        	layer.open({
            type: 1
            ,title: '四份试题，任选一份作为考试试卷,一旦开始考试,必须三十分钟内完成考试并 ,否则考试成绩为0分' //不显示标题栏
            ,closeBtn: true
            ,area: '500px;500px'
            ,shade: 0.8
            ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
            ,resize: false
            ,btn: ['暂时不考']
            ,btnAlign: 'c'
            ,moveType: 1 //拖拽模式，0或者1
            ,content: '<div style="padding: 38px; line-height: 38px; background-color: #393D49; color: #fff; font-weight: 300;"> <div>  <button id="exam1"  class="layui-btn layui-btn-normal">2017驾驶员科目四（一）</button> <button id="exam2" class="layui-btn layui-btn-normal">2017驾驶员科目四（二）</button><button id="exam3" class="layui-btn layui-btn-normal">2017驾驶员科目四（三）</button><button id="exam4" class="layui-btn layui-btn-normal">2017驾驶员科目四（四）</button> </div> </div>'
            ,success: function(layero){
                return true;
            }
        })}else
        	window.location.href='/driver/exam?id=1';
        }
        });
        $("#exam1").click(function () {
            window.location.href='/driver/exam?id=1'
        });
        $("#exam2").click(function () {
            window.location.href='/driver/exam?id=2'
        });
        $("#exam3").click(function () {
            window.location.href='/driver/exam?id=3'
        });
        $("#exam4").click(function () {
            window.location.href='/driver/exam?id=4'
        });
    });