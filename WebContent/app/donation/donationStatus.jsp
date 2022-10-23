<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.class101.net/fonts/pretendard-1.3.0/pretendard-jp-dynamic-subset.css"
	rel="stylesheet">
<link
	href="https://cdn.class101.net/fonts/pretendard-1.3.0/pretendard-dynamic-subset.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/donation/donationStatus.css" />
<title>기부 현황 페이지</title>
</head>

<body style="margin-top: 0px">
	<jsp:include page="../fix/header.jsp" />

	<div class="maincontent">
		<div class="mainset">
			<h2 class="main">기부 현황</h2>
		</div>

		<%--
		<c:out value="${donation.getNurserySchoolPhoto()}" />
		<c:out value="${donation.getNurserySchoolMemberName()}" />
		<c:out value="${donation.getNickName()}" />
		<c:out value="${donation.getDonationAmount()}" />
		<c:out value="${donation.getDonationProducts()}" />
		
		게시판 forEach 참고!!
		 --%>

		<!-- =============================================================================================== -->

		<c:forEach var="donation" items="${donation}">

			<div class="bigdiv" style="width: 1400px; padding-left: 291px;">
				<div class="small"
					style="float: left; padding-right: 55px; text-align: center">
					<img src="${donation.getNurserySchoolPhoto()}"
						style="width: 400px; height: 300px; border-radius: 5px"> <br>
					<h3 style="margin-bottom: 5px;">
						<c:out value="${donation.getNurserySchoolMemberName()}" />
					</h3>
					<span>"<c:out value="${donation.getNickName()}" />"님께서 " <c:out
							value="${donation.getNurserySchoolMemberName()}" />"에 <br>

						<c:choose>
							<c:when test="${empty donation.getDonationProducts()}">
								<fmt:formatNumber value="${donation.getDonationAmount()}" pattern="#,###" />원"을 전달하셨습니다.
							</c:when>
							<c:otherwise>
								"<c:out value="${donation.getDonationProducts()}" />"을 전달하셨습니다.
							</c:otherwise>
						</c:choose> 

					</span> <br> <br> <br> <br> <br>
				</div>
			</div>

		</c:forEach>

		<!-- =============================================================================================== -->

	</div>

	<jsp:include page="../fix/footer.jsp" />
</body>

<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/donation/donateStatus.js" /></script>


</html>