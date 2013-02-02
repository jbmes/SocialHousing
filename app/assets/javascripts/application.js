// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).ready(function () {
    $('.btn_addLink').click(function () {
        $("#pop").children("li").length
        $('#pop').append("<div >link: <label> <input type = 'text' ><a href='JavaScript:void(0);' class='btn_removeLink'>Remove</a></label></div >");
    });

    $('.btn_removeLink').live('click', function () {
        $(this).parent().parent().remove();

    });
});


$(function () {
    if ($("#comments").length > 0) {
        setTimeout(updateComments, 10000);
    }
});

function updateComments() {
    var article_id = $("#article").attr("data-id");
    if ($(".comment").length > 0) {
        var after = $(".comment:last-child").attr("data-time");
    } else {
        var after = "0";
    }
    $.getScript("/comments.js?article_id=" + article_id + "&after=" + after)
    setTimeout(updateComments, 10000);
}