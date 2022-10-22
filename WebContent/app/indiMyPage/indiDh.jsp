<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/donationHistory.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/myPage.css">
<title>개인 : 기부내역</title>
</head>
<body>
   <jsp:include page="../fix/header.jsp" />
   <div id="myPage">

      <!-- 마이페이지 패스워드 입력 -->
      <!-- 헤더쪽 -->
      <div id="title">
         <div>
            마이페이지
            <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
               fill="none" viewBox="0 0 24 24">
                        <path fill-rule="evenodd"
                  d="M8.5 18.5l6-6.5-6-6.5L10 4l7.5 8-7.5 8-1.5-1.5z" fill="#a2a2a2"></path>
                    </svg>
         </div>
         <div id="account">milestone1001@gmail.com</div>
      </div>


      <!-- 메뉴 -->
      <main>
         <div id="myPageMenu" style="padding-bottom: 200px;">
            <div id="menus">메뉴</div>
            <a>
               <div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/indiMyPage/indiModify.jsp'">개인정보
                  수정</div>
            </a> <a>
               <div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/indiMyPage/indiDh.jsp'">기부내역</div>
            </a> <a>
               <div class="menu"
                  onclick="location.href = '${pageContext.request.contextPath}/app/indiMyPage/indiCalendar.jsp'">나의
                  활동일정</div>
            </a>
         </div>


         <!-- 내용  section : 여러개의 내용이들어갈 것 -->
         <section id="myPageSection">
            <div id="adBanner">
               <div id="adBox">
                  <div id="texts">
                     <p class="adText1">
                        연장권 구매하고 싶은데<br>포인트가 부족하다면?
                     </p>
                     <p class="adText2">101프라임 가입하고 무제한 수강하세요!</p>
                  </div>
                  <div id="adImgBox">
                     <img id="adImg"
                        src="https://cdn.class101.net/images/ff8e2a46-501c-4f1c-a7be-76e658928397/640xauto.webp">
                  </div>
               </div>
            </div>
            <div id="donationHistory">
               <div class="dhTitle"
                  style="font-size: 18px; font-weight: bolder; color: rgb(26, 26, 26); line-height: 24px; letter-spacing: -0.45px;">기부내역</div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">강남
                        보육원</div>
                  </div>
                  <div id="rightButton">
                     1,000,000
                     <div id="won">원</div>
                  </div>
               </div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">서초
                        보육원</div>
                  </div>
                  <div id="rightButton">
                     1,000,000
                     <div id="won">원</div>
                  </div>
               </div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">잠실
                        보육원</div>
                  </div>
                  <div id="rightButton">든킨도나스</div>
               </div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">강남
                        보육원</div>
                  </div>
                  <div id="rightButton">교촌치킨</div>
               </div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">강남
                        보육원</div>
                  </div>
                  <div id="rightButton">베스킨라빈스</div>
               </div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">강남
                        보육원</div>
                  </div>
                  <div id="rightButton">
                     3,000,000
                     <div id="won">원</div>
                  </div>
               </div>
               <div class="dhList">
                  <img
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp">
                  <div id="left">
                     <div>2022.10.01</div>
                     <div
                        style="color: rgb(253, 126, 20); font-size: 13px; font-weight: 600;">강남
                        보육원</div>
                  </div>
                  <div id="rightButton">
                     500,000
                     <div id="won">원</div>
                  </div>
               </div>
            </div>


         </section>
      </main>
   </div>
   <jsp:include page="../fix/footer.jsp" />
</body>
</html>