const body = document.querySelector('body');
const $body = $('body');

/* ----------사이드 메뉴 마우스 이벤트------------- */
var $menuLink = $('.menu-icon').closest('.menu-link');
var $active = $('.active');

$menuLink.on("click", function () {
    $(this).next().slideToggle(100);
    $(this).css('color', '#fff');
})
$menuLink.on("mouseover", function () {
    $(this).css('color', '#fff');
})
$menuLink.on("mouseout", function () {
    $(this).css('color', '#9D9DA6');
})

$active.on("mouseover", function () {
    $(this).css('color', '#fff');
})
$active.on("mouseout", function () {
    $(this).css('color', '#9D9DA6');
})

/* ------------------헤더 검색 클릭--------------------- */
// const $headerSearch = $('.toolImg-wrap').eq(0);
// const $headerSearchDropdown = $('.header-search-box');

// let check = false;

// $body.on('click', function (e) {
//     if (check) {
//         if (e.target.closest('.header-search-box') == e.currentTarget.querySelector('.header-search-box').closest('.header-search-box')) {
//         } else {
//             $headerSearchDropdown.css('display', 'none');
//             $headerSearch.css('background-color', '#fff');
//             check = !check;
//         }
//     }
// })
// $headerSearch.on("click", function () {
//     if ($headerSearchDropdown.css('display') == 'none') {
//         $headerSearch.css('background-color', '#f6f8fa');
//         $headerSearchDropdown.css('display', 'block');
//         setTimeout(() => {
//             check = !check;
//         }, 100);
//     }
// })

/* -------------------시계---------------------- */
function showClock() {
    var currentDate = new Date();
    var divClock = document.getElementById("divClock");

    var msg = currentDate.getHours() + "시 "
    msg += currentDate.getMinutes() + "분 ";

    divClock.innerText = msg;

    setTimeout(showClock, 1000);
}