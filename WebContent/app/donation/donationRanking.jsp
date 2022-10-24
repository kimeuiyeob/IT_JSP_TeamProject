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
<title>기부 랭킹 사이트</title>
<link rel="canonical" href="https://kr.noxinfluencer.com/">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/donation/donationRanking.css" />
</head>
<body style="margin-top: 0px">

	<jsp:include page="../fix/header.jsp" />
	<div class="main">
		<h2>기부 랭킹</h2>
		<div class="content">
			<div class="rank-header"></div>
			<div id="totalRanking">
				<div class="wrap">
					<div class="box">
						<div class="leftsidemenu" style="width: 128px; height: 32px;"></div>
						<div class="information"
							style="width: 262px; height: 32px; padding-left: 14px;">닉네임</div>
						<div class="category"
							style="width: 260px; height: 32px; margin-left: -5px;">기부
							정보</div>
						<div class="subscribe" style="width: 127px; height: 32px;">기부
							횟수</div>
						<div class="count"
							style="width: 283px; height: 32px; padding-left: 30px;">최근
							기부 날짜</div>
					</div>
					<c:forEach var="ranking" items="${ranking}">
						<c:set var="i" value="${i+1}" />
						<div class="box2">
							<div class="leftside" style="width: 128px; height: 36px;">

								<%-- <img style="width: 40px"; src="${pageContext.request.contextPath}/assets/img/donation/medall.png"> --%>
								${i}

							</div>
							<div class="name" style="width: 262px; height: 36px;">
								<c:out value="${ranking.getNickName()}" />
							</div>
							<div class="category2" style="width: 260px; height: 36px;">
								<span class="circle"> <%-- <fmt:formatNumber value="${ranking.getDonationAmount()}" pattern="#,###"/> --%>
									<c:choose>
										<c:when test="${empty ranking.getDonationProducts()}">
											<fmt:formatNumber value="${ranking.getDonationAmount()}"
												pattern="#,###" />
										</c:when>
										<c:otherwise>
											<c:out value="${ranking.getDonationProducts()}" />
										</c:otherwise>
									</c:choose></span>
							</div>
							<div class="subscribe2" style="width: 127px; height: 36px;">
								<div class="number">
									<c:out value="${ranking.getNumberOfDonations()}" />
								</div>
							</div>
							<div class="count2"
								style="width: 283px; height: 36px; padding-left: 32px">
								<div class="date">
									<c:out value="${ranking.getDonationDate()}" />
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<div id="mywrap"></div>

				<div class="yearconfirm" style="padding-bottom: 70px;">
					<button id="buttonchange2"
						onmouseover="buttonChange(this.id, 'grey', 'white');"
						onmouseout="buttonChange(this.id, 'transparent', 'grey');"
						onclick="yearbuttonclick();">나의 랭킹 확인</button>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../fix/footer.jsp" />
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/donation/donationRanking.js"></script>
<script>

	function yearbuttonclick() {
		$('#buttonchange').hide();
		$('#buttonchange2').hide();
		showshow();
	};
	
	function showshow() {
		$.ajax({
					url : "${pageContext.request.contextPath}/donation/rankingMyOk.indi",
						dataType : "json",
						success : function(myInfo) {
						let text = "";
						
						text += `<div class="myrank" id="yearmyrank">`;
						text += `<div class="box2">`;
						
						text += `<div class="leftside" style="width: 128px; height: 36px;">` + myInfo.myRank + `</div>`;
						text += `<div class="name" style="width: 262px; height: 36px;">`+ myInfo.nickName + `</div>`;
						
						text += `<div class="category2" style="width: 260px; height: 36px; line-height: 2;font-size: 16px;padding-right: 10px;margin-left: -9px">`;
						text += `<span class="circle"></span>` + myInfo.donationAmount.toLocaleString() + `</div>`;
						
						text += `<div class="subscribe2" style="width: 127px; height: 36px;">`;
						text += `<div class="number">` + myInfo.numberOfDonations + `</div>`;
						text += `</div>`;
						
						text += `<div class="count2" style="width: 283px; height: 36px;  padding-left: 32px">`;
						text += `<div class="date">` + myInfo.donationDate + `</div>`;
						text += `</div>`;
						
						text += `</div>`;
						text += `</div>`;

						$("#mywrap").html(text);
					}
				});
	}
</script>
</html>