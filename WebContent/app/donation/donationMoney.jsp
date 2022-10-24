<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>기부금 결제창</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPage/modify.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/donation/payment.css" />
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

<body style="background-color: #f8f8f9">
	<div id="modifySchool">
		<header>
			<div id="headerBox">
				<a href="${pageContext.request.contextPath}/member/index.me">
					<div class="logo">
						<img
							src="${pageContext.request.contextPath}/assets/img/donation/logo.png">
					</div>
				</a>

				<div class="search_box">
					<input id="searchInput" type="text" placeholder="정을 옮기는 이정표입니다"><img
						src="${pageContext.request.contextPath}/assets/img/donation/search.png">
				</div>
				<div class="user">
					<div style="width: 20px;"></div>
					<div id="userWrap">
						<picture class="userIcon2">
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
                                    <div>${individualMemberId}</div>
                                    <div id="miniProfileRight"><a href="myPage1.html"><a href="${pageContext.request.contextPath}/app/404/404.jsp"  style="text-decoration: none; color:rgb(255 114 42)">마이페이지</a>
											<svg
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
							<a class="logout"
								href="${pageContext.request.contextPath}/member/index.me?logout=true"
								style="text-align: center;">로그아웃</a>
						</div>
					</div>
				</div>
			</div>
		</header>





		<div class="all-body"></div>
		<div class="body-header-padding">
			<div class="body-header-flex">
				<h3 class="body-header-title" style="margin-right: 66%;">기부하기</h3>
				<div class="body-header-subTitle">
					<div class="protect-img"></div>
					<div class="protect-img-title">암호화 중</div>
				</div>
			</div>
		</div>
		<div class="white-space" style="margin: 0;"></div>

		<div id="content">

			<div class="flex">
				<div class="marginBottom16">
					<div class="contents-title">결제 금액</div>
				</div>
			</div>
			<div class="marginBottom16">

				<div class="contents-margin-top">
					<div class="marginBottom8">
						<div class="flex between">
							<div class="flex flex-row">
								<div class="contents-title"
									style="font-size: 18px; margin-right: 280px; color: rgb(255, 114, 42)">최종
									가격</div>
								<div class="contents-title body-header-subTitle"
									style="font-size: 15px; font-weight: 700;">
									<form
										action="${pageContext.request.contextPath}/donation/donationMoneyOk.don"
										name="donationForm">
										<input type="hidden" name="nurserySchoolMemberNumber"
											value="${nurserySchoolMemberNumber}"> <input
											type="text" name="donationAmount"
											style="justify-content: right; text-align: right; width:85%;"><span
											style="padding-left: 10px; font-size: 16px;">원</span>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="white-space"></div>
			<div class="flex">
				<div class="marginBottom16">
					<div class="contents-title">결제 방식</div>
				</div>
			</div>
			<div class="marginBottom16"></div>
			<div class="marginBottom16">
				<div class="marginTop8">
					<div class="flex between">
						<button class="border-box">
							<div>
								<img src="	https://class101.net/images/payment/CreditCard.png"
									style="width: 16px; height: 16px; margin-right: 3px;">카드결제
							</div>
						</button>
						<!-- 						<button class="border-box"> -->
						<!-- 							<div> -->
						<!-- 								<img -->
						<!-- 									src="https://class101.net/images/payment/DepositPassbook.png" -->
						<!-- 									style="width: 16px; height: 16px; margin-right: 3px;">무통장입금 -->
						<!-- 							</div> -->
						<!-- 						</button> -->
					</div>
				</div>
			</div>
			<button class="submit-button flex-center"
				style="font-size: 14px; font-weight: 700; cursor: pointer; margin-top: 17px; background-color: rgb(255, 242, 233);">결제하기</button>
		</div>

	</div>

	<div style="height: 8px;"></div>
	<footer class="foot" style="padding-top: 60px">
		<div style="padding: 24px; width: 600px; height: 200px;">
			<img
				src="${pageContext.request.contextPath}/assets/img/donation/logo.png">
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
<script type="text/javascript">
	var contextPath = "${pageContext.request.contextPath}";
	var individualMemberNumber = $
	{
		sessionScope.individualMemberNumber
	};
	var individualMemberName = '${individualVO.getIndividualMemberName()}';
	var individualMemberPhoneNumber = '${individualVO.getIndividualMemberPhoneNumber()}';
	var individualMemberEmail = '${individualVO.getIndividualMemberEmail()}';
	var individualMemberAddress = '${individualVO.getIndividualMemberAddress()}';
	var zipCode = '${individualVO.getZipCode()}';
	var nurserySchoolMemberName = '${nurseryVO.getNurserySchoolMemberName()}'
	var nurserySchoolMemberNumber = '${nurseryVO.getNurserySchoolMemberNumber()}'
</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/donation/donationMoney.js"></script>
<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
</html>