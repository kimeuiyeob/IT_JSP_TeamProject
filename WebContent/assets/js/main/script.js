//  메인슬라이더 버튼 컨트롤하는 js
//  메인슬라이더 버튼 컨트롤하는 js
//  메인슬라이더 버튼 컨트롤하는 js
//  메인슬라이더 버튼 컨트롤하는 js
//  메인슬라이더 버튼 컨트롤하는 js

var MainSwiper = new Swiper('.main_swiper .swiper-container', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
    pagination: {
      el: '.swiper-pagination',
      type: 'bullets',
      clickable: true,
    },
  });

  var SubSwiper = new Swiper('.sub_swiper .swiper-container', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });

  var third_swiper = new Swiper('.third_swiper .swiper-container', {
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
  });


MainSwiper.controller.control = SubSwiper;
SubSwiper.controller.control = MainSwiper;
third_swiper.controller.control = MainSwiper;


//--------------------------------------------------------------------------
// 메인슬라이더 번호 메기는 js
// 메인슬라이더 번호 메기는 js
// 메인슬라이더 번호 메기는 js
// 메인슬라이더 번호 메기는 js
// 메인슬라이더 번호 메기는 js

$('.third_swiper > .swiper-container > .sub_nav > .swiper-button-prev').click(function(){

  var $clicked = $(this);
  var $slider = $(this).closest('.swiper-container');
  
  var index = $(this).index();
  var isLeft = index == 0;

  var $current = $slider.find(' > .swiper-wrapper > .swiper-slide.active');
  var $post;
  
  if ( isLeft ){
      $post = $current.prev();
  }
  else {
      $post = $current.next();
  }
  //console.log($post.length);
  
  if ( $post.length == 0 ){
      if ( isLeft ){
          $post = $slider.find(' > .swiper-wrapper > .swiper-slide:last-child');
      }
      else {
          $post = $slider.find(' > .swiper-wrapper > .swiper-slide:first-child');
      }
  }

  $current.removeClass('active');
  $post.addClass('active');
  updateCurrentPageNumber();
});

$('.third_swiper > .swiper-container > .sub_nav > .swiper-button-next').click(function(){
  var $clicked = $(this);
  var $slider = $(this).closest('.swiper-container');
  
  var index = $(this).index();
  var isLeft = index == 0;

  var $current = $slider.find(' > .swiper-wrapper > .swiper-slide.active');
  var $post;
  
  if ( isLeft ){
      $post = $current.prev();
  }
  else {
      $post = $current.next();
  }
  //console.log($post.length);
  
  if ( $post.length == 0 ){
      if ( isLeft ){
          $post = $slider.find(' > .swiper-wrapper > .swiper-slide:last-child');
      }
      else {
          $post = $slider.find(' > .swiper-wrapper > .swiper-slide:first-child');
      }
  }

  $current.removeClass('active');
  $post.addClass('active');
  updateCurrentPageNumber();
});

// 슬라이더 페이지 번호 지정
function pageNumber__Init(){
  var totalSlideNo = $('.third_swiper > .swiper-container > .swiper-wrapper > .swiper-slide').length;
  
  $('.third_swiper > .swiper-container').attr('data-slide-total', totalSlideNo);
  
  $('.third_swiper > .swiper-container > .swiper-wrapper > .swiper-slide').each(function(index, node){
      $(node).attr('data-slide-no', index + 1);
  });
};

pageNumber__Init();

// 슬라이더 이동시 페이지 번호 변경
function updateCurrentPageNumber(){
  var totalSlideNo = $('.third_swiper > .swiper-container').attr('data-slide-total');
  var currentSlideNo = $('.third_swiper > .swiper-container > .swiper-wrapper > .swiper-slide.active').attr('data-slide-no');
  
  $('.third_swiper > .swiper-container > .sub_nav > .page-no > .total-slide-no').html('0' + totalSlideNo);
  $('.third_swiper > .swiper-container > .sub_nav > .page-no > .current-slide-no').html('0' + currentSlideNo);
};

updateCurrentPageNumber()