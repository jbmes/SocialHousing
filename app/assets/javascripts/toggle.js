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
        console.log("this: " + this);
        $(this).siblings().each(function(index){
             console.log("sibling: "+ this);
        });

		if($(this).siblings().eq(0).text() == '0'){
            console.log("found a remove link");
			$(this).hide();
		}
        if($(this).siblings().eq(1).text() == '0'){
            console.log("found a remove link");
            $(this).hide();
        }
	});
	$("[id^='insert']").each(function(index) {
        console.log("this: " + $(this));
        $(this).siblings().each(function(index){
            console.log("sibling: " + $(this));
        });

		if($(this).siblings().eq(0).text() == '1'){
            console.log("found an insert link");
            $(this).hide();
		}
        if($(this).siblings().eq(1).text() == '1'){
            console.log("found an insert link");
            $(this).hide();
        }
	});
}

$(window).ready(function() {
	setInitialLink();
    toggleLinks();

});

