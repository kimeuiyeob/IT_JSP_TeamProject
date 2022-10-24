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
<title>이정표 | 관리자페이지</title>
<link
	href='${pageContext.request.contextPath}/assets/css/manager/main.css'
	rel='stylesheet' />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/mileStoneManager_all_css.css">
</head>

<body onload="showClock()">
	<!-- 사이드 -->
	<div id='sidebar'>
		<div id='sidebar_header'>
			<a
				href="${pageContext.request.contextPath}/management/managerDonateHistory.don"
				id="mileStoneLogo"> </a>
		</div>
		<div id="sidebar_menu">
			<div id="sidebar_menu_wrapper">
				<div class="menu menu_colum">
					<!-- 대시 보드 -->
					<div class="menu_item">
						<span class="menu-link"> <span class="menu-icon"> <span
								id="dashboard-icon-img"></span>
						</span> <span class="menu-title">대시보드</span> <span class="menu-arrow">
								<span class="arrow-icon"></span>
						</span>
						</span>
						<div class="menu-sub">
							<div class="menu-item" onclick="javascript:btn()">
								<a class="menu-link active"
									href="">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">이용자 통계</span>
								</a>
							</div>
							<div class="menu-item">
								<a class="menu-link active"
									href="${pageContext.request.contextPath}/management/managerDonateHistory.don">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">기부 내역</span>
								</a>
							</div>
						</div>

					</div>
					<div class="menu-item pt-5">
						<div class="menu-content">
							<span class="menu-heading">페이지</span>
						</div>
					</div>
					<!-- 사용자 관리 -->
					<div class="menu_item">
						<span class="menu-link"> <span class="menu-icon"> <span
								id="user-icon-img"></span>
						</span> <span class="menu-title">사용자 관리</span> <span class="menu-arrow">
								<span class="arrow-icon"></span>
						</span>
						</span>
						<div class="menu-sub">
							<div class="menu-item">
								<a class="menu-link active"
									href="${pageContext.request.contextPath}/management/userList.me">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">사용자 목록</span>
								</a>
							</div>
						</div>

					</div>
					<!-- 커뮤니티 관리 -->
					<div class="menu_item">
						<span class="menu-link"> <span class="menu-icon"> <span
								id="coumunity-icon-img"></span>
						</span> <span class="menu-title">커뮤니티 관리</span> <span class="menu-arrow">
								<span class="arrow-icon"></span>
						</span>
						</span>
						<div class="menu-sub">
							<div class="menu-item">
								<a class="menu-link active"
									href="${pageContext.request.contextPath}/management/communityManager.manager">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">게시글 목록</span>
								</a>
							</div>
						</div>

					</div>
					<!-- 기부 일정 관리 -->
					<div class="menu_item" >
						<span class="menu-link"> <span class="menu-icon"> <span
								id="schedule-icon-img"></span>
						</span> <span class="menu-title">기부 일정 관리</span> <span class="menu-arrow">
								<span class="arrow-icon"></span>
						</span>
						</span>
						<div class="menu-sub">
							<div class="menu-item" onclick="javascript:btn()">
								<a class="menu-link active"
									href="">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">기부 일정 달력</span>
								</a>
							</div>
						</div>
					</div>
					<!-- 고객지원 -->
					<div class="menu_item">
						<span class="menu-link"> <span class="menu-icon"> <span
								id="supportGuest-icon-img"></span>
						</span> <span class="menu-title">공지사항</span> <span class="menu-arrow">
								<span class="arrow-icon"></span>
						</span>
						</span>
						<div class="menu-sub">
							<div class="menu-item">
								<a class="menu-link active"
									href="${pageContext.request.contextPath}/management/managerNoticeListOk.notice">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">공지사항 관리</span>
								</a>
							</div>
							<div class="menu-item" onclick="javascript:btn()">
								<a class="menu-link active"
									href="">
									<span class="menu-bullet"> <span class="bullet"></span>
								</span> <span class="menu-title">배너 관리</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 헤더 -->
	<header>
		<div id="header">
			<a href="https://playwarcraft3.com/ko-kr/" class="banner"></a>
			<div id="toolBox">
				<div id="divClock" class="clock"></div>
				<div>관리자님 환영합니다.</div>
			</div>
		</div>
	</header>
	<!-- 메인 -->
	<main>
		<div class="main">
			<div id="toolbar">
				<div id="toolbarTitle">
					<span id="toolbarTitleText">기부 일정 달력</span> <span
						id="toolbarTitleSub">홈 - 기부 일정 관리 - 기부 일정 달력</span>
				</div>
			</div>
			<!-- 메인 컨텐츠 -->
			<div id="content-container-hover">
				<div id="content-container">
					<div class="card">
						<!-- 카드 헤더 -->
						<div class="card-header-chart-title">
							<div class="card-title-chart-title">
								<div class="card-title-text-schedule">기부 달력</div>
							</div>
						</div>
						<!-- 카드 메인 -->
						<div class="card-body-chart-padding">
							<!-- 캘린더 -->
							<div id='calendar'></div>
						</div>
					</div>
				</div>
			</div>
			<!-- 푸터 -->
			<footer>
				<div id="footer-logo-box">
					<div id="footer-flex">
						<a href="${pageContext.request.contextPath}/member/index.me">
						<div id="footer-logo"></div>
						</a>
						<div id="footer-company">2022© 동석한 아카데미 Team 4</div>
					</div>
				</div>
				<div id="footer-flex">
					<div id="footer-menu">이용약관 · 개인정보 처리방침 · 이용약관 · 사업자 정보 확인 ·
						제휴/협력 · 문의 단체/기업 교육 문의</div>
					<div id="footer-company-info">대표 김의엽 | 서울 강남구 테헤란로 146
						3층(역삼동) | T4@.inc | 전화번호: 1234-1234 |</div>

				</div>
			</footer>
		</div>
	</main>

</body>
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script>
    var jb = jQuery.noConflict();
</script>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/manager/mileStoneManager_public.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/js/manager/mileStoneManager_donateSchedule.js"></script>
<script
	src='${pageContext.request.contextPath}/assets/js/manager/main.js'></script>
<script>
	function btn() {
		alert('준비중입니다.');
	}
</script>
</html>