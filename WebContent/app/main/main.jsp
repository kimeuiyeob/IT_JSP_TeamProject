<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/css/swiper.css"> -->
<link rel="stylesheet"
	href="http://cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<link rel="stylesheet" type="text/css"
	href=" http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script type="text/javascript"
	src="http://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main/slide.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main/mainSlide.css">
<title>Document</title>
</head>

<body>
	<jsp:include page="../fix/header.jsp" />

	<!-- ----------------------------뒷 배경 슬라이드(완료)--------------------------- -->

	<div id="bigback" class="main_swiper">
		<div id="back" class="swiper-container">
			<div class="swiper-wrapper">


				<c:forEach var="banners" items="${banners}">
					<div class="swiper-slide">
						<img src="${banners.getBannersImage()}" alt="">
					</div>
				</c:forEach>


			</div>
			<div class="main_nav"></div>
			<div class="swiper-pagination"></div>
		</div>
	</div>


	<!-- ----------------------------맨 앞 메인 슬라이드(완료)--------------------------- -->



	<div class="sub_swiper">
		<div id="maininfo" class="swiper-container">
			<div class="swiper-wrapper">


				<c:forEach var="banners" items="${banners}">
					<div class="swiper-slide">
						<img src="${banners.getBannersImage()}" alt="">
					</div>
				</c:forEach>


			</div>
			<div class="sub_nav"></div>
			<div class="swiper-pagination"></div>
		</div>
	</div>



	<!-- ----------------------------써드 슬라이드(완료)-------------------------- -->


	<div class="third_swiper">
		<div id="main" class="swiper-container">
			<div class="swiper-wrapper">


				<c:forEach var="banners" items="${banners}">


					<div class="swiper-slide active">
						<p class="sub_swiper_Bigtext">
							<!--메인 슬라이드 타이틀  -->
							<c:out value="${banners.getBannersTitle()}" />
						</p>
						<p class="sub_swiper_smalltext">
							<!--메인 슬라이드 부가 설명  -->
							<c:out value="${banners.getBannersContent()}" />
						</p>
					</div>


				</c:forEach>


			</div>
			<div class="sub_nav">
				<div class="swiper-button-prev"
					style="color: white; font-size: 20px;"></div>
				<div class="swiper-button-next"
					style="color: white; font-size: 20px;"></div>
				<div class="page-no">
					<span class="current-slide-no"></span> <span class="slash"
						style="opacity: 0.35;">|</span> <span class="total-slide-no"
						style="opacity: 0.85;"></span>
				</div>
			</div>
			<div class="line"></div>
		</div>
	</div>


	<!-- ---------------------------------------------보육원 목록---------------------------------------------- -->


	<div class="subjectname1">보육원 목록</div>
	<div class="showall"
		onclick="location.href = '${pageContext.request.contextPath}/search/schoolSearchOk.school'">
		<p>전체보기</p>
	</div>

	<div class="longdivs">

		<c:forEach var="schoolSearch" items="${schoolSearch}">

			<div class="longdived" style="padding-right: 6px;">

				<div class="longdivedimg" style="background-color: #f2f2e4;">
					<img src="${schoolSearch.getNurserySchoolPhoto()}"/>
				</div>

				<div class="longdivedinfo" style="margin-bottom: -30px">
					<div class="infoname">
						<h3 style="margin-top: 5px;">
							<c:out value="${schoolSearch.getNurserySchoolMemberName()}" />
						</h3>
					</div>
					<div class="infodetail">
						<p>
						<h4>
							<c:out
								value="${schoolSearch.getNurserySchoolIntroductoryArticle()}" />
						</h4>
						</p>
					</div>
					<div class="infolike"></div>
				</div>
				<div class="longdivedetc">
					<div class="etchighlight">
						<c:out value="${schoolSearch.getNurserySchoolAddress()}" />
					</div>
					<div class="etcname">
						<c:out value="${schoolSearch.getNurserySchoolDetailedAddress()}" />
					</div>
				</div>
			</div>

		</c:forEach>

	</div>

	<!-- ------------------------------기부현황 select 8개(완료) --------------------------------------------- -->

	<div class="subjectname2">기부 현황</div>
	<div class="showall"
		onclick="location.href = '${pageContext.request.contextPath}/donation/donationstatusOk.don'">
		<p>전체보기</p>
	</div>

	<div style="padding-left: 298px;">
		<c:forEach var="member" items="${member}">
			<div style="float: left;">
				<div style="padding-right: 33px">
					<img style="height: 250px; width: 300px; border-radius: 5px;"
						src="${member.getNurserySchoolPhoto()}" />
				</div>
				<div>
					<h4 style="display: inline-block;">
						"
						<c:out value="${member.getNickName()}" />
						"님께서
					</h4>

					<h4
						style="margin-top: -15px; margin-bottom: -15px; display: inline-block;">
						&nbsp"
						<c:out value="${member.getNurserySchoolMemberName()}" />
						"에
					</h4>
				</div>
				<div style="padding-bottom: 100px;">
					<h4 style="margin-top: -15px; margin-bottom: 5px;">
						"
						<fmt:formatNumber value="${member.getDonationAmount()}"
							pattern="#,###" />
						"원을 기부하였습니다.
					</h4 style="margin-top: -10px">
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
					<c:out value="${member.getDonationDate()}" />
				</div>
			</div>
		</c:forEach>
	</div>

	<!-- ************************************작은슬라이드 select 완료 ************************************* -->

	<div class="slide slide_wrap">
		<div class="slide_item item1">
			<img style="height: 300px; width: 400px"
				src="https://image.utoimage.com/preview/cp872722/2021/10/202110002995_500.jpg"
				alt="">
		</div>
		<div class="slide_item item2">
			<img style="height: 300px; width: 400px"
				src="https://img.freepik.com/free-vector/illustration-with-happy-children-day-wish_23-2148325012.jpg"
				alt="">
		</div>
		<div class="slide_item item3">
			<img style="height: 300px; width: 400px"
				src="https://image.utoimage.com/preview/cp869740/2021/05/202105015137_500.jpg"
				alt="">
		</div>
		<div class="slide_item item4 }">
			<img style="height: 300px; width: 400px"
				src="https://image.utoimage.com/preview/cp872722/2021/10/202110002995_500.jpg"
				alt="">
		</div>
		<div class="slide_item item5">
			<img style="height: 300px; width: 400px"
				src="https://img.freepik.com/free-vector/illustration-with-happy-children-day-wish_23-2148325012.jpg"
				alt="">
		</div>
		<div class="slide_prev_button slide_button">
			<img
				src="${pageContext.request.contextPath}/assets/img/main/left.png"
				alt="">
		</div>
		<div class="slide_next_button slide_button">
			<img
				src="${pageContext.request.contextPath}/assets/img/main/right.png"
				alt="">
		</div>
		<ul class="slide_pagination"></ul>
	</div>
	<script
		src="${pageContext.request.contextPath}/assets/js/main/slide.js"></script>


	<!-- --------------------------------도움이 필요한 보육원(완료)---------------------------------------- -->

	<div class="subjectname">도움이 필요한 보육원</div>

	<div class="showall"
		onclick="location.href = '${pageContext.request.contextPath}/search/schoolSearchOk.school'">
		<p>전체보기</p>
	</div>
	<div style="padding-left: 298px;">
		<c:forEach var="nurserySM" items="${nurserySM}">
			<div style="float: left;">
				<div style="padding-right: 33px; padding-bottom: 20px;">
					<img
						style="height: 250px; width: 300px; border-radius: 5px; cursor: pointer;"
						src="${nurserySM.getNurserySchoolPhoto()}"
						onclick="location.href='${pageContext.request.contextPath}/search/schoolDetailOk.school?nurserySchoolMemberNumber=${nurserySM.getNurserySchoolMemberNumber()}'" />
				</div>
				<div>

					<h4
						style="margin-top: -15px; margin-bottom: -15px; display: inline-block;">
						"
						<c:out value="${nurserySM.getNurserySchoolMemberName()}" />
						"&nbsp나눔을 함께해요.
					</h4>
				</div>
				<div style="padding-bottom: 200px";></div>
			</div>
		</c:forEach>
	</div>

	<!-- ----------------------------------------------------------------------- -->

	<jsp:include page="../fix/footer.jsp" />

</body>


<script src="https://cdn.jsdelivr.net/npm/swiper/swiper-bundle.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"
	integrity="sha512-bLT0Qm9VnAYZDflyKcBaQ2gg0hSYNQrJ8RilYldYQ1FxQYoCLtUjuuRuZo+fjqhx/qtq/1itJ0C2ejDxltZVFg=="
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/5.4.5/js/swiper.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/main/script.js"></script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>

</html>