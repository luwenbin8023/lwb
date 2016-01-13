$(function(){
    /*在线客服*/
    var InterTime=1;var maxWidth=-4;var minWidth=-156;var numInter=8;
    $("#online-service").mouseover(function(){
        while(parseInt($(this).css("right"))<maxWidth){
            var i=parseInt($(this).css("right"));
            i+=numInter;
            $(this).css("right",i+"px");
            /*$(".j-backTop").css("top","550px");*/
            if(i==maxWidth){
                return;
            }
        }
    }).mouseout(function(){
        while(parseInt($(this).css("right"))>minWidth){
            var i=parseInt($(this).css("right"));
            i-=numInter;
            $(this).css("right",i+"px");
            /*$(".j-backTop").css("top","330px");*/
            if(i==minWidth){
                return;
            }
        }
     });

    $(".j-backTop").click(function(){
        $("body,html").animate({scrollTop: 0},500);
    })

    $(window).scroll(function() {
            if ($(window).scrollTop() > 100) {
                $(".j-backTop").fadeIn(500);
            } else {
                $(".j-backTop").fadeOut(500);
            }
        });
    /*footer二维码切换*/
    $(".j-sina").hover(function(){
        $(this).addClass("active");
        $(".j-ten").removeClass('active');
        $(".j-wbCode").css("display","block");
        $(".j-wxCode").css("display","none");
    });
    $(".j-ten").hover(function(){
        $(this).addClass("active");
        $(".j-sina").removeClass('active');
        $(".j-wxCode").css("display","block");
        $(".j-wbCode").css("display","none");
    });
    // 
     
    $(".anchor-btns .bd a").click(function(){
        $(this).addClass("on").siblings("a").removeClass("on");  
        var anchorTar=$(this).attr("href")
        var top=$(anchorTar).offset().top-84;
        if(top>0){
            $('html,body').animate({scrollTop:top}, 1000);
        }
        
    })
    $(window).scroll(function(){
        if($(this).scrollTop()>579){
             $(".anchor-btns").css({"position":"fixed","top":0,"z-index":2,"width":"100%"})
        }else{
            $(".anchor-btns").css({"position":"absolute","top":"579px","z-index":2,"width":"100%"})
        }
    })
   // 锚点滚动
   $(function(){
        $(".picScroll-left").slide({mainCell:".bd nav",autoPage:true,effect:"left",vis:3,trigger:"click"});
        var aLen=$(".picScroll-left .bd nav").find("a").length;
        console.log(aLen)
        if(aLen>3){
            $(".picScroll-left .prev,.picScroll-left .next").show();
        }else{
            $(".picScroll-left .prev,.picScroll-left .next").hide();
        }
    })
   // 关于纳网nav
   $(".contact-tabs-nav li").bind("click",function(){
    $(this).addClass("on").siblings("li").removeClass("on")
   })
})
