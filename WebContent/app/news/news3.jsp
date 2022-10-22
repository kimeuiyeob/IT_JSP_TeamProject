<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>news3</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/news/news3.css">
</head>
<body>

	<jsp:include page="../fix/header.jsp" />


	<div
		style="text-align: center; padding-top: 200px; width: 1028px; padding-left: 445px ">
		<img style="width: 800px; height: 500px; padding-bottom: 50px;" src="${news.getNewsImage()}">

		<div>
			<h2
				style="border: solid 2px #eee8e8;text-align: left; border-line: solid; border-bottom: none; border-left: none; border-right: none; padding-top: 60px;padding-bottom: 20px;">
				<c:out value="${news.getNewsTitle()}" />
			</h2>
		</div>

		<div style="padding-bottom : 200px; text-align: left;">
			<h4><c:out value="${news.getNewsContent()}" /></h4>
		</div>
	</div>



	<jsp:include page="../fix/footer.jsp" /></body>
</html>