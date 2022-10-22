<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>로그인</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/login/login1.css">

</head>

<body>
<!-- 황지수 작업내용 -->
	<div class="main_login">

		<div class="login_title">

			<div class="login_logo">
				<a href="${pageContext.request.contextPath}/member/index.me"> <img
					src="${pageContext.request.contextPath}/assets/img/login/logo.png"
					style="height: 30px; padding-top: 60px;">
				</a>
			</div>

			<div class="login_menu1">

				<div class="login_menu2">

					<div class="login_hello">

						<h2 style="padding-top: 300px;">행복은 나눠야</h2>
						<br>
						<h2 style="padding-bottom: 13px;">비로소 행복입니다.</h2>

					</div>

					<div class="login_kakao">
						<a href="${pageContext.request.contextPath}/login/login2.indi">
							<input class="button1" type="button" value="개인 로그인"> <span
							class="kakao_logo">  </svg>

						</span> </input>
						</a>
					</div>

					<div class="login_other">
						<a href="${pageContext.request.contextPath}/login/login2.school"> <input
							class="button2" type="button" value="보육원 로그인">
						</a>
					</div>
				</div>


			</div>

		</div>

		<div class="login_picture">
			<img
				src="${pageContext.request.contextPath}/assets/img/login/baby.png"
				style="height: 100%; right: 0; width: 100%;">
		</div>

	</div>

</body>

</html>