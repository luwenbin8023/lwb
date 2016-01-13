$(function(){
    var jgoItem = $(".j-goItem");
    
    /*banner初始化*/
    $(".banner").each(function(){
        var liLen=$(this).find(".bd ul li").length;       
        for(var i=0;i<liLen;i++){
            $(this).find(".hd ul").append("<li></li>")
        }
    })    
    $(".banner").slide({
        titCell:".hd ul li",
        mainCell:".bd ul",
        autoPlay:true,
        interTime:5000
    });

    /*合作伙伴初始化*/
    $(".naPartner").slide({
        mainCell:".bd ul",
        effect:"leftLoop",
        autoPlay:true,
        scroll:6,
        vis:6
    });

    jgoItem.hover(function(){
        var t = $(this);
        t.addClass("active").siblings("li").removeClass('active');
    })
    
})
