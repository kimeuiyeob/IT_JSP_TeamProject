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
	<!-- 공지사항 수정 모달창 -->
	<div class="update-notice-modal">
		<div class="update-notice-modal-body">
			<div class="notice-modal-header">
				<h2>공지사항 수정</h2>
				<div class="close-img"></div>
			</div>
			<div class="notice-modal-body">
				<div class="schedule-info-box">
					<div class="menu-sub-dropdown-item-title-margin">제목</div>
					<div class="menu-sub-dropdown-item-title-margin">
						<input class="modal-info-padding" type="text">
					</div>
				</div>
				<div class="schedule-info-box">
					<div class="summernote"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="modal-submit">수정</button>
			</div>
		</div>
	</div>
	<!-- 공지사항 추가 모달창 -->
	<div class="add-schedule-modal">
		<div class="add-schedule-modal-body">
			<div class="notice-modal-header">
				<h2>공지사항 추가</h2>
				<div class="close-img"></div>
			</div>
			<div class="notice-modal-body">
				<div class="schedule-info-box">
					<div class="menu-sub-dropdown-item-title-margin">제목</div>
					<div class="menu-sub-dropdown-item-title-margin">
						<input class="modal-info-padding" type="text">
					</div>
				</div>
				<div class="schedule-info-box">
					<div class="summernote"></div>
				</div>
			</div>
			<div class="modal-footer">
				<button class="modal-submit">추가</button>
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
					<div class="menu_item">
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
					<span id="toolbarTitleText">공지사항 관리</span> <span
						id="toolbarTitleSub">홈 - 공지사항 - 공지사항 관리</span>
				</div>
			</div>
			<!-- 메인 컨텐츠 -->
			<div id="content-container-hover">
				<div id="content-container">
					<div class="card">
						<!-- 카드 헤더 -->
						<div class="card-header">
							<div class="card-title">
								<div class="card-title-item-box" onclick="javascript:btn()">
									<div class="card-item-search"></div>
									<input id="search-bar" type="text" placeholder="검색"
										style="color: transparent; text-shadow: 0 0 0 black;">
								</div>
							</div>
							<div class="card-toolbar">
								<div class="card-toolbar-itemBox">
									<button class="card-toolbar-item" onclick="javascript:btn()">
										<div id="filter-img"></div>
										필터

										<div class="menu-sub-dropdown">
											<div class="menu-sub-dropdown-wrap">
												<div class="menu-sub-dropdown-header-title">필터 옵션</div>
											</div>
											<div class="menu-sub-dropdown-wrap">
												<div class="menu-sub-dropdown-item-margin">
													<div class="menu-sub-dropdown-item-title-margin">
														<div class="menu-sub-dropdown-item-title">분류:</div>
													</div>
													<div class="menu-sub-dropdown-option">
														<label class="menu-sub-dropdown-option-box"> <input
															type="checkbox">
															<div class="menu-sub-dropdown-option-text">옵션 선택</div>
															<div class="menu-sub-dropdown-option-arrow"></div>
															<div class="menu-sub-dropdown-option-sub">
																<div class="menu-sub-dropdown-option-sub-item">공지
																</div>
																<div class="menu-sub-dropdown-option-sub-item">점검
																</div>
															</div>
														</label>
													</div>
												</div>
												<div class="menu-sub-dropdown-item-margin">
													<div class="menu-sub-dropdown-item-title-margin">
														<div class="menu-sub-dropdown-item-title">작성일:</div>
													</div>
													<div class="menu-sub-dropdown-option">
														<label class="menu-sub-dropdown-option-box"> <input
															type="checkbox">
															<div class="menu-sub-dropdown-option-text">옵션 선택</div>
															<div class="menu-sub-dropdown-option-arrow"></div>
															<div class="menu-sub-dropdown-option-sub">
																<div class="menu-sub-dropdown-option-sub-item">
																	오름차순</div>
																<div class="menu-sub-dropdown-option-sub-item">
																	내림차순</div>
															</div>
														</label>
													</div>
												</div>
												<div class="menu-sub-dropdown-footer">
													<div class="menu-sub-dropdown-Botton">초기화</div>
													<div class="menu-sub-dropdown-Botton">적용</div>
												</div>

											</div>
										</div>
									</button>
									<button class="card-toolbar-item" onclick="javascript:btn()">
										<div id="update-img"></div>
										공지사항 수정
									</button>
									<button class="card-toolbar-item" onclick="javascript:btn()">
										<div id="plusBlue-img"></div>
										공지사항 추가
									</button>
									<button class="card-toolbar-item" id="delete-btn"
										onclick="javascript:btn()">
										<div id="out-img"></div>
										공지사항 삭제
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
										<th class="card-body-title-checkbox-padding"
											style="width: 4%;"><label
											class="card-body-title-user-checkbox">
												<div class="check-img"></div> <input
												class="notice-checked-all" type="checkbox">
										</label></th>
										<th class="card-body-title-padding" style="width: 6%;">
											<div class="card-body-title-height">분류</div>
										</th>
										<th class="card-body-title-padding" style="width: 68%;">
											<div class="card-body-title-height">공지사항 제목</div>
										</th>
										<th class="card-body-title-padding" style="width: 22%;">
											<div class="card-body-title-height">작성일</div>
										</th>
									</tr>
								</thead>
								<c:choose>
									<c:when test="${notices != null and fn:length(notices) > 0}">
										<c:forEach var="notice" items="${notices}">
											<tbody class="card-body-main-box">
												<tr>
													<th class="card-body-title-checkbox-padding"
														style="width: 4%;"><label
														class="card-body-title-user-checkbox">
															<div class="check-img"></div> <input
															class="notice-checked" type="checkbox" name="check"
															value="${notice.getNoticeNumber()}"
															onclick='check(event)' />
													</label></th>
													<th class="card-body-title-padding" style="width: 6%;">
														<div class="donate-info-height">
															<div class="donate-info-text">
																<c:out value="${notice.getNoticeClassification()}" />
															</div>
														</div>
													</th>
													<th class="card-body-title-padding" style="width: 68%;">
														<div class="donate-info-height">
															<div class="donate-info-text">
																<c:out value="${notice.getNoticeTitle()}" />
															</div>
														</div>
													</th>
													<th class="card-body-title-padding" style="width: 22%;">
														<div class="donate-info-height">
															<c:out value="${notice.getNoticeDateCreated()}" />
														</div>
													</th>
												</tr>
											</tbody>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="5" align="center">등록된 공지사항이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</table>

							<table style="font-size: 16px;">
								<tr align="center" valign="middle">
									<td class="web-view"><c:if test="${prev}">
											<a style="text-decoration:none; color:black"
												href="${pageContext.request.contextPath}/management/managerNoticeListOk.notice?page=${startPage - 1}">&lt;</a>
										</c:if> <c:forEach var="i" begin="${startPage}" end="${endPage}">
											<c:choose>
												<c:when test="${not (i eq page)}">
													<a style="text-decoration:none; color:black"
														href="${pageContext.request.contextPath}/management/managerNoticeListOk.notice?page=${i}">
														<c:out value="${i}" />&nbsp;&nbsp;
													</a>
												</c:when>
												<c:otherwise>
													<c:out value="${i}" />&nbsp;&nbsp;
															</c:otherwise>
											</c:choose>
										</c:forEach> <c:if test="${next}">
											<a style="text-decoration:none; color:black"
												href="${pageContext.request.contextPath}/management/managerNoticeListOk.notice?page=${endPage + 1}">&gt;</a>
										</c:if></td>
								</tr>
							</table>


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
	src="${pageContext.request.contextPath}/assets/js/manager/mileStoneManager_noticeManagement.js"></script>
<script>
	function check(event) {
		let result = '';
		if (event.target.checked) {
			result = event.target.value;
		} else {
			result = '';
		}

		console.log(result);
	}
</script>
<script>
	function btn() {
		alert('준비중입니다.');
	}
</script>
</html>