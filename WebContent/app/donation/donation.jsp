<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=, initial-scale=1.0">
<link rel="stylesheet" href="donation.css">
<link rel="stylesheet" href="headerFooter.css">
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/donation/donation.css" />
<title>기부하기 상세페이지</title>
</head>

<body>

   <jsp:include page="../fix/header.jsp" />

   <div id="myPage" style="padding-top: 150px">

      <main>

         <div id="totalMain">
            <div id="main_content">
               <div id="mainContent_flex">
                  <div id="left_box" class="box_padding">
                     <c:choose>
                        <c:when test="${empty nurseryVO.getNurserySchoolPhoto()}">
                           <img
                              src="${pageContext.request.contextPath}/assets/img/donation/baby1.jpg"
                              style="width: 100%">
                        </c:when>
                        <c:otherwise>
                           <img src="${nurseryVO.getNurserySchoolPhoto()}"
                              style="width: 800px; height: 500px;">
                        </c:otherwise>
                     </c:choose>

                  </div>
                  <div id="right_box" style="margin-top: 6%;">
                     <div id="right_box_main" class="box_padding">
                        <div id="right_box_text">
                           <h2 style="margin-top: 10px;">${nurseryVO.getNurserySchoolMemberName()}</h2>
                           <div style="margin-bottom: 5px;"></div>
                           <div id="main_right_box">
                              <div id="main_right_box_1">
                                 <div class="infoBox">
                                    <div id="second_inner1">
                                       <div id="inner1_1">주소</div>
                                    </div>
                                    <div id="second_inner2">
                                       <div id="inner2_price">${nurseryVO.getNurserySchoolAddress()}</div>
                                    </div>
                                 </div>
                                 <div style="height: 10px"></div>
                                 <div id="main_right_box_1">
                                    <div class="infoBox">
                                       <div id="second_inner1">
                                          <div id="inner1_1">상세주소</div>
                                       </div>
                                       <div id="second_inner2">
                                          <div id="inner2_price">${nurseryVO.getNurserySchoolDetailedAddress()}</div>
                                       </div>
                                    </div>
                                 </div>
                                 <div style="height: 10px"></div>
                                 <div id="main_right_box_1">
                                    <div class="infoBox">
                                       <div id="second_inner1">
                                          <div id="inner1_1">전화번호</div>
                                       </div>
                                       <div id="second_inner2">
                                          <div id="inner2_price">${nurseryVO.getNurserySchoolMemberPhoneNumber()}</div>
                                       </div>
                                    </div>
                                 </div>
                                 <div style="margin-top: 12px;"></div>
                                 <div class="main_right_box_2">
                                    <div class="flex_box">
                                       <div class="inner_flex_box">
                                          <div class="box_image">
                                             <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                height="18" fill="#1a1a1a" viewBox="0 0 24 24">
                                                <path fill-rule="evenodd"
                                                   d="M13.139 10l.844-5.066a2 2 0 00-1.279-2.205l-.419-.155-2.604 7.205V20h8.8l1.467-8.836A1 1 0 0018.961 10h-5.822zm-5.458-.571L11.089 0l2.308.853a4 4 0 012.559 4.41L15.5 8h3.461a3 3 0 012.96 3.491l-1.573 9.477C20.25 21.566 19.779 22 19.23 22H7.681V9.429z"></path>
                                                <path
                                                   d="M3.135 9.429C2.503 9.429 2 9.989 2 10.68v10.069C2 21.427 2.508 22 3.135 22h2.273V9.429H3.135z"></path></svg>
                                          </div>
                                          <div class="box_text">기부랭킹 반영</div>
                                       </div>
                                    </div>
                                    <div class="flex_box">
                                       <div class="inner_flex_box">
                                          <div class="box_image">
                                             <svg xmlns="http://www.w3.org/2000/svg" width="18"
                                                height="18" fill="none" viewBox="0 0 24 24">
                                                <path fill-rule="evenodd"
                                                   d="M21 6h-3.337c.216-.455.337-.963.337-1.5A3.5 3.5 0 0014.5 1 3.49 3.49 0 0012 2.051 3.49 3.49 0 009.5 1 3.5 3.5 0 006 4.5c0 .537.121 1.045.337 1.5H3a1 1 0 00-1 1v4a1 1 0 001 1v8a1 1 0 001 1h16a1 1 0 001-1v-8a1 1 0 001-1V7a1 1 0 00-1-1zM4 8v2h7V8H4zm9 0v2h7V8h-7zm-2 4H5v7h6v-7zm2 7v-7h6v7h-6zm2-13.085a1.5 1.5 0 01-.5.085H13V4.5c0-.175.03-.344.085-.5A1.5 1.5 0 1115 5.915zM11 4.5V6H9.5a1.5 1.5 0 111.415-2c.055.156.085.325.085.5z"
                                                   fill="#1a1a1a"></path></svg>
                                          </div>
                                          <div class="box_text">기부금 & 물품</div>
                                       </div>
                                    </div>
                                 </div>
                              </div>

							<c:if test="${sessionScope.individualMemberNumber != null or sessionScope.nurserySchoolMemberNumber != null}">
                              <a class="box_4_button"
                                 href="${pageContext.request.contextPath}/donation/donationMoney.don?nurserySchoolMemberNumber=${nurseryVO.nurserySchoolMemberNumber}">
                                 기부하기 </a> <a class="box_4_button"
                                 href="${pageContext.request.contextPath}/donation/donationProduct.don?nurserySchoolMemberNumber=${nurseryVO.nurserySchoolMemberNumber}">
                                 물품 기부하기 </a>
							</c:if>
							
                           </div>
                        </div>
                        <div id="right_box_sub"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
   </div>
   </main>
   </div>
   <jsp:include page="../fix/footer.jsp" />

</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript">
   var contextPath = "${pageContext.request.contextPath}";
   var nurserySchoolMemberNumber = "${nurserySchoolMember.getNurserySchoolMemberNumber()}";
   var sessionNurserySchoolMemberNumber = "${nurserySchoolMemberNumber}";
</script>
<script type="text/javascript"
   src="${pageContext.request.contextPath}/assets/js/donation/donation.js"></script>

<script>
	

</script>


</html>