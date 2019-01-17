$(function(){
	
//大图模式偶数个无margin
	$(".big-pic li:odd").addClass("no-margin-r");


//普通选房、智能选房切换
/*	$(".menusTab li").click(function(){

		var iIndex = $(this).index();

		$(this).addClass("cur");
		$(this).siblings().removeClass("cur");

		$(".pxMain_con").eq(iIndex).addClass("block").removeClass("hide");
		$(".pxMain_con").eq(iIndex).siblings().removeClass("block").addClass("hide");
	});	*/
	
	//复选框样式
	$(".inputSty").on("click",function(){
		$(this).hasClass("on_check")? $(this).removeClass("on_check"):$(this).addClass("on_check");
	  // $(this).toggleClass( "on_check" );
	});
	
	///点击展开更多条件
	$(".moreBtn span").click(function(){
		if($(".moreCon").hasClass("hide")){
			$(".moreCon").removeClass("hide").addClass("block");
			$(this).html("收起<i class='mBg'></i>");
			$(this).children("i").addClass("iCur");
		}
		else{
			$(".moreCon").removeClass("block").addClass("hide");
			$(this).html("更多<i class='mBg'></i>");
			$(this).children("i").removeClass("iCur");
		}
	});
	//点击筛选条件删除
	$(".tj span i").click(function(){
		$(this).parent("span").remove();
	});
	//清空
	$(".qkBtn").click(function(){
		$(".tj span").remove();
	});
	//区域地铁切换
	$(".adrMenu dd").click(function(){
		var adrIndex = $(this).index();
		$(this).addClass("curDd");
		$(this).siblings().removeClass("curDd");
		$(".adrCon div").eq(adrIndex).addClass("block").removeClass("hide");
		$(".adrCon div").eq(adrIndex).siblings().removeClass("block").addClass("hide");
	});
	//区域地铁下子集切换
	$(".sTab li").click(function(){
		var ziIndex = $(this).index();
		$(this).addClass("new_di_tab_cur");
		$(this).siblings().removeClass("new_di_tab_cur");
		$(".sTab_Con dd").eq(ziIndex).addClass("block").removeClass("hide");
		$(".sTab_Con dd").eq(ziIndex).siblings().removeClass("block").addClass("hide");
	});
	$(".dTab li").click(function(){
		var diIndex = $(this).index();
		$(this).addClass("new_di_tab_cur");
		$(this).siblings().removeClass("new_di_tab_cur");
		$(".dTab_Con dd").eq(diIndex).addClass("block").removeClass("hide");
		$(".dTab_Con dd").eq(diIndex).siblings().removeClass("block").addClass("hide");
	});
	//列表大图和小图切换
	$(".pxTit .last_dd a").click(function(){
		var diIndex = $(this).index();
		$(this).addClass("moshi-cur");
		$(this).siblings().removeClass("moshi-cur");
		$(".list-con-box ul").eq(diIndex).addClass("block").removeClass("hide");
		$(".list-con-box ul").eq(diIndex).siblings().removeClass("block").addClass("hide");
	});
});