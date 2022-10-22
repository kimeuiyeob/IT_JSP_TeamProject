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
<title>보육원 소식2</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/news/news2.css">
<link rel="stylesheet" href="headerFooter.css">


</head>

<body>

	<jsp:include page="../fix/header.jsp" />
	<form action="">
		<div class="maincontent"></div>
		</div>
	</form>


	<div id="title">
		<b>소식</b>
		<h5 style="font-size: 17px; font-weight: 100">마일스톤의 새로운 소식을
			알려드립니다.</h5>
	</div>



	<!--  getNewsNumber()
    	getNewsTitle()
    	getNewsContent()
    	getNewsImage()
    	getNewsDateContent() -->

	<!-- =============================================================================================== -->

	<div>
		<c:forEach var="news" items="${news}">
			<a href='${pageContext.request.contextPath}/news/newsDetailOk.news?newsNumber=${news.getNewsNumber()}'>
				<div class="bigdiv" style="width: 1400px; padding-left: 291px;">
					<div class="small"
						style="float: left; padding-right: 55px; text-align: center; cursor: pointer;">
						<img src="${news.getNewsImage()}"
							style="width: 400px; height: 300px; border-radius: 5px"> <br>
						<div style="color: black;">
						<h3 style="margin-bottom: 5px;">
							<c:out value="${news.getNewsTitle()}" />
						</h3>
						</div>
						<h4 style="text-align: right; padding-bottom: 100px; color: grey;">
							<c:out value="${news.getNewsDateContent()}" />
						</h4>
					</div>
				</div>
			</a>
		</c:forEach>
	</div>

	<!-- =============================================================================================== -->


	<jsp:include page="../fix/footer.jsp" />

</body>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>



</html>