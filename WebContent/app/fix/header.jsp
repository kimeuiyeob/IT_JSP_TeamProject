<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible"	 content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <link rel="stylesheet" type="text/css" href=" http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/main.css">
  <title>헤더푸터</title>
</head>


<body>
  <header class="head">
    <div class="biggest">
      <div class="bigger">
        <a href="${pageContext.request.contextPath}/member/index.me" class="logo">
          <div class="logoimg">
            <img src="${pageContext.request.contextPath}/assets/img/fix/logo.png" alt="">
          </div>
        </a>
        <div class="upList">
          <a href="${pageContext.request.contextPath}/news/news.news">소식</a>
          <a href="${pageContext.request.contextPath}/introduce/introduce.intro">소개</a>
        </div>
        <form action="${pageContext.request.contextPath}/search/schoolSearchOk.school">
          <div class="search_box">
	        <form action="${pageContext.request.contextPath}/search/schoolSearchOk.school">
              <input type="text" id="search" placeholder="정을 옮기는 이정표입니다">
              <button type="submit" id="search_btn">
                <img src="${pageContext.request.contextPath}/assets/img/fix/search.png">
              </button>
            </form>
          </div>
        </form>
	        <c:choose>
		        <c:when test="${empty sessionScope.nurserySchoolMemberNumber && empty sessionScope.individualMemberNumber}">
			        <div class="user">
		    	      <a href="${pageContext.request.contextPath}/member/login.me"  id="login"> 로그인</a>
		        	</div>
		        </c:when>
		        <c:otherwise>
			          <c:choose>
			          	<c:when test="${not empty sessionScope.nurserySchoolMemberNumber}">
					        <div class="user" style="min-width: 145px; margin-left: 32%;">
					          <a href="${pageContext.request.contextPath}/member/index.me?logout=true"  id="logout" style="margin-right: 18px"> 로그아웃</a>
			          		<a href="${pageContext.request.contextPath}/app/404/404.jsp"  id="schoolMyPage">보육원 마이페이지</a>
				          </div>
			          	</c:when>
			          	<c:otherwise>
					      <div class="user" style="min-width: 145px; margin-left: 33%;">
					        <a href="${pageContext.request.contextPath}/member/index.me?logout=true"  id="logout" style="margin-right: 18px"> 로그아웃</a>
				          	<a href="${pageContext.request.contextPath}/app/404/404.jsp"  id="indiMyPage">개인 마이페이지</a>
				          </div>
			          	</c:otherwise>
			          </c:choose>
		        </c:otherwise>
	        </c:choose>
      </div>
    </div>

    <div class="navbig">
      <div class="nav">
        <nav>
          <div class="dot"></div>
          <div class="list">
            <a href="${pageContext.request.contextPath}/search/schoolSearchOk.school" class="lists">기부하기</a>
            <a href="${pageContext.request.contextPath}/donation/donationstatusOk.don" class="lists">기부현황</a>
            <a href="${pageContext.request.contextPath}/donation/rankingOk.indi" class="lists">기부랭킹</a>
            <a href="${pageContext.request.contextPath}/board/schoolBoard.schoolcom" class="lists">보육원 커뮤니티</a>
            <a href="${pageContext.request.contextPath}/board/indiBoard.indicom" class="lists">개인 커뮤니티</a>
            <a href="${pageContext.request.contextPath}/faq/faq.faq" class="lists">FAQ</a>
            <a href="${pageContext.request.contextPath}/member/noticeListOk.notice" class="lists">공지사항</a>
          </div>
        </nav>
      </div>
    </div>
  </header>
  
</body>
<script type="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<!-- slick js -->
<script>
  $('.slickSlide').slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 1
  });

	  var link = "${pageContext.request.contextPath}/search/schoolSearchOk.school"; 
  ${"#search"}.click(function(){
	  if(e.keycode ==13){
		  return;
		 /*  location.href=link; */
	  }
  })
  
  ${"#search_btn"}.click(function(){
	  location.href=link;
  })
  
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
<script src="script.js"></script>
</html>