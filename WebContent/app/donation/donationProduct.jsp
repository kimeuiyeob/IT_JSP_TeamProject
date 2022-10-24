<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>물품기부 결제창</title>
<link rel="stylesheet" href="payment.css">
<link rel="stylesheet" href="modify.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/donation/payment.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPage/modify.css" />
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

<body style="background-color: #f8f8f9;">
	<div id="modifySchool">
		<header>
			<div id="headerBox">
				<div class="logo">
					<a href="${pageContext.request.contextPath}/member/index.me">
						<div class="logo">
							<img
								src="${pageContext.request.contextPath}/assets/img/donation/logo.png">
						</div>
					</a>
				</div>

				<div class="search_box">
					<input id="searchInput" type="text" placeholder="정을 옮기는 이정표입니다"><img
						src="${pageContext.request.contextPath}/assets/img/donation/search.png">
				</div>
				<div class="user">

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
				<div class="marginBottom16" style="margin-bottom: 0">
					<div class="contents-title">물품 기부하기</div>
					<div style="display: flex;">
						<div style="margin: 20px 0 15px 25px"></div>
					</div>
					<div style="margin: 0 0 35px 10px">
						마일스톤은 물품기부는 방문 수거로 진행되고 있습니다. <br>물품기부를 신청하시면 추후 연락을 통해 방문
						예정입니다.
					</div>
				</div>
				<div class="items-background-no">
					<div class="items-img-pencel"></div>
				</div>
			</div>




			<div class="marginBottom16">
				<form
					action="${pageContext.request.contextPath}/donation/donationProductOk.don"
					name="donationForm">
					<input type="hidden" name="nurserySchoolMemberNumber"
						value="${nurserySchoolMemberNumber}">
					<div>
						<div class="contents-sub-title">방문날짜</div>
						<div class="contents-margin-top" style="margin-bottom: 12px">
							<div class="flex">
								<div class="contents-input-box"
									style="display: flex; width: 100%">
									<input type="date" name="donationDate" style="width: 95%">
									<div class="contents-sub-title"></div>
								</div>
								<div class="width8"></div>
							</div>
						</div>
						<div class="contents-sub-title">기부물품 종류</div>
						<div class="contents-margin-top" style="margin-bottom: 12px;">
							<div class="flex" style="width: 30%">
								<div class="contents-input-box">
									<div class="selectbox" style="width: 330%;">
										<input type = "hidden" name = "donationProducts" value = "">
										<label for="donationProducts">종류</label> <select
											id="donationProducts">
											<option value="생필품" class="test">생필품</option>
											<option value="음식" class="test">음식</option>
											<option value="가구" class="test">가구</option>
											<option value="기타" class="test">기타</option>
										</select>
									</div>
								</div>
							</div>
						</div>
						<div>
							<div class="contents-sub-title">물품 상세</div>
							<div class="contents-margin-top" style="margin-bottom: 12px">
								<div class="flex">
									<div class="contents-input-box">
										<input type="text" name="donationDetailProducts"
											style="width: 117%" placeholder="예) 옷, 가방 노트북, ...">
									</div>
								</div>
							</div>
						</div>

						<div class="contents-sub-title">수량</div>
						<div class="contents-margin-top" style="margin-bottom: 12px">
							<div class="flex">
								<div class="contents-input-box"
									style="display: flex; width: 100%;">
									<input type="text" name="quantity" style="width: 95%">
									<div class="contents-sub-title"
										style="display: flex; align-items: center;">&nbsp;개</div>
								</div>
								<div class="width8"></div>
							</div>
						</div>
						<div class="contents-sub-title">Box수량</div>
						<div class="contents-margin-top" style="margin-bottom: 12px">
							<div class="flex">
								<div class="contents-input-box"
									style="display: flex; width: 100%">
									<input type="text" name="boxQuantity" style="width: 95%">
									<div class="contents-sub-title"
										style="display: flex; align-items: center; width: 34px;">&nbsp;박스</div>
								</div>
								<div class="width8"></div>
							</div>
						</div>
					</div>
				</form>
				<div class="white-space"></div>


				<div style="height: 8px;"></div>
				<div class="flex">
					<div class="marginBottom16">
						<div class="contents-title">수거 신청</div>
					</div>
				</div>
				<button class="submit-button flex-center"
					style="font-size: 14px; font-weight: 700; cursor: pointer; margin-top: 17px; background-color: rgb(255, 242, 233);">물품기부
					신청하기</button>
			</div>
		</div>
		</form>
	</div>

	<div style="height: 8px;"></div>
	<footer class="foot">
		<div style="padding: 24px; width: 600px; height: 200px;">
			<img
				src="${pageContext.request.contextPath}/assets/img/donation/logo.png"
				style="width: 158px;">
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
<script
	src="${pageContext.request.contextPath}/assets/js/donation/donationProduct.js"></script>
</html>