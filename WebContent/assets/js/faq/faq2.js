$(document).ready(function () {
    $(".nav").hover(function () {
        $("#sliding_menu", this).stop().slideDown(600);
    },
        function () {
            $("#sliding_menu", this).stop().slideUp(600);
        });
})

$(document).ready(function () {
    $(".nav").hover(function () {
        $("#sliding_menu_main", this).stop().slideDown(600);
    },
        function () {
            $("#sliding_menu_main", this).stop().slideUp(600);
        });
})