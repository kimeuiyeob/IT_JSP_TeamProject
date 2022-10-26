<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/join/signup.css">
</head>
<body style="margin-top: 0px">
	<jsp:include page="../fix/header.jsp" />

	<!-- ------------------------------------------------------보인들 코드 여기에다가 넣어주세요 ------------------------------------------------------------------- -->
	<div class="main_login">


		<div class="login_title">

			<div class="login_menu1">

				<div class="login_menu2">

					<div class="login_hello" style="padding-top: 150px;">

						<h1 style="font-family: 'Pretendard JP'; letter-spacing: -1.5px;">보육원
							회원가입</h1>

					</div>

					<form method="post"
						action="${pageContext.request.contextPath}/login/joinOk.school"
						name="joinForm">
						<div style="padding-top: 20px;">
							<h5>보육원명</h5>
						</div>

						<div style="padding-bottom: 15px">
							<input class="inputWrap" name="nurserySchoolMemberName"
								type="text" value="" placeholder="보육원명">
							<div style="color: red; font-size: 10px;"
								id="nurserySchoolMemberNamediv" value=""></div>
						</div>

						<!--       <div>
                        <h5>주소</h5>
                    </div>
                    <div style="padding-bottom : 15px">
                        <input id="nickname" type="text" value="" placeholder="주소">
                        <div style="color :red;font-size: 10px;" id="nicknamediv" value=""></div>
                    </div> -->

						<div>
							<h5>전화번호</h5>
						</div>
						<div style="padding-bottom: 15px">
							<input class="inputWrap" name="nurserySchoolMemberPhoneNumber"
								type="text" value="" placeholder="01012345678">
							<div style="color: red; font-size: 10px;"
								id="nurserySchoolMemberPhoneNumberdiv" value=""></div>
						</div>

						<div>
							<h5>아이디</h5>
						</div>
						<div style="padding-bottom: 15px">
							<input class="inputWrap" name="nurserySchoolMemberId" type="text"
								value="" placeholder="아이디">
							<div style="color: red; font-size: 10px;"
								id="nurserySchoolMemberIddiv" value=""></div>
						</div>

						<!-- ================================================= -->
						<div>
							<h5>우편번호</h5>
						</div>
						<p style="margin: 0;"></p>
						<div>
							<input type="text" name="zipCode" class="inputWrap"
								placeholder="우편번호" style="width: 374px;"> <input
								type="button" onclick="find()" value="우편번호 찾기"
								style="height: 48px; border: none; cursor: pointer; font-weight: 500px; letter-spacing: -1px; border-radius: 3px;"><br>
						</div>
						<br>
						<div style="margin-top: -8px";>
							<h5>주소</h5>
						</div>
						<input type="text" name="nurserySchoolAddress" class="inputWrap"
							placeholder="주소">
						<div style="color: red; font-size: 10px;"
							id="nurserySchoolAddressdiv" value=""></div>
						<div>
							<br>
						</div>
						<input type="text" name="nurserySchoolDetailedAddress"
							class="inputWrap" placeholder="상세주소">
						<div style="color: red; font-size: 10px;"
							id="nurserySchoolDetailedAddressdiv" value=""></div>
						<div class="col-12" style="margin-top: 13px;">
							<!--     <ul class="actions" style="display:flex; justify-content:center;">
                            <li><input type="button" value="완료" class="primary" onclick="send()" /></li>
                            <li><input type="button" value="취소" class="primary" onclick="" /></li>
                        </ul> -->
						</div>


						<!-- ================================================= -->

						<div>
							<h5>비밀번호</h5>
						</div>
						<div style="padding-bottom: 15px;">
							<input class="inputWrap" name="nurserySchoolMemberPassword"
								type="password" value="" placeholder="********">
							<div style="color: red; font-size: 10px;"
								id="nurserySchoolMemberPassworddiv" value=""></div>

							<div class="sc-efc24149-2 sc-efc24149-3 iePiQE jPIqKw">
								<svg xmlns="http://www.w3.org/2000/svg" width="14" height="14"
									fill="none" viewBox="0 0 24 24"
									style="padding-right: 3px; padding-left: 3px">
                                <path fill-rule="evenodd"
										d="M23 12c0 6.075-4.925 11-11 11S1 18.075 1 12 5.925 1 12 1s11 4.925 11 11zm-12 5v-6h2v6h-2zm0-8V7h2v2h-2z"
										fill="#666666"></path>
                            </svg>
								영문 대문자/영문 소문자/숫자/특수문자 중 2가지 이상 조합, 8자~32자
							</div>

							<div style="padding-top: 15px;">
								<h5>비밀번호 확인</h5>
							</div style="padding-bottom : 15px">
							<input id="pass2" name="nurserySchoolMemberPassword2"
								type="password" value="" placeholder="********">
							<div style="color: red; font-size: 10px;"
								id="nurserySchoolMemberPassworddiv2" value=""></div>
						</div>

						<div>
							<h5>이메일</h5>
						</div>
						<div style="padding-bottom: 25px">
							<div class="flex">
								<input class="inputWrap" id="email"
									name="nurserySchoolMemberEmail" type="text" value=""
									placeholder="example@naver.com"> <input type="button"
									id="email_input" value="인증번호 받기" onclick="sendEmail()">
							</div>
							<br> <input type="text" name="checkNurserySchoolMemberEmail"
								class="inputWrap" placeholder="인증번호 입력">
							<div style="color: red; font-size: 10px;"
								id="nurserySchoolMemberEmaildiv" value=""></div>
							<div style="color: red; font-size: 10px;"
								id="checkNurserySchoolMemberEmaildiv" value=""></div>
						</div>




						<div class="login">
							<input id="submitButton" class="button" type="button"
								value="동의하고 회원가입"> <span class="login"> <svg
									xmlns="" width="24" height="24" viewBox="0 0 24 24">
                            </svg>
							</span> </input>
						</div>
					</form>
					<div class="sc-82cc1ed1-1 gvCUgI"
						style="padding-top: 5px; padding-bottom: 10px">
						<a href="" target="_blank" rel="noreferrer"
							class="sc-82cc1ed1-2 eXiRyx" style="text-decoration: none;">이용약관</a>,
						<a href="" target="_blank" rel="noreferrer"
							class="sc-82cc1ed1-2 eXiRyx" style="text-decoration: none;">개인정보
							수집 및 이용</a>, <a href="" target="_blank" rel="noreferrer"
							class="sc-82cc1ed1-2 eXiRyx" style="text-decoration: none;">개인정보
							제공</a> 내용을 확인하였고 동의합니다.
					</div>

					<div style="padding-top: 6px; padding-bottom: 6px">
						<div style="border: 0.5px solid rgb(207, 205, 205); width: 468px;">
						</div>


					</div>

					<div class="button1" onclick="kakaoLogin()">
						<div class="kakaoButton">
							<p class="kakaoButton_loginDescription__P1TjV">카카오로 3초만에 시작하기</p>
							<span class="kakao_logo"> <svg xmlns="" width="24"
									height="24" viewBox="0 0 24 24">
					                                <path fill="#1B1C1D"
										fill-rule="evenodd"
										d="M12 4c-4.971 0-9 3.185-9 7.115 0 2.558 1.707 4.8 4.27 6.054l-.78 2.94c-.122.489.179.483.377.351l3.463-2.353a11.39 11.39 0 001.67.123c4.971 0 9-3.185 9-7.115S16.971 4 12 4">
					                                </path>
					                            </svg>
							</span>
						</div>
					</div>


					<div class="login_naver" style="position: relative;">
						<div id="naver_id_login" style="display: none"></div>
						<label class="button2" type="button" value="네이버로 시작하기"> <img
							src="${pageContext.request.contextPath}/assets/img/join/naver.png"
							style="width: 21px; height: 21px; position: absolute; left: 140px; top: 13px">
							네이버로 시작하기
						</label>
					</div>

					<div style="position: relative;">
						<div id="google_id_login"
							style="position: absolute; left: 33px; opacity: 0"></div>
						<div class="login_google" style="position: absolute; z-index: -1;">
							<input class="button4" type="button" value="구글로 시작하기"> <img
								src="${pageContext.request.contextPath}/assets/img/join/google.png"
								style="width: 21px; height: 21px; position: absolute; top: 13px; left: 148px;">
						</div>
					</div>
				</div>

			</div>

		</div>

	</div>
	<jsp:include page="../fix/footer.jsp" />
