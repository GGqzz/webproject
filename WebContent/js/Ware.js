(function($){
	$("#smallImg1").addClass("changeBorder");
	$("#smallProductImg li").mouseover(function(){
		var imgUrl=$(this).children().attr('src');
		$("#mainImg").attr('src',imgUrl);
		$(this).siblings().children().removeClass("changeBorder");
		$(this).children().addClass('changeBorder');
	});
})(jQuery);
