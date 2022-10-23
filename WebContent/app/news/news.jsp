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
    <title>소식</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/news/news.css">
    <link rel="stylesheet" href="headerFooter.css">

</head>
<body>
	<%-- <jsp:include page="../fix/header.jsp" /> --%>
	
	<!-- ===================================================================== -->
	
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
					        <div class="user" style="min-width: 203px; margin-left: 31%;">
					          <a href="${pageContext.request.contextPath}/member/index.me?logout=true"  id="logout" style="margin-right: 18px"> 로그아웃</a>
			          		<a href="${pageContext.request.contextPath}/app/404/404.jsp"  id="schoolMyPage">보육원 마이페이지</a>
				          </div>
			          	</c:when>
			          	<c:otherwise>
					      <div class="user" style="min-width:190px; margin-left: 31%;">
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
	
	<!-- ===================================================================== -->


    <div>

        <div class="title" style="text-align: center; padding-top : 200px; ">
            <h1 class="">
                소식 이야기
            </h1>
        </div>

        <div class="title" style="text-align: center; padding-bottom: 30px; letter-spacing: -1px;">
            <h3 class="" style="color: rgb(58, 58, 58);">
                나눔을 통해 만들어가는 아름다운 이야기를 전합니다.
            </h3>
        </div>

    </div>

    <a href="${pageContext.request.contextPath}/news/newsListOk.news">
        <div class="picture">
            <figure class="snip0015">
                <img src="${pageContext.request.contextPath}/assets/img/news/happy.jpg" alt="sample38" style="width : 600px; height : 500px" />
                <figcaption style="justify-content: center;">
                    <h2 style="margin-top: 20px;">나누는 기쁨, 희망과 행복</h2>
                    <p style="margin-top: 60px; font-size: 20px;">마일스톤은</p>
                    <p style="margin-top: 10px;">정을 옯기는 이정표입니다.</p>
                    <p style="margin-top: 10px;">도움의 손길이 닿지않는</p>
                    <p style="margin-top: 10px;">아이들이 없도록</p>
                    <p style="margin-top: 10px;">세심한 배려와 돌봄을</p>
                    <p style="margin-top: 10px;">제공 하겠습니다.</p>
                </figcaption>
            </figure>
        </a>
        
        <a href="${pageContext.request.contextPath}/news/newsListOk.news">
            <figure class="snip0015">
                <img src="${pageContext.request.contextPath}/assets/img/news/happy2.jpg" alt="sample38" style="width : 600px; height : 500px" />
                <figcaption>
                    <h2 style="margin-top: 30px;">마일스톤은, </h2>
                    <p style="margin-top: 70px;">나눔참여 인프라 확대와</p>
                    <p style="margin-top: 10px;">사회문제 해결 및 사회성과 제시강화,</p>
                    <p style="margin-top: 10px;">건강한 거버넌스 구축,</p>
                    <p style="margin-top: 10px;">변화를 주도하는 조직으로</p>
                    <p style="margin-top: 10px;">운영하겠습니다.</p>
                </figcaption>
            </figure>
        </a>    
    </div>

<jsp:include page="../fix/footer.jsp" />
</body>
</html>