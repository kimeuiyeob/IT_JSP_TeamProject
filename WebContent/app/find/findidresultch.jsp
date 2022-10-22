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
    <title>이게 아이디입니다</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/find/findidresult.css">
</head>

<body>

    <div class="main">

        <div class="login_logo">
            <a href="${pageContext.request.contextPath}/member/index.me">
                <img src="${pageContext.request.contextPath}/assets/img/find/logo.png" style="height:40px;">
            </a>
        </div>

        <div class="the-main">

            <div class="box-1">

                <div class="box-2">

                    <div class="title">
                        <h2 class="tit_main">
                            회원님의 아이디입니다.
                        </h2>
                    </div>

                    <div class="info">
                        <p class="desc_main" style="margin-top: -10px;font-weight: 500; color: #615959;">
                            아이디를 확인하시고 <br>
                            로그인 버튼을 눌러주세요.
                        </p>
                    </div>

                    <div style="padding-top : 20px;">
                        <div style="display: flex; justify-content: center; height: 81px; align-items: center; font-size: 18px;">${param.nurserySchoolMemberId}</div>
                    </div>


                    <div class="next" style="padding-top: 10px;">
                        <a href="${pageContext.request.contextPath}/login/login2.school">
                            <button class="next" id="next" type="button">로그인</button>
                        </a>
                    </div>
                </div>

            </div>


        </div>
        <div class="kakaofoot">
            <div class="service_info" style="margin-top: -30px" ;>

                <a href="" class="link_info">이용약관</a>
                <span class="txt_bar"></span>
                <a href="" class="link_info" style="font-weight: bold;">개인정보
                    처리방침</a>
                <span class="txt_bar"></span>
                <a href="" class="link_info">운영정책</a>
                <span class="txt_bar"></span>
                <a href="" class="link_info">고객센터</a>
                <a href="" class="link_info">공지사항</a>
                <span class="txt_bar"></span>
                <a href="" class="link_info">한국어</a>

            </div>

            <div class="bottom">
                <small class="txt_copyright">Copyright © <a href="" class="link_kakao"
                        style="text-decoration: none; font-weight: bold;color: grey; " ;>Milestone
                        Corp.</a>
                    All rights reserved.
                </small>
            </div>

        </div>

    </div>

</body>

</html>