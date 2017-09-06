//计时开始
    Countdown.init();
    var rightNum=0;
    var wrongNum=0;
    var stopMsg=false;
    var is_tijiao=0;
    var rearray=[['对','错'],['A','B','C','D'],['A','B','C','D']];
    //浮动
    $(function(){
        var h = $('#timeandlist').offset().top;
        $(window).scroll(function(){
            if($(window).scrollTop() >h ){
                $('#timeandlist').addClass('comDiv');
            }else{
                $('#timeandlist').removeClass('comDiv');
            }
        });
    })
    $(".tjsj").click(function(){
        if(is_tijiao){
            layer.msg('您已提交过试卷 : )');
            return false;
        }
        Countdown.stopTime();
        layer.open({
            type: 1,//弹窗类型
            title:false,//是否展示标题，展示什么内容的标题
            closeBtn: 0,//标题旁边的关闭按钮
            shadeClose:false,//阴影
            move :'h4',//拖动
            area: ['450px', 'auto'], //宽高
            content: $('#check')//抓取内容
        });
    });
    function tijiao(){
        layer.closeAll();
        Countdown.reset();//计时重置
        var list=new Array();;
        var i=0;
        $("#timeandlist .tilist li").each(function(){
        	
        	if(typeof($(this).attr('answer'))=='undefined')
        	list[i]="0";
        	else 
        	list[i]=$(this).attr('answer');
        	i++
        })
        
        $.ajax({
        type : "get",
        async : false,
        url : "/driver/checkScore",
        data : {
            list :  list
        },
        traditional : true,
        contentType : "application/json; charset=utf-8",
        dataType : "json",
        cache : false,
        success : function (data) {
        	for(var j=0;j<data.length;j++){
        	$('#DT'+(j+1)).attr("ta",data[j]);
        	$('#T'+(j+1)).attr("trueanswer",data[j])
        	}
        },
        error : function (errorCB) {
            if (errorCB) {
                setTimeout(function () {
                    errorCB(new WebAPIError(errorcode.NETWORK_ERR));
                }, 1);
            }
        }
        });
        is_tijiao++;
        $('#hidevalue').attr('isjiaojuan',1);
        $("#timeandlist .tilist li").each(function(){
            var index=$(this).attr('rid');
            var idname=$(this).attr('id');
            var answer=$(this).attr('answer');
            var trueanswer=$(this).attr('trueanswer');
            var tixing=$(this).attr('tixing');
            var DTid='D'+idname;
            var check={};
            var jiexistr="";
            if(tixing == 3){
                //多选题
                var tsarr=trueanswer.split('');
                var asarr=[];
                if(answer != undefined && answer != null){
                    asarr=answer.split('');

                }else{
                    //无答案
                    asarr=[];
                }
                check=checkvalue_duoxuan(asarr,tsarr,idname);
                var str='';
                if(check['status']){
                    str='<li class="answer">您的答案：<strong>'+check.amsg+'</strong>&nbsp;&nbsp;<span class="iconfont icon-dagou" style="color:#f3583c"></span>&nbsp;&nbsp;'+jiexistr+'</li>';
                }else{
                    str='<li class="answer">您的答案：<strong>'+check.amsg+'</strong>&nbsp;&nbsp;<span class="iconfont icon-wrong" style="color:#f3583c"></span>&nbsp;&nbsp;正确答案：<strong>'+check.tmsg+'</strong>&nbsp;&nbsp;'+jiexistr+'</li>';
                }
                $('#'+DTid).append(str);
            }else{
                //单选、判断题
                if(answer != undefined && answer != null){
                    $('#'+DTid+' li:eq('+(trueanswer-1)+')').addClass('right');
                    var check=checkvalue(answer,trueanswer,tixing);
                    if(check['status'] != true){
                        $('#'+DTid+' li:eq('+(answer-1)+')').addClass('wrong');
                        console.log(idname);
                        $('#'+idname).attr('class','info-yellow');
                    }else{
                        $('#'+idname).attr('class','info-blue');
                    }
                    var str='';
                    if(check['status']){
                        str='<li class="answer">您的答案：<strong>'+check.amsg+'</strong>&nbsp;&nbsp;<span class="iconfont icon-dagou" style="color:#f3583c"></span>&nbsp;&nbsp;'+jiexistr+'</li>';
                    }else{
                        str='<li class="answer">您的答案：<strong>'+check.amsg+'</strong>&nbsp;&nbsp;<span class="iconfont icon-wrong" style="color:#f3583c"></span>&nbsp;&nbsp;正确答案：<strong>'+check.tmsg+'</strong>&nbsp;&nbsp;'+jiexistr+'</li>';
                    }
                    $('#'+DTid+' li:eq('+(trueanswer-1)+')').parent().append(str);
                }else{
                    //无答案
                    var check=checkvalue('',trueanswer,tixing);
                    console.log('#'+DTid+' li:eq('+(trueanswer-1)+')');
                    $('#'+DTid+' li:eq('+(trueanswer-1)+')').addClass('right');
                    var str='';
                    if(check['status']){
                        str='<li class="answer">您的答案：<strong>'+check.amsg+'</strong>&nbsp;&nbsp;<span class="iconfont icon-dagou" style="color:#f3583c"></span>&nbsp;&nbsp;'+jiexistr+'</li>';
                    }else{
                        str='<li class="answer">您的答案：<strong>'+check.amsg+'</strong>&nbsp;&nbsp;<span class="iconfont icon-wrong" style="color:#f3583c"></span>&nbsp;&nbsp;正确答案：<strong>'+check.tmsg+'</strong>&nbsp;&nbsp;'+jiexistr+'</li>';
                    }
                    $('#'+DTid+' li:eq('+(trueanswer-1)+')').parent().append(str);
                }
            }
        });
        //统计错题率
        tongjiNum();
        scrollToadd('examresult');
    }
    //单选/判断题，检查错误
    function checkvalue(answer,trueanswer,tixing){
        var arr={};
        arr['status']=false;
        var index1=parseInt(tixing)-1;
        var index2=parseInt(trueanswer)-1;
        var index3=parseInt(answer)-1;
        arr['tmsg']=rearray[index1][index2];
        if(answer==trueanswer){
            //答对
            arr['amsg']=arr['tmsg'];
            rightNum++;
            arr['status']=true;
        }else if(answer == '' || answer == undefined || answer == null){
            //没有答题
            arr['amsg']='没有答题';
        }else{
            //答错
            wrongNum++;
            arr['amsg']=rearray[index1][index3];
        }
        return arr;
    }
    //多选，检查错误
    function checkvalue_duoxuan(asarr,tsarr,idname){
        var arr={};
        arr['status']=false;
        var astr="";
        var tstr="";
        asarr=asarr.sort();
        tsarr=tsarr.sort();
        if(asarr != '' && asarr != undefined && asarr != null){
            for(var i in asarr){
                $('#D'+idname+' li:eq('+(parseInt(asarr[i])-1)+')').addClass('wrong');
                astr+=rearray[2][parseInt(asarr[i])-1];
            }
        }
        if(tsarr != '' && tsarr != undefined && tsarr != null){
            for(var j in tsarr){
                $('#D'+idname+' li:eq('+(parseInt(tsarr[j])-1)+')').removeClass('wrong');
                $('#D'+idname+' li:eq('+(parseInt(tsarr[j])-1)+')').addClass('right');
                tstr+=rearray[2][parseInt(tsarr[j])-1];
            }
        }
        arr['tmsg']=tstr;
        if(astr==tstr){
            //答对
            arr['amsg']=astr;
            rightNum++;
            arr['status']=true;
            $('#'+idname).attr('class','info-blue');
        }else if(astr == '' || astr == undefined || astr == null){
            //没有答题
            arr['amsg']='没有答题';
        }else{
            //答错
            wrongNum++;
            arr['amsg']=astr;
            $('#'+idname).attr('class','info-yellow');
        }
        return arr;
    }
    //开始选择
    $(".Content li").click(function(){
        var tixing=$(this).parent().attr('tixing');
        var num=parseInt($(this).parent().attr('num'));
        var trueanswer=$(this).parent().attr('ta');
        var nextnum=num+1;
        var answer;
        if($('#hidevalue').attr('isjiaojuan') == '' ){
            if(tixing==1 || tixing==2){
                //判断&单选
                //缓存做题信息
                $('#T'+num).attr('answer',$(this).attr('choice'));
                $(this).parent().find('.sel').removeClass('sel');
                $(this).attr('class','sel');
                setStatus(num,3);
                setTimeout('tiaozhuan('+nextnum+')',200);

            }else if(tixing==3){
                //多选
                setStatus(num,3);
                var asnum=$('#T'+num).attr('answer');
                var thischoice=$(this).attr('choice');
                if(asnum){
                    if(asnum.indexOf(thischoice) == -1){
                         asnum=asnum+thischoice;
                    }
                }else{
                    asnum=thischoice;
                }
                $(this).attr('class','sel');
                $('#T'+num).attr('answer',asnum);
            }
        }
   });
   //当前题
   $(document).ready(function(){
      $(".Content ul").mouseover(function(){
            var index=$(this).attr('num');
            setStatus(index,4);
            $(this).find('.status_fenxi').show();
      });
      $(".Content ul").mouseout(function(){
            var index=$(this).attr('num');
            //取消当前选择
            $('#T'+index).removeClass('active');
            $(this).find('.status_fenxi').hide();

      });
    });
   //原图预览
   $(".Content img").click(function(){
        var imgsrc=$(this).attr('src');
        layer.open({
          type: 1,
          title: false,
          skin: 'layui-layer-rim', //加上边框
          area: ['auto', 'auto'], //宽高
          content: '<img src="'+imgsrc+'">',
          shadeClose :true,
        });
   });
   $(".Content video").click(function(){
        var videosrc=$(this).attr('src');
        layer.open({
          type: 1,
          title: false,
          skin: 'layui-layer-rim', //加上边框
          area: ['630px', '278px'], //宽高
          content: '<video src="'+videosrc+'" autoplay="autoplay" controls="controls" style="width:630px;height:278px;"></video>',
          shadeClose :true,
        });
    });
    //查看解析
    $(".status_fenxi a").click(function(){
        Countdown.stopTime();
        var datastr=$(this).parent().find('input').val();
        $('#jieshi_content').html(datastr);
        layer.open({
            type: 1,//弹窗类型
            title:false,//是否展示标题，展示什么内容的标题
            closeBtn: 0,//标题旁边的关闭按钮
            shadeClose:false,//阴影
            move :'h4',//拖动
            area: ['auto', 'auto'], //宽高
            content: $('#explain')//抓取内容
        });
        stopMsg=false;
        daojishi();
    });
    //设置列表状态 1：对 2：错 3：已做 4：当前题
   function setStatus(index,type){
        if(type==1){
            //答对
            $('#T'+index).attr('class','info-blue');
        }else if(type==2){
            //答错
            $('#T'+index).attr('class','info-yellow');
        }else if(type==3){
            //已做
            $('#T'+index).attr('class','info-blue');
        }else if(type==4){
            //当前题
            $('#T'+index).addClass('active');
        }
   }
   //模拟点击下一题
   function tiaozhuan(nextnum){
         var mo2g = '<span id="mo2g'+nextnum+'"><span>';
         var htmlstr=$('#mo2g'+nextnum).html();
         if(htmlstr == undefined){
            //给A标签中的文字添加一个能被jQuery捕获的元素
            $("#T"+nextnum+" a").append(mo2g);
            $('#mo2g'+nextnum).click();
         }
   }
   function scrollToadd(id){
        if(id){
            var t = $("#"+id).offset().top;
            $(window).scrollTop(t);//滚动到锚点位置
        }
    }
    //统计错题率
    function tongjiNum(){
    	var i=0;
    	var kmtype;
        $("#timeandlist .tilist li").each(function(){
        	i++
        })
        if(i>60)
        kmtype=1;
        else
        kmtype=4;
        var rightPercent=0;
        $('#rightNum').html(rightNum);
        $('#wrongNum').html(wrongNum);
        if(kmtype==1){
            rightPercent=rightNum;
        }else if(kmtype==4){
            rightPercent=rightNum*2;
        }
        $('.score').html(rightPercent);
        if(rightPercent >= 90){
            $('#resultright').show();
        }else{
            $('#resultwrong').show();
        }
    }

    function closeDialog(){
        Countdown.continueTime();
        layer.closeAll();
    }
    function closeJiexi(){
        Countdown.continueTime();
        layer.closeAll();
        stopMsg=true;
    }
    function daojishi(){
      if(stopMsg){
        $('#time').html(10);
        return false;
      }
      var wait_time=parseInt($('#time').html());
      var secs_time = 0;
      wait_time--;
      if(wait_time==-1){
        layer.closeAll();
        Countdown.continueTime();
        $('#time').html(10);
      }else{
        window.setTimeout("$('#time').html("+wait_time+");daojishi();",1000);
      }
    }
