

(function($){

	var ms = {
		init:function(obj,args){
			return (function(){
				ms.fillHtml(obj,args);
				ms.bindEvent(obj,args);
			})();
		},
		//填充html
		fillHtml:function(obj,args){
			return (function(){
				obj.empty();
				//上一页
				if(args.current > 1){
					obj.append('<a href="javascript:;" class="prev-page">上一页</a>');
				}else{
					obj.remove('.prev-page');
					obj.append('<span class="disabled">上一页</span>');
				}
				//中间页码
				if(args.current != 1 && args.current >= 4 && args.pageCount != 4){
					obj.append('<a href="javascript:;" class="num-page">'+1+'</a>');
				}
				if(args.current-2 > 2 && args.current <= args.pageCount && args.pageCount > 5){
					obj.append('<span class="dian">...</span>');
				}
				var start = args.current -2,end = args.current+2;
				if((start > 1 && args.current < 4)||args.current == 1){
					end++;
				}
				if(args.current > args.pageCount-4 && args.current >= args.pageCount){
					start--;
				}
				for (;start <= end; start++) {
					if(start <= args.pageCount && start >= 1){
						if(start != args.current){
							obj.append('<a href="javascript:;" class="num-page">'+ start +'</a>');
						}else{
							obj.append('<span class="cur">'+ start +'</span>');
						}
					}
				}
				if(args.current + 2 < args.pageCount - 1 && args.current >= 1 && args.pageCount > 5){
					obj.append('<span class="dian">...</span>');
				}
				if(args.current != args.pageCount && args.current < args.pageCount -2  && args.pageCount != 4){
					obj.append('<a href="javascript:;" class="num-page">'+args.pageCount+'</a>');
				}
				//下一页
				if(args.current < args.pageCount){
					obj.append('<a href="javascript:;" class="next-page">下一页</a>');
				}else{
					obj.remove('.next-page');
					obj.append('<span class="disabled">下一页</span>');
				}
			})();
		},
		//绑定事件
		bindEvent:function(obj,args){
			return (function(){
				obj.on("click","a.num-page",function(){
					var current = parseInt($(this).text());
					ms.fillHtml(obj,{"current":current,"pageCount":args.pageCount});
					if(typeof(args.backFn)=="function"){
						args.backFn(current);
					}
				});
				//上一页
				obj.on("click","a.prev-page",function(){
					var current = parseInt(obj.children("span.cur").text());
					ms.fillHtml(obj,{"current":current-1,"pageCount":args.pageCount});
					if(typeof(args.backFn)=="function"){
						args.backFn(current-1);
					}
				});
				//下一页
				obj.on("click","a.next-page",function(){
					var current = parseInt(obj.children("span.cur").text());
					ms.fillHtml(obj,{"current":current+1,"pageCount":args.pageCount});
					if(typeof(args.backFn)=="function"){
						args.backFn(current+1);
					}
				});
			})();
		}
	}
	$.fn.createPage = function(options){
		var args = $.extend({
			pageCount : 6,
			current : 1,
			backFn : function(){}
		},options);
		ms.init(this,args);
	}

	
})(jQuery);