$(document).ready(function () {
    $(".nav").hover(function () {
        $("#sliding_menu", this).stop().slideDown(600);
    },
        function () {
            $("#sliding_menu", this).stop().slideUp(600);
        });
})