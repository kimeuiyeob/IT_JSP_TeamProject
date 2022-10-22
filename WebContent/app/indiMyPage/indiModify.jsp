<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/modify.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/myPage/withdrawModal.css">

<style>
@font-face {
   font-family: 'Pretendard-Regular';
   src:
      url('https://cdn.jsdelivr.net/gh/Project-Noonnu/noonfonts_2107@1.1/Pretendard-Regular.woff')
      format('woff');
   font-weight: 400;
   font-style: normal;
}

body {
   width: 100%;
   height: 100%;
   font-family: 'Pretendard-Regular';
   margin-left: 0px;
}
</style>
</head>

<body>
   <div id="modifySchool">
      <header>
         <div id="headerBox">

            <div class="logo">
               <img
                  src="${pageContext.request.contextPath}/assets/img/indiMyPage/logo.png"
                  alt="">
            </div>

            <div class="search_box">
               <input id="searchInput" type="text" placeholder="정을 옮기는 이정표입니다">
               <img
                  src="${pageContext.request.contextPath}/assets/img/indiMyPage/search.png">
            </div>
            <div class="user">
               <span> <svg xmlns="http://www.w3.org/2000/svg"
                     viewBox="0 0 24 24" class="css-uxrfz2">
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
                     style="position: absolute; left: 92%; top: 13px; padding-left: 16px;">
                     <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
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
                              <a href="myPage1.html " style="color: orange;">마이페이지 <svg
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
                     <div style="text-align: center;" cursor:
                        pointer;" onclick="location.href = '${pageContext.request.contextPath}/app/main/main.jsp'">로그아웃</div>
                  </div>
               </div>
            </div>


         </div>
      </header>



      <div id="content">

         <div id="category">
            <div id="bigHistory">마이페이지</div>
            <div id="slash"></div>
            <div id="smallHistory">개인 정보 수정</div>
         </div>

         <div id="profilePicture">

            <label for="attach">
               <div id="attach2">
                  <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                     fill="none" viewBox="0 0 24 24">
              <path fill-rule="evenodd"
                        d="M4 21a1 1 0 01-1-1v-4a1 1 0 01.293-.707l11-11a3.83 3.83 0 015.414 0 3.83 3.83 0 010 5.414l-11 11A1 1 0 018 21H4zm1-2h2.586l.707-.707-2.586-2.586-.707.707V19z"
                        fill="#FFF"></path>
            </svg>
               </div>
            </label> <input type="file" id="attach" style='display: none;'>

         </div>


         <form action="">
            <div class="content">
               <div class="inputContent">이름</div>
               <input type="text">
            </div>
            <div class="content">
               <div class="inputContent">닉네임</div>
               <input type="text">
            </div>
            <!-- 주소 입력 -->
            <div>
               <div class="inputContent">우편번호</div>
            </div>
            <p style="margin: 0;"></p>
            <div>
               <div class="flex">
                  <input type="text" name="memberZipcode" id="memberZipcode"
                     placeholder="우편번호"> <input type="button" onclick="find()"
                     value="우편번호 찾기"
                     style="height: 48px; cursor: pointer; font-weight: 500px; letter-spacing: -1px;"><br>
               </div>
            </div>
            <br>
            <div style="margin-top: -8px";>
               <div class="inputContent">주소</div>
            </div>
            <input type="text" name="memberAddress" id="memberAddress"
               placeholder="주소">
            <div>
               <br>
            </div>
            <input type="text" name="memberAddressDetail"
               id="memberAddressDetail" placeholder="상세주소">
            <div class="col-12" style="margin-top: 13px;"></div>

            <!-- 주소입력 끝 -->
            <div class="content">
               <div class="inputContent pw">휴대폰 번호</div>
               <input id="userInput" type="text"> <input id="button"
                  type="submit" value="확인">
            </div>
            <div class="content">
               <div class="inputContent pw">비밀번호</div>
               <input type="password" placeholder="비밀번호를 입력하세요">
            </div>
            <div class="content">
               <div class="inputContent">비밀번호 확인</div>
               <input type="password" placeholder="비밀번호를 다시 입력하세요">
            </div>
            <button id="modifySubmit" type="submit" icon-position="0"
               color="orange" fill="true">
               <span>수정하기</span>
            </button>
      </div>
      </form>
   </div>

   <div style="height: 8px;"></div>

   <div id="withdrawal">
      <div id="content2">
         <div id="first">
            <button class="withdrawalSubmit" type="submit" icon-position="0"
               color="default" fill="true">
               <span>회원탈퇴</span>
            </button>
         </div>
      </div>
   </div>

   <div style="height: 1px"></div>







   <footer class="foot">
      <div style="padding: 24px;">
         <img
            src="${pageContext.request.contextPath}/assets/img/indiMyPage/logo.png"
            alt="">
         <h5>Milestone 프로젝트는 보육원의 모든 아이들이 사랑받고 아름답게 성장하길 기원합니다.</h5>
         <p>Milestome Korea</p>
         <p>Instagram · Youtube · Facebook · Naverpost</p>
         <p>Naverblog · Playstore · Appstore</p>
         <p>이용약관 · 개인정보 처리방침 · 이용약관 · 사업자 정보 확인 · 제휴/협력 · 문의 단체/기업 교육 문의</p>
         <p>동석한 아카데미 Team 4 | 대표 김의엽 | 서울 강남구 테헤란로 146 3층(역삼동) | T4@.inc |
            전화번호: 1234-1234 |</p>
      </div>
   </footer>



   <!-- 모달 -->
   <div id="modalBody">
      <div class="modal">
         <div class="modal_body" style="display: hidden;">
            <div class="exit" style="cursor: pointer;">
               <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                  fill="none" viewBox="0 0 24 24">
            <path
                     d="M18.5 4L12 10.5 5.5 4 4 5.5l6.5 6.5L4 18.5 5.5 20l6.5-6.5 6.5 6.5 1.5-1.5-6.5-6.5L20 5.5 18.5 4z"
                     fill="#cacaca"></path>
          </svg>
            </div>


            <h1>정말 마일스톤을 떠나실 건가요?</h1>
            <div class="warn">회원탈퇴 신청 전 아래 사항을 확인 부탁드립니다 😊</div>
            <div class="text">1. 신청일부터 5일 후 회원탈퇴가 처리되며, 회원탈퇴 처리 전까지 고객센터에서
               그 신청을 철회할 수 있습니다.</div>
            <div class="text">2. 회원탈퇴 후 기존 계정으로 회원가입을 신청할 수 없습니다.</div>
            <div class="text">3. 회원탈퇴 시 회사가 보관하고 있는 회원 데이터는 모두 영구적으로
               삭제됩니다. 다만, 관련 법령에 따라 회사가 보관할 의무가 있는 정보 또는 자료는 일정기간 동안 보관됩니다.</div>
            <div class="text">4. 회원탈퇴 후 마일스톤에 게시한 게시물을 편집하거나 삭제할 수 없습니다.
               필요한 경우 신청 전 게시물을 편집하거나 삭제해주세요.</div>

            <h4>떠나시기 전에</h4>
            <div class="warn">이유를 알려주세요</div>

            <textarea class="inputReason"
               placeholder="탈퇴하시려는 이유를 알려주세요. 소중한 의견을 반영하여 더 나은 서비스를 만들도록 노력하겠습니다"
               name="reason" autocomplete="off"
               style="border-radius: 3px; margin-top: 4px;"></textarea>

            <div class="wrap">
               <div>혹시 도와드릴 수 있는 문제일까요?</div>
               <div id="ask" style="cursor: pointer;">
                  <a href="${pageContext.request.contextPath}/app/faq/faq.jsp"
                     style="color: orange;">마일스톤에게 문의하기</a>
               </div>
            </div>

            <div id="ask2">계정을 삭제하시겠어요?</div>
            <button id="continue" type="button" icon-position="0"
               class="sc-5c574fd7-0 eofURt sc-838cc99e-0 bKhhgw sc-880e7d12-7 kQlpRV "
               color="default" fill="true">
               <span class="sc-5c574fd7-1 idXGEA">마일스톤 계속 사용하기</span>
            </button>

            <button id="delete" type="submit" icon-position="0"
               class="sc-5c574fd7-0 eofURt sc-838cc99e-0 gDQGPF sc-880e7d12-7 kQlpRV "
               color="orange" fill="true"
               onclick="location.href = '${pageContext.request.contextPath}/app/main/main.jsp'">
               <span class="sc-5c574fd7-1 idXGEA">계정 삭제하기</span>
            </button>

         </div>
      </div>
   </div>

   </div>





</body>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
   src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
   src="${pageContext.request.contextPath}/assets/js/MyPage/indimodify.js"></script>
</html>