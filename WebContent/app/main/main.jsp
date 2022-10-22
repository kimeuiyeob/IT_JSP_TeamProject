<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
   <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css"> -->
  <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <link rel="stylesheet" type="text/css" href=" http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/main.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/slide.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main/mainSlide.css">
  <title>Document</title>
</head>

<body>
   <jsp:include page="../fix/header.jsp" />
   
  <!-- ----------------------------뒷 배경 슬라이드--------------------------- -->
  <div id="bigback" class="main_swiper">
    <div id="back" class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="https://techblog.woowahan.com/wp-content/uploads/2021/11/omar-lopez-vTknj2OxDVg-unsplash-600x400.jpg" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://i0.wp.com/getgovtgrants.com/wp-content/uploads/2021/01/Free-Baby-Clothes-and-Gear.webp" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://images.pexels.com/photos/1556706/pexels-photo-1556706.jpeg?cs=srgb&dl=pexels-daniel-reche-1556706.jpg&fm=jpg" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://cdn.pixabay.com/photo/2012/03/01/01/42/baby-20339__340.jpg" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://cache.magicmaman.com/data/photo/w1000_ci/5w/be-be-endormi.webp" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://cdn.pixabay.com/photo/2016/11/19/14/28/bed-1839564__340.jpg" alt="">
        </div>
      </div>
      <div class="main_nav">
      </div>
      <div class="swiper-pagination"></div>
    </div>
  </div>

  <!-- ----------------------------맨 앞 메인 슬라이드--------------------------- -->

  <div class="sub_swiper">
    <div id="maininfo" class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide">
          <img src="https://techblog.woowahan.com/wp-content/uploads/2021/11/omar-lopez-vTknj2OxDVg-unsplash-600x400.jpg" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://i0.wp.com/getgovtgrants.com/wp-content/uploads/2021/01/Free-Baby-Clothes-and-Gear.webp" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://images.pexels.com/photos/1556706/pexels-photo-1556706.jpeg?cs=srgb&dl=pexels-daniel-reche-1556706.jpg&fm=jpg" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://cdn.pixabay.com/photo/2012/03/01/01/42/baby-20339__340.jpg" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://cache.magicmaman.com/data/photo/w1000_ci/5w/be-be-endormi.webp" alt="">
        </div>
        <div class="swiper-slide">
          <img src="https://cdn.pixabay.com/photo/2016/11/19/14/28/bed-1839564__340.jpg" alt="">
        </div>
      </div>
      <div class="sub_nav">
      </div>
      <div class="swiper-pagination"></div>
    </div>
  </div>

  <!-- ----------------------------써드 슬라이드-------------------------- -->
  <div class="third_swiper">
    <div id="main" class="swiper-container">
      <div class="swiper-wrapper">
        <div class="swiper-slide active">
          <p class="sub_swiper_Bigtext">
            <!--최대 두줄 -->
            1번 대주제
          </p>
          <p class="sub_swiper_smalltext">
            <!--최대 두줄 -->
            1번 소주제
          </p>
        </div>
        <div class="swiper-slide">
          <p class="sub_swiper_Bigtext">
            <!--최대 두줄 -->
            2번 대주제
          </p>
          <p class="sub_swiper_smalltext">
            <!--최대 두줄 -->
            2번 소주제
          </p>
        </div>
        <div class="swiper-slide">
          <p class="sub_swiper_Bigtext">
            <!--최대 두줄 -->
            3번 대주제
          </p>
          <p class="sub_swiper_smalltext">
            <!--최대 두줄 -->
            3번 소주제
          </p>
        </div>
        <div class="swiper-slide">
          <p class="sub_swiper_Bigtext">
            <!--최대 두줄 -->
            4번 대주제
          </p>
          <p class="sub_swiper_smalltext">
            <!--최대 두줄 -->
            4번 소주제
          </p>
        </div>
        <div class="swiper-slide">
          <p class="sub_swiper_Bigtext">
            <!--최대 두줄 -->
            5번 대주제
          </p>
          <p class="sub_swiper_smalltext">
            <!--최대 두줄 -->
            5번 소주제
          </p>
        </div>
        <div class="swiper-slide">
          <p class="sub_swiper_Bigtext">
            <!--최대 두줄 -->
            6번 대주제
          </p>
          <p class="sub_swiper_smalltext">
            <!--최대 두줄 -->
            6번 소주제
          </p>
        </div>
      </div>
      <div class="sub_nav">
        <div class="swiper-button-prev" style="color: white; font-size: 20px;">
        </div>
        <div class="swiper-button-next" style="color: white; font-size: 20px;">
        </div>
        <div class="page-no">
          <span class="current-slide-no"></span>
          <span class="slash" style="opacity: 0.35;">|</span>
          <span class="total-slide-no" style="opacity: 0.85;"></span>
        </div>
      </div>
      <div class="line"></div>
    </div>
  </div>


  <!-- ------------------------------------------------------------------ -->


  <div class="subjectname1">
    보육원 활동
  </div>

  <div class="longdivs">
    <div class="longdived">
      <div class="longdivedimg">
        <img src="https://i0.wp.com/getgovtgrants.com/wp-content/uploads/2021/01/Free-Baby-Clothes-and-Gear.webp" alt="">
      </div>
      <div class="longdivedinfo">
        <div class="infoname">
          <p>보육원 명</p>
        </div>
        <div class="infodetail">
          <p>보육원 활동 내용</p>
        </div>
        <div class="infolike">
          <div class="heart">
            <div>
              <img src="${pageContext.request.contextPath}/assets/img/main/heart.png" alt="">
            </div>
            <div class="heartcount">
              1567
            </div>
          </div>
        </div>
      </div>
      <div class="longdivedetc">
        <div class="etchighlight">
          후원
        </div>
        <div class="etcname">
          월 10,000원
        </div>
        <div class="etcetc">
          (날짜)
        </div>
      </div>
    </div>

    <div class="longdived">
      <div class="longdivedimg">
        <img src="https://social-phinf.pstatic.net/20210820_276/16294225839800BoP0_JPEG/photo-1604917621956-10dfa7cce2e7.jpg" alt="">
      </div>
      <div class="longdivedinfo">
        <div class="infoname">
          <p>보육원 명</p>
        </div>
        <div class="infodetail">
          <p>보육원 활동 내용</p>
        </div>
        <div class="infolike">
          <div class="heart">
            <div>
              <img src="${pageContext.request.contextPath}/assets/img/main/heart.png" alt="">
            </div>
            <div class="heartcount">
              1567
            </div>
          </div>
        </div>
      </div>
      <div class="longdivedetc">
        <div class="etchighlight">
          후원
        </div>
        <div class="etcname">
          월 10,000원
        </div>
        <div class="etcetc">
          (날짜)
        </div>
      </div>
    </div>
    <div class="longdived">
      <div class="longdivedimg">
        <img src="https://techblog.woowahan.com/wp-content/uploads/2021/11/omar-lopez-vTknj2OxDVg-unsplash-600x400.jpg" alt="">
      </div>
      <div class="longdivedinfo">
        <div class="infoname">
          <p>보육원 명</p>
        </div>
        <div class="infodetail">
          <p>보육원 활동 내용</p>
        </div>
        <div class="infolike">
          <div class="heart">
            <div>
              <img src="${pageContext.request.contextPath}/assets/img/main/heart.png" alt="">
            </div>
            <div class="heartcount">
              1567
            </div>
          </div>
        </div>
      </div>
      <div class="longdivedetc">
        <div class="etchighlight">
          후원
        </div>
        <div class="etcname">
          월 10,000원
        </div>
        <div class="etcetc">
          (날짜)
        </div>
      </div>
    </div>
  </div>

  <!-- ------------------------------------------------------------------- -->

  <div class="subjectname2">
    기부 현황
  </div>
  <div class="showall" onclick="location.href">
    <p>전체보기</p>
  </div>
  <div class="shortdivs">
    <div class="shortdived">
      <div class="shortdivedimg">
        <img src="https://i0.wp.com/getgovtgrants.com/wp-content/uploads/2021/01/Free-Baby-Clothes-and-Gear.webp" alt="">
      </div>
      <div class="shortdivedinfo">
        <div class="infoname">
          <p>여상혁</p>
        </div>
        <div class="shortinfodetail">
          <p>황지수 보육원에 후원</p>
        </div>
      </div>
      <div class="shortdivedetc">
        <div class="shortetcname">
          <p>10,000원</p>
        </div>
        <div class="etcetc">
          <p>(날짜)</p>
        </div>
      </div>
    </div>

    <div class="shortdived">
      <div class="shortdivedimg">
        <img src="https://images.pexels.com/photos/1556706/pexels-photo-1556706.jpeg?cs=srgb&dl=pexels-daniel-reche-1556706.jpg&fm=jpg" alt="">
      </div>
      <div class="shortdivedinfo">
        <div class="infoname">
          <p>김도빈</p>
        </div>
        <div class="shortinfodetail">
          <p>정서림 보육원에 후원</p>
        </div>
      </div>
      <div class="shortdivedetc">
        <div class="shortetcname">
          <p>10,000원</p>
        </div>
        <div class="etcetc">
          <p>(날짜)</p>
        </div>
      </div>
    </div>

    <div class="shortdived">
      <div class="shortdivedimg">
        <img src="https://techblog.woowahan.com/wp-content/uploads/2021/11/omar-lopez-vTknj2OxDVg-unsplash-600x400.jpg" alt="">
      </div>
      <div class="shortdivedinfo">
        <div class="infoname">
          <p>박해준</p>
        </div>
        <div class="shortinfodetail">
          <p>여상혁 보육원에 후원</p>
        </div>
      </div>
      <div class="shortdivedetc">
        <div class="shortetcname">
          <p>10,000원</p>
        </div>
        <div class="etcetc">
          <p>(날짜)</p>
        </div>
      </div>
    </div>

    <div class="shortdived">
      <div class="shortdivedimg">
        <img src="https://cache.magicmaman.com/data/photo/w1000_ci/5w/be-be-endormi.webp" alt="">
      </div>
      <div class="shortdivedinfo">
        <div class="infoname">
          <p>정서림</p>
        </div>
        <div class="shortinfodetail">
          <p>황지수 보육원에 후원</p>
        </div>
      </div>
      <div class="shortdivedetc">
        <div class="shortetcname">
          <p>10,000원</p>
        </div>
        <div class="etcetc">
          <p>(날짜)</p>
        </div>
      </div>
    </div>
  </div>

  <!-- -------------------------------------------------------------------------------- -->

  <div class="slide slide_wrap">
    <div class="slide_item item1">
      <img src="https://i0.wp.com/getgovtgrants.com/wp-content/uploads/2021/01/Free-Baby-Clothes-and-Gear.webp" alt="">
    </div>
    <div class="slide_item item2">
      <img src="https://techblog.woowahan.com/wp-content/uploads/2021/11/omar-lopez-vTknj2OxDVg-unsplash-600x400.jpg" alt="">
    </div>
    <div class="slide_item item3">
      <img src="https://images.pexels.com/photos/1556706/pexels-photo-1556706.jpeg?cs=srgb&dl=pexels-daniel-reche-1556706.jpg&fm=jpg" alt="">
    </div>
    <div class="slide_item item4">
      <img src="https://cdn.pixabay.com/photo/2012/03/01/01/42/baby-20339__340.jpg" alt="">
    </div>
    <div class="slide_item item5">
      <img src="https://cdn.pixabay.com/photo/2016/11/19/14/28/bed-1839564__340.jpg" alt="">
    </div>
    <div class="slide_prev_button slide_button">
      <img src="${pageContext.request.contextPath}/assets/img/main/left.png" alt="">
    </div>
    <div class="slide_next_button slide_button">
      <img src="${pageContext.request.contextPath}/assets/img/main/right.png" alt="">
    </div>
    <ul class="slide_pagination"></ul>
  </div>
  <script src="${pageContext.request.contextPath}/assets/js/main/slide.js"></script>


  <!-- -------------------------------------------------------------------------------- -->

  <div class="subjectname">
    도움이 필요한 보육원
  </div>

  <div class="slickSlide" style="display: flex; align-items: center;">
    <div class="slickBanner">
      <div class="slickBannerImg">
        <img src="https://i0.wp.com/getgovtgrants.com/wp-content/uploads/2021/01/Free-Baby-Clothes-and-Gear.webp" alt="">
      </div>
      <div class="slickBannerInfo">
        박해준 보육원
      </div>
    </div>

    <div class="slickBanner">
      <div class="slickBannerImg">
        <img src="https://cache.magicmaman.com/data/photo/w1000_ci/5w/be-be-endormi.webp" alt="">
      </div>
      <div class="slickBannerInfo">
        여상혁 보육원
      </div>
    </div>
    <div class="slickBanner">
      <div class="slickBannerImg">
        <img src="https://cdn.pixabay.com/photo/2012/03/01/01/42/baby-20339__340.jpg" alt="">
      </div>
      <div class="slickBannerInfo">
        황지수 보육원
      </div>
    </div>
    <div class="slickBanner">
      <div class="slickBannerImg">
        <img src="https://images.pexels.com/photos/1556706/pexels-photo-1556706.jpeg?cs=srgb&dl=pexels-daniel-reche-1556706.jpg&fm=jpg" alt="">
      </div>
      <div class="slickBannerInfo">
        정서림 보육원
      </div>
    </div>

    <div class="slickBanner">
      <div class="slickBannerImg">
        <img src="https://techblog.woowahan.com/wp-content/uploads/2021/11/omar-lopez-vTknj2OxDVg-unsplash-600x400.jpg" alt="">
      </div>
      <div class="slickBannerInfo">
        김의엽 보육원
      </div>
    </div>
  </div>

  <!-- ----------------------------------------------------------------------- -->

<jsp:include page="../fix/footer.jsp" />
</body>

<!-- slick js -->
<script type="text/javascript">
  $('.slickSlide').slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 1
  });
</script>

<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<script>
  // 슬라이드 자동 넘김 
  // var swiper = new Swiper(".swiper-container", {
  //   centeredSlides: true,
  //   autoplay: {
  //     disableOnInteraction: false,
  //   },
  //   navigation: {
  //     nextEl: ".swiper-button-next",
  //     prevEl: ".swiper-button-prev",
  //   },
  // });
</script>

<!-- jQuery cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
  integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main/script.js"></script>

</html>