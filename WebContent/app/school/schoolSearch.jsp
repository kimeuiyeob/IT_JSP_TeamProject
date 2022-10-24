<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>보육원 검색</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/school/schoolSearch.css">
</head>
<body style="margin-top: 340px">

	<jsp:include page="../fix/header.jsp" />

	<div class="buttonall" style="padding-top: 225px;">
		<button id="open-modal2" type="button2" style="width: 115.13px;"
			onclick="javascript:btn()">
			<div class="div2">
				보육원 위치<img
					src="${pageContext.request.contextPath}/assets/img/school/역삼각형.png"
					width="7px" height="5.83px">
			</div>
		</button>
	</div>
	<div id="modal-wrapper2">
		<div id="modal2">
			<div class="close-modal2">
				<h4>지역</h4>
				<button id="close-modal2" onclick="">
					<img
						src="${pageContext.request.contextPath}/assets/img/school/닫기버튼.png"
						style="width: 16px; height: 16px;">
				</button>
			</div>
			<ul>
				<li>서울특별시</li>
				<li>부산광역시</li>
				<li>대구광역시</li>
				<li>인천광역시</li>
				<li>광주광역시</li>
				<li>대전광역시</li>
				<li>울산광역시</li>
				<li>세종특별자치시</li>
				<li>경기도</li>
				<li>강원도</li>
				<li>충청북도</li>
				<li>충청남도</li>
				<li>전라북도</li>
				<li>전라남도</li>
				<li>경상북도</li>
				<li>경상남도</li>
				<li>제주특별자치도</li>
			</ul>
		</div>
	</div>

	<c:choose>
		<c:when test="${schools != null and fn:length(schools) > 0}">
			<c:forEach var="nurserySchoolMember" items="${schools}">
				<input type="hidden"
					value="${nurserySchoolMember.getNurserySchoolMemberNumber()}">
				<div class="bigdiv" style="width: 1400px; padding-left: 291px;">
					<div class="small"
						style="float: left; padding-right: 55px; text-align: center">
						<a
							href='${pageContext.request.contextPath}/search/schoolDetailOk.school?nurserySchoolMemberNumber=${nurserySchoolMember.getNurserySchoolMemberNumber()}'>
							<div class="nurseryInfoWrap">
								<img src="${nurserySchoolMember.getNurserySchoolPhoto()}"
									style="width: 400px; height: 300px; border-radius: 5px;">
								<br>
								<h3 style="margin-bottom: 5px;">
									<c:out
										value="${nurserySchoolMember.getNurserySchoolMemberName()}" />
								</h3>
								<span>주소 : <c:out
										value="${nurserySchoolMember.getNurserySchoolAddress()}" /> <c:out
										value="${nurserySchoolMember.getNurserySchoolDetailedAddress()}" />
									<br> 연락처 : <c:out
										value="${nurserySchoolMember.getNurserySchoolMemberPhoneNumber()}" />
								</span>
							</div>
						</a> <br> <br> <br> <br> <br>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div style="left: 50%; position: absolute;">등록된 보육원이 없습니다.</div>
		</c:otherwise>
	</c:choose>
	<div style="font-size: 16px;">
		<div align="center" valign="middle">
			<div class="web-view"
				style="padding-top: 915px; padding-right: 20px;">
				<c:if test="${prev}">
					<a style="text-decoration: none; color: black"
						href="${pageContext.request.contextPath}/search/schoolSearchOk.school?page=${startPage - 1}">&lt;</a>
				</c:if>
				<c:forEach var="i" begin="${startPage}" end="${endPage}">
					<c:choose>
						<c:when test="${not (i eq page)}">
							<a style="text-decoration: none; color: black"
								href="${pageContext.request.contextPath}/search/schoolSearchOk.school?page=${i}">
								<c:out value="${i}" />&nbsp;&nbsp;
							</a>
						</c:when>
						<c:otherwise>
							<c:out value="${i}" />&nbsp;&nbsp;
         </c:otherwise>
					</c:choose>
				</c:forEach>
				<c:if test="${next}">
					<a style="text-decoration: none; color: black"
						href="${pageContext.request.contextPath}/search/schoolSearchOk.school?page=${endPage + 1}">&gt;</a>
				</c:if>
			</div>
		</div>
	</div>
	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/school/mileStoneSearch.js"></script>
<script>
   function btn() {
      alert('페이지 준비중입니다.');
   }
</script>
</html>