</body>
<script>
	var contextPath = "${pageContext.request.contextPath}";
</script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/join/signupSc.js"></script>
<!-- 아임포트 api -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/@emailjs/browser@3/dist/email.min.js"></script>
<script type="text/javascript">
	(function() {
		// https://dashboard.emailjs.com/admin/account
		emailjs.init('oawZ8AtEkmgRUcRhW');
	})();
</script>
<!-- 네이버 로그인 -->
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js">
	
</script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	var naver_id_login = new naver_id_login("nEJp3lFxDmVWFYwi2f0z",
			"http://localhost:8081/milestone/login/join.school");
	var state = naver_id_login.getUniqState();
	naver_id_login.setButton("white", 2, 40);
	naver_id_login.setDomain("http://localhost:8081");
	naver_id_login.setState(state);
	naver_id_login.init_naver_id_login();
</script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js">
	
</script>
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8">
	
</script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<script type="text/javascript">
	var naver_id_login = new naver_id_login("nEJp3lFxDmVWFYwi2f0z",
			"http://localhost:8081/milestone/login/join.school");
	// 	var naver_id_login = new window.naver_id_login("_VjlH3jAE2LhRMAaID_g",
	// 			"http://localhost:8081/milestone/login/join.indi");
	// 접근 토큰 값 출력
	// 	alert(naver_id_login.oauthParams.access_token);
	// 네이버 사용자 프로필 조회
	naver_id_login.get_naver_userprofile("naverSignInCallback()");
	// 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
	function naverSignInCallback() {
		let name = naver_id_login.getProfileData('name');
		let email = naver_id_login.getProfileData('email');
		let nickname = naver_id_login.getProfileData('nickname');
		let mobile = naver_id_login.getProfileData('mobile');

		$('input[name = "nurserySchoolMemberEmail"]').val(email);
	}
