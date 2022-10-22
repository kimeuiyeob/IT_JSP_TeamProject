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
	<jsp:include page="../fix/header.jsp" />


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