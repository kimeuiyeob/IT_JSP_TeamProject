<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/notice/notice.css">
<link rel="stylesheet" href="test2.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/fix/main.css">

<link
	href="https://cdn.class101.net/fonts/pretendard-1.3.0/pretendard-jp-dynamic-subset.css"
	rel="stylesheet">
<link
	href="https://cdn.class101.net/fonts/pretendard-1.3.0/pretendard-dynamic-subset.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/donation/donationStatus.css" />
<title>NOTICE</title>
</head>

<body style="margin-top: 0px">
	<jsp:include page="../fix/header.jsp" />




	<div id="main">
		<div id="student">
			<img
				src="${pageContext.request.contextPath}/assets/img/notice/student.png">
		</div>
		<div>
			<img id="noticelogo"
				src="${pageContext.request.contextPath}/assets/img/notice/noticelogo.png">
		</div>

		<div>
			<h1>Now!</h1>
		</div>

		<!--
		getNoticeNumber()
		getNoticeClassification()
		getNoticeTitle()
		getNoticeDateCreated()
		getNoticeContent() 
		-->

		<c:forEach var="notice" items="${notice}">
			<div id="notice" style="padding-bottom:10px;">
				<div style="padding-right: 15px;">
					<div id=textboard>
						<h3><c:out value="${notice.getNoticeTitle()}" /></h3>
						<br>
						<c:out value="${notice.getNoticeContent()}" />
						<br>
						<c:out value="${notice.getNoticeDateCreated()}" />
					</div>
				</div>
				<div>
					<img id="littlelogo"
						src="${pageContext.request.contextPath}/assets/img/notice/notice_image.png">
					</sdiv>
				</div>
			</div>
		</c:forEach>



		<div>
			<img id="foooter"
				src="${pageContext.request.contextPath}/assets/img/notice/foooter.png">
		</div>
</body>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/notice/notice.js" /></script>

</html>
