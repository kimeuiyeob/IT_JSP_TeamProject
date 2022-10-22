<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판</title>

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/modify.css" />
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/profile.css" />
</head>

<body style="margin: 0px;">

   <div id="modifySchool">
      <header>
         <div id="headerBox">
            <div class="logo">
            <img src="${pageContext.request.contextPath}/assets/img/schoolMyPage/logo.png">
            </div>

            <div class="search_box">
               <input id="searchInput" type="text" placeholder="정을 옮기는 이정표입니다">
               <img src="${pageContext.request.contextPath}/assets/img/schoolMyPage/search.png">
               
            </div>
            <div class="user">
               <span style="cursor: pointer;"> <svg
                     xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                     class="css-uxrfz2">
                        <path
                        d="M21.141 3.91A6.262 6.262 0 0 0 16.654 2c-1.621 0-3.252.635-4.488 1.91-.06.06-.11.125-.165.19-.055-.06-.105-.13-.165-.19A6.263 6.263 0 0 0 7.35 2c-1.621 0-3.252.635-4.488 1.91-2.481 2.545-2.481 6.67 0 9.21l8.935 8.79c.06.06.135.09.21.09.075 0 .15-.03.21-.09l8.935-8.79c2.467-2.54 2.467-6.665-.01-9.21Zm-1.78 7.35-7.37 7.245-7.369-7.245c-1.47-1.525-1.466-3.99.015-5.51A3.73 3.73 0 0 1 7.33 4.605c1.005 0 2.19.505 2.996 1.25.73.68 1.066 1.235 1.361 1.655.03.045.125.215.3.215s.27-.175.305-.22c.296-.425.63-.975 1.356-1.655.806-.75 1.991-1.25 2.997-1.25a3.74 3.74 0 0 1 2.696 1.145c1.486 1.525 1.491 3.99.02 5.514Z"
                        class="css-17ivn46"></path>
                    </svg>
               </span>
               <div style="width: 20px;"></div>
               <div id="userWrap">
                  <picture class="userIcon">
                  <source type="image/webp"
                     srcset="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/640xauto.webp 640w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/750xauto.webp 750w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/828xauto.webp 828w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1080xauto.webp 1080w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1200xauto.webp 1200w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp 1920w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/2048xauto.webp 2048w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/3840xauto.webp 3840w">
                  <img alt="profile"
                     srcset="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/640xauto 640w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/750xauto 750w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/828xauto 828w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1080xauto 1080w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1200xauto 1200w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto 1920w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/2048xauto 2048w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/3840xauto 3840w"
                     src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27"
                     loading="lazy" class="css-1u3hmek"> </picture>
                  <span id="bottomPointer"
                     style="position: absolute; left: 92%; top: 13px"> <svg
                        xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                        style="padding-left: 16px;">
                          <path
                           d="M2.075 8.825 3.49 7.41c.1-.1.255-.1.355 0L12 15.565l8.16-8.16c.1-.1.255-.1.355 0L21.93 8.82c.1.1.1.255 0 .355l-9.75 9.75c-.1.1-.255.1-.355 0L2.075 9.18c-.1-.1-.1-.26 0-.355Z"
                           class="css-17ivn46"></path>
                      </svg>
                  </span>
               </div>
            </div>

            <div id="miniBox">
               <div id="miniBox2">
                  <div id="miniBox3">
                     <div id="miniProfile">
                        <img
                           src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp"
                           alt="">
                        <div style="margin: 10px;">
                           <div>닉네임</div>
                           <div id="miniProfileRight">
                              <a href="${pageContext.request.contextPath}/app/schoolMyPage/scDh.jsp" style="color: orange;">마이페이지 <svg
                                    xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                    class="css-jdqsvn" style="width: 10px; height: 10px;">
                                          <path
                                       d="M8.825 21.93 7.41 20.515c-.1-.1-.1-.255 0-.355l8.155-8.155-8.16-8.16c-.1-.1-.1-.255 0-.355L8.82 2.075c.1-.1.255-.1.355 0l9.75 9.75c.1.1.1.255 0 .355L9.18 21.93c-.1.1-.26.1-.355 0Z"
                                       class="css-bchp3n"></path>
                                      </svg>
                              </a>
                           </div>
                        </div>
                     </div>
                     <div class="css-1g5174"></div>
                     <div style="text-align: center; cursor: pointer;" onclick = "location.href = '${pageContext.request.contextPath}/app/main/main.jsp'">로그아웃</div>
                  </div>
               </div>
            </div>
         </div>
      </header>






      <div
         style="margin-left: 23px; font-size: 15px; font-weight: bold; color: rgb(26, 26, 26); line-height: 34px; padding-top: 10px; margin-bottom: 25px">
         <h2 style="letter-spacing: -2.5px;">보육원 프로필</h2>

      </div>



      <div class="sc-e489b3e-3 gEAbaC"
         style="margin-top: -10px; margin-bottom: -20px;">
         <div class="sc-e489b3e-7 dkxgGx"
            style="padding-right: 20px; margin-left: 22px; padding-bottom: 20px;">
            <div size="28" class="sc-1602cde7-0 bvsxdu">
               <img sizes=" 100vw" src="${pageContext.request.contextPath}/assets/img/schoolMyPage/smalluser.png"
                  style="height: 30px; padding-right: 5px">
            </div>
            <div md="Body2" class="sc-8ee9b8f2-0 gBPcnX sc-e489b3e-8 eaqXQT"
               style="font-size: 14px; letter-spacing: -1px; padding-right: 394px;">보육원
               닉네임</div>

         </div>
      </div>

      <div style="padding-left: 21px">
         <div>
            <img src="${pageContext.request.contextPath}/assets/img/schoolMyPage/123.png" style="height: 315px; width: 605px">
         </div>
      </div>
      <div
         style="margin: 20px 20px 0 20px; margin-right: 14px; padding: 16px;">
         <div class="schoolInfo" style="font-weight: bolder; font-size: 19px;">강남
            보육원</div>
         <div class="schoolInfo">주소 : 서울시 강남구 강남로 100길 10</div>
         <div class="schoolInfo">전화번호 : 02-1234-1234</div>
      </div>

      <div class="sc-e489b3e-9 iLCbOX"
         style="margin: 15px; margin-right: 14px;">
         <div class="sc-1f17b81e-1 fGEGPt">
            <p class="sc-1f17b81e-0 dHJCuF sc-e489b3e-10 iTqZES  "
               name="content" autocomplete="off">
               아이들에게 행복한 추억만 선물하는 강남 보육원입니다.<br>

            </p>
         </div>
      </div>
   </div>

   <div id="withdrawal">
      <div id="content2" style="margin-top: -20px;">
         <div id="first">
            <button class="saveSubmit" id="save" type="submit" icon-position="0"
               color="default" fill="true" onclick = "location.href = '${pageContext.request.contextPath}/app/schoolMyPage/scModify.jsp'">
               <span>다시 수정하기</span>
            </button>
         </div>
      </div>
   </div>


   <footer class="foot">
      <div style="padding: 24px;">
         <img src="${pageContext.request.contextPath}/assets/img/schoolMyPage/logo.png">
         <h5>Milestone 프로젝트는 보육원의 모든 아이들이 사랑받고 아름답게 성장하길 기원합니다.</h5>
         <p>Milestome Korea</p>
         <p>Instagram · Youtube · Facebook · Naverpost</p>
         <p>Naverblog · Playstore · Appstore</p>
         <p>이용약관 · 개인정보 처리방침 · 이용약관 · 사업자 정보 확인 · 제휴/협력 · 문의 단체/기업 교육 문의</p>
         <p>동석한 아카데미 Team 4 | 대표 김의엽 | 서울 강남구 테헤란로 146 3층(역삼동) | T4@.inc |
            전화번호: 1234-1234 |</p>
      </div>
   </footer>
</body>



<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/MyPage/scmodify2.js"></script>



</html>