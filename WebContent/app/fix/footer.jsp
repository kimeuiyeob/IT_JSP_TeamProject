<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
  <link rel="stylesheet" type="text/css" href=" http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
  <script type="text/javascript" src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fix/main.css">
  <title>헤더푸터</title>
</head>

<body>
  <footer class="foot">
    <div class="footerbiggest">
      <div class="footerbigger">
        <div class="footerup">
          <div class="footerup_left">
            <div class="footerup_left01">
              <img src="${pageContext.request.contextPath}/assets/img/fix/logo.png" alt="">
            </div>
            <div class="footerup_left02">
              <p>Milestone 프로젝트는 보육원의 모든 아이들이 </p>
              <p>사랑받고 아름답게 성장하길 기원합니다.</p>
            </div>
          </div>
          <div class="footerup_right">
            <div class="footerup_right">
              <a href="javascript:void(0)">보육원</a>
              <a href="javascript:void(0)">기부하기</a>
              <a href="javascript:void(0)">관리자</a>
            </div>
            <div class="footerup_right_down">
              <a href="${pageContext.request.contextPath}/search/schoolSearchOk.school">목록</a>
            </div>
            <div class="footerup_right_down2">
              <a href="${pageContext.request.contextPath}/donation/donationstatusOk.don">현황</a>
              <a href="${pageContext.request.contextPath}/donation/rankingOk.indi">랭킹</a>
            </div>
            
            <div class="controll_enter" onclick="send()">
              관리자 모드
            </div>
          </div>
        </div>
      </div>


      <div class="footerbigger">
        <div class="footerdown">
          <div class="footerdown_left">
            <p>Milestome Korea</p>
            <p>Instagram · Youtube · Facebook · Naverpost</p>
            <p>Naverblog · Playstore · Appstore</p>
          </div>

          <div class="footerdown_right">
            <div class="footerdown_right01">
              <p>
                이용약관 · 개인정보 처리방침 · 이용약관 · 사업자 정보 확인 · 제휴/협력 · 문의 단체/기업 교육 문의
              </p>
            </div>

            <div class="footerdown_right02">
              <p>
                동석한 아카데미 Team 4 | 대표 김의엽 | 서울 강남구 테헤란로 146 3층(역삼동) | T4@.inc | 전화번호: 1234-1234 |
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </footer>

</body>

<!-- slick js -->
<script type="text/javascript">
  $('.slickSlide').slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 1
  });
  
  
  function send(){
	  if(${sessionScope.individualMemberNumber==1}){
		  location.href = '${pageContext.request.contextPath}/management/managerDonateHistory.don'
	  }else{
		  alert("관리자 계정으로 로그인하세요.");
	  }
  }
  
  
</script>

<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<script>
</script>

<!-- jQuery cdn -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
  integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
  crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.js"></script>
<script src="script.js"></script>

</html>