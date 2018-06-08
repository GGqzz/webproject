(function($){
	$("#navList li").mouseover(function(){
		$(this).siblings().removeClass("nav-mask");
		$(this).addClass("nav-mask");
	});
	$("#navList li").mouseleave(function(){
		$(this).siblings().removeClass("nav-mask");
	});
})(jQuery);
