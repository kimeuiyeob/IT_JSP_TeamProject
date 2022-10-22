<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>카카오 로그인</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/login/login2.css">
</head>

<body>

	<div class="kakao_main1">

		<div class="kakao_main2">

			<div class="kaka-_title"></div>

			<div class="kakao_menu1">
				<div>
					<a href="${pageContext.request.contextPath}/member/index.me"> <img
						src="${pageContext.request.contextPath}/assets/img/login/logo.png"
						style="height: 30px; padding-top: 1 0px;">
					</a>
				</div>
				<div class="kakao_menu2">
					<form
						action="${pageContext.request.contextPath}/login/loginOk.school"
						name="loginForm">
						<div class="phone_number">
							<input type="text" name="nurserySchoolMemberId" id="phone_number"
								placeholder="아이디"
								value="${empty cookie.nurserySchoolMemberId.value ? '': nurserySchoolMemberId}">
						</div>
						<div class="password">
							<input type="password" name="nurserySchoolMemberPassword"
								id="password" placeholder="비밀번호"
								value="${empty cookie.nurserySchoolMemberPassword.value ? '': nurserySchoolMemberPassword}">
						</div>

						<div class="login_status">
							<input type="checkbox" name="autoLogin" id="login_status">
							<h5>로그인 상태 유지</h5>
						</div>
						<div style="color: red; font-size: 10px;" id="loginState" value="">
							<c:if test="${not empty param.login}">
								아이디 또는 비밀번호가 일치하지않습니다
							</c:if>
						</div>
						<div class="buttonWrap">
							<button class="buttonWrap" id="login" type="button">로그인</button>
						</div>
						<div class="or">
							<fieldset
								style="border-left: none; border-right: none; border-bottom: none; border-color: white;">
								<legend
									style="text-align: center; font-size: 12px; color: grey;">또는</legend>
							</fieldset>
						</div>
						<div class="buttonWrap" style="position: relative;">
							<a href="${pageContext.request.contextPath}/login/join.school">
								<button class="buttonWrap" id="join" type="button">회원
									가입하기</button>
							</a>
						</div>

						<div class="signup_menu" style="position: relative">

							<a href="${pageContext.request.contextPath}/find/findId.school">
								<div class="find_id"
									style="position: absolute; font-size: 12px; top: 28px; right: 96px; color: #574e4e; letter-spacing: -1.5px;">
									아이디 찾기</div>
							</a>
							<div class="sorry"
								style="position: absolute; font-size: 12px; top: 27px; right: 79px; color: #928989; letter-spacing: -1.5px;">
								|</div>
							<a href="${pageContext.request.contextPath}/find/findPw.school">
								<div class="find_password"
									style="position: absolute; font-size: 12px; right: 0px; top: 28px; color: #574e4e; letter-spacing: -1.5px;">
									비밀번호 찾기</div>
							</a>
						</div>
				</div>

			</div>

		</div>

		<div class="kakaofoot">
			<div class="service_info">

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
<script>
	let id = "${cookie.nurserySchoolMemberId.value}";
	var contextPath = "${pageContext.request.contextPath}";
	if (id) {
		$('#login_status').prop("checked", true);
	}
</script>
<script
	src="${pageContext.request.contextPath}/assets/js/login/login2ch.js"></script>

</html>