</script>

<!-- 구글 로그인 -->
<script src="https://accounts.google.com/gsi/client" async defer></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	function handleCredentialResponse(response) {
		const responsePayload = parseJwt(response.credential);

		let name = responsePayload.name;
		let email = responsePayload.email

		$('input[name = "nurserySchoolMemberEmail"]').val(email);
	}

	function parseJwt(token) {
		var base64Url = token.split('.')[1];
		var base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
		var jsonPayload = decodeURIComponent(atob(base64).split('').map(
				function(c) {
					return '%'
							+ ('00' + c.charCodeAt(0).toString(16)).slice(-2);
				}).join(''));

		return JSON.parse(jsonPayload);
	};

	window.onload = function() {
		google.accounts.id
				.initialize({
					client_id : "120612497162-lhsmsgpenrnho6d6enf6ojseql19k2sf.apps.googleusercontent.com",
					callback : handleCredentialResponse
				});
		google.accounts.id.renderButton(document
				.getElementById("google_id_login"), {
			theme : "outline",
			size : "large",
			width : 700,
		} // 로고 커스터마이징
		);
		google.accounts.id.prompt(); // 원탭 화면으로 출력
	}
</script>
<!-- 카카오 로그인 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
	Kakao.init('27196e37a11da8d522daa82f6b41a2e2')
</script>

</html>