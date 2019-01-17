// JavaScript Document
$(function(){
	
	//*IE8支持placeholder占位符
    if( !('placeholder' in document.createElement('input')) ){
        $('input[placeholder],textarea[placeholder]').each(function(){
            var that = $(this),
                text= that.attr('placeholder');
            if(that.val()===""){
                that.val(text).addClass('placeholder');
            }
            that.focus(function(){
                if(that.val()===text){
                    that.val("").removeClass('placeholder');
                }
            })
                .blur(function(){
                    if(that.val()===""){
                        that.val(text).addClass('placeholder');
                    }
                })
                .closest('form').submit(function(){
                    if(that.val() === text){
                        that.val('');
                    }
                });
        });
    }
	//账号手机切换
/*	$(".login-tab li").click(function(){
		
		var iIndex = $(this).index();
		$(this).addClass("cur");
		$(this).siblings().removeClass("cur");
		
		$(".log_main").eq(iIndex).addClass("block").removeClass("hide");
		$(".log_main").eq(iIndex).siblings().removeClass("block").addClass("hide");
	});*/
	///发送验证码弹层
/*	$(".yzmBtn").click(function(){
		$(".tcBox").removeClass("hide");
		$(".closeBtn").click(function(){
			$(".tcBox").addClass("hide");
		})
	})*/
	

	//点击用户协议
	$(".xyBtn").click(function(){
		$(".f-tan").removeClass("hide").addClass("block")
	});
	//服务条款的关闭
	$(".fClose").click(function(){
		$(".f-tan").removeClass("block").addClass("hide")
	});
	
	
})