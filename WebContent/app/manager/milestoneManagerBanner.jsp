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
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/mileStoneManager_all_css.css">
</head>

<body onload="showClock()">

	<!-- 배너 추가 모달창 -->
	<!-- 배너 미리보기 모달창 -->
	<div class="preview-banner-modal">
		<div class="preview-banner-modal-body">
			<div class="notice-modal-header">
				<h2>배너 수정</h2>
				<div class="close-img"></div>
			</div>
			<div class="notice-modal-body">
				<section class="container">
					<div class="preview-banner">ㄴㅁㅇㄻㄴㄹㅇ</div>
				</section>
			</div>
		</div>
	</div>
	<!-- 배너 그룹명 모달창 -->
	<div class="add-banner-group-modal" >
		<div class="add-banner-group-modal-body">
			<div class="notice-modal-header">
				<h2>배너 추가</h2>
				<div class="close-img"></div>
			</div>
			<div class="notice-modal-body">
				<div class="schedule-info-box">
					<div class="menu-sub-dropdown-item-title-margin">추가할 배너수</div>
					<div class="menu-sub-dropdown-item-title-margin">
						<input class="modal-info-padding" type="number">
					</div>
					<div class="no-input-text">추가할 배너 개수를 입력해주세요</div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="modal-submit">다음</button>
			</div>
		</div>
	</div>
	<!-- 삭제 모달창 -->
	<div class="delete-modal">
		<div class="delete-modal-body">
			<div class="delete-modal-top">!</div>
			<div class="delete-modal-middle">삭제하시겠습니까?</div>
			<div class="delete-modal-bottom">
				<div class="delete-modal-delete">네,삭제합니다!</div>
				<div class="delete-modal-cancel">아니요,취소</div>
			</div>
		</div>
	</div>
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
								<a class="menu-link active" href=""> <span
									class="menu-bullet"> <span class="bullet"></span>
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
					<div class="menu_item">
						<span class="menu-link"> <span class="menu-icon"> <span
								id="schedule-icon-img"></span>
						</span> <span class="menu-title">기부 일정 관리</span> <span class="menu-arrow">
								<span class="arrow-icon"></span>
						</span>
						</span>
						<div class="menu-sub">
							<div class="menu-item" onclick="javascript:btn()">
								<a class="menu-link active" href=""> <span
									class="menu-bullet"> <span class="bullet"></span>
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
								<a class="menu-link active" href=""> <span
									class="menu-bullet"> <span class="bullet"></span>
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
					<span id="toolbarTitleText">배너 관리</span> <span id="toolbarTitleSub">홈
						- 공지사항 - 배너 관리</span>
				</div>
			</div>
			<!-- 메인 컨텐츠 -->
			<div id="content-container-hover">
				<div id="content-container">
					<div class="card">
						<!-- 카드 헤더 -->
						<div class="card-header">
							<div class="card-toolbar">
								<div class="card-toolbar-itemBox">
									<button class="card-toolbar-item" onclick="javascript:btn()">
										<div id="plusBlue-img"></div>
										배너 추가
									</button>
									<button class="card-toolbar-item" onclick="javascript:btn()">
										<div id="out-img"></div>
										배너 삭제
									</button>
								</div>
							</div>
						</div>
						<!-- 카드 메인 -->
						<div class="card-body">
							<!-- 공지 목록 -->
							<table>
								<thead class="card-body-title-box">
									<tr class="card-body-line">
										<th class="card-body-title-padding" style="width: 25%;">
											<div class="card-body-title-height">배너 개수</div>
										</th>
										<th class="card-body-title-padding" style="width: 35%;">
											<div class="card-body-title-height">등록일</div>
										</th>
										<th class="card-body-title-padding" style="width: 15%;">
											<div class="card-body-title-height">사용여부</div>
										</th>
										<th class="card-body-title-padding" style="width: 25%;">
											<div class="card-body-title-height  text-end">미리보기</div>
										</th>
									</tr>
								</thead>
								<c:forEach var="banners" items="${banners}">
									<tbody class="card-body-main-box">
										<tr>
											<th class="card-body-title-padding" style="width: 25%;">
												<div class="donate-info-height">
													<c:out value="${banners.getBannersNumber()}" />
												</div>
											</th>
											<th class="card-body-title-padding" style="width: 35%;">
												<div class="donate-info-height">
													<c:out value="${banners.getBannersRegistrationDate()}" />
												</div>
											</th>
											<th class="card-body-title-padding" style="width: 15%;">
												<div class="donate-info-height">
													<input type="checkbox" id="toggle" hidden> <label
														for="toggle" class="toggleSwitch"> <span
														class="toggleButton"></span>
													</label>
												</div>
											</th>
											<th class="card-body-title-padding" style="width: 25%;">
												<div class="donate-info-height donate-outBox-end">
													<div class="donate-outBox">미리보기</div>
												</div>
											</th>
										</tr>

									</tbody>
								</c:forEach>
							</table>
							<!-- 카드 푸터 -->
							<div class="preview-flex">
								<div class="preview-banner-area">
									<section class="cantainer">
										<c:forEach var="banners" items="${banners}">
											<div class="banner">
												<div>
													<img src="${banners.getBannersImage()}" alt="" />
												</div>

											</div>
										</c:forEach>
									</section>
								</div>
							</div>
							<!-- </div> -->
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
	src="${pageContext.request.contextPath}/assets/js/manager/mileStoneManager_banner.js"></script>
<script>
	function btn() {
		alert('준비중입니다.');
	}
</script>
</html>