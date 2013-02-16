function toggleLinks() {

	$("[id^='insert']").click(function() {
		$(this).hide();
		$(this).siblings().show();
		$(this).siblings().eq(0).text('1');
	});
	$("[id^='remove']").click(function() {
		$(this).hide();
		$(this).siblings().show();
		$(this).siblings().eq(0).text('0');
	});
};

function setInitialLink() {
	$("[id^='remove']").each(function(index) {
		if($(this).siblings().eq(0).text() == '0'){
			$(this).hide();
		}
	});
	$("[id^='insert']").each(function(index) {
		if($(this).siblings().eq(0).text() == '1'){
			$(this).hide();
		}
	});
}

$(window).load(function() {

	setInitialLink();
	toggleLinks();
});

