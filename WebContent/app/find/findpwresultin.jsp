<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/find/findpwresult.css">
</head>

<body>

	<div class="main">

		<div class="login_logo">
			<a href="${pageContext.request.contextPath}/member/index.me"> <img
				src="${pageContext.request.contextPath}/assets/img/find/logo.png"
				style="height: 40px;">
			</a>
		</div>

		<div class="the-main">

			<div class="box-1">

				<div class="box-2">

					<div class="title">
						<h2 class="tit_main">
							마일스톤계정의<br> 비밀번호를 재설정합니다.
						</h2>
					</div>

					<div class="info">
						<p class="desc_main"
							style="margin-top: -10px; font-weight: 500; color: #615959;">
							재설정할 비밀번호를 입력해 주세요.</p>
					</div>


					<form action="${pageContext.request.contextPath}/find/updatePw.indi"
						name="updateForm">
						<input type=hidden name="individualMemberNumber"
							value="${param.individualMemberNumber}">
						<div class="phone_number" style="padding-top: 20px">
							<input type="password" name="individualMemberPassword"
								id="phone_number" placeholder="비밀번호">
						</div>
					</form>
					<div class="phone_number2">
						<input type="password" name="checkIndividualMemberPassword"
							id="phone_number2" placeholder="비밀번호 확인">
					</div>

					<div class="next" style="padding-top: 80px;">
						<button class="next" id="next" type="button">다음</button>
					</div>
				</div>

			</div>


		</div>
		<div class="kakaofoot">
			<div class="service_info" style="margin-top: -30px";>

				<a href="" class="link_info">이용약관</a> <span class="txt_bar"></span>
				<a href="" class="link_info" style="font-weight: bold;">개인정보
					처리방침</a> <span class="txt_bar"></span> <a href="" class="link_info">운영정책</a>
				<span class="txt_bar"></span> <a href="" class="link_info">고객센터</a>
				<a href="" class="link_info">공지사항</a> <span class="txt_bar"></span>
				<a href="" class="link_info">한국어</a>

			</div>

			<div class="bottom">
				<small class="txt_copyright">Copyright © <a href=""
					class="link_kakao"
					style="text-decoration: none; font-weight: bold; color: grey;";>Milestone
						Corp.</a> All rights reserved.
				</small>
			</div>

		</div>

	</div>

</body>


<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/find/updatePwIn.js"></script>

</html>