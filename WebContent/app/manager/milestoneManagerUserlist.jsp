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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/manager/mileStoneManager_all_css.css">
</head>

<body onload="showClock()">
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
					<span id="toolbarTitleText">사용자 목록</span> <span
						id="toolbarTitleSub">홈 - 사용자 관리 - 사용자 목록</span>
				</div>
				<div id="toolbar-choose-usertype">
					<div class="toolbar-choose-usertype-flex" id="nomar"
						onclick="myFunction1()">
						<div class="toolbar-choose-usertype-general-img"></div>
						일반
					</div>
					<div class="toolbar-choose-usertype-flex" id="school"
						onclick="myFunction2()">
						<div class="toolbar-choose-usertype-nurserySchool-img"></div>
						보육원
					</div>
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
														<div class="menu-sub-dropdown-item-title">가입 날짜순:</div>
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
												<div class="menu-sub-dropdown-item-margin">
													<div class="menu-sub-dropdown-item-title-margin">
														<div class="menu-sub-dropdown-item-title">마지막 로그인순:</div>
													</div>
													<div class="menu-sub-dropdown-option">
														<label class="menu-sub-dropdown-option-box"> <input
															type="checkbox">
															<div class="menu-sub-dropdown-option-text">옵션 선택</div>
															<div class="menu-sub-dropdown-option-arrow"></div>
															<div class="menu-sub-dropdown-option-sub">
																<div class="menu-sub-dropdown-option-sub-item">
																	최신순</div>
																<div class="menu-sub-dropdown-option-sub-item">
																	오래된순</div>
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
										<div id="out-img"></div>
										사용자 삭제
									</button>
								</div>
							</div>
						</div>
						<!-- 카드 메인 -->
						<div class="card-body">
							<!-- 기부 목록 -->
							<table id="schoolList">
								<thead class="card-body-title-box">
									<tr class="card-body-line">
										<th class="card-body-title-checkbox-padding"
											style="width: 3%;"><label
											class="card-body-title-user-checkbox">
												<div class="check-img"></div> <input
												class="notice-checked-all" type="checkbox">
										</label></th>
										<th class="card-body-title-padding" style="width: 22%;">
											<div class="card-body-title-height">사용자</div>
										</th>
										<th class="card-body-title-padding" style="width: 18%;">
											<div class="card-body-title-height">닉네임</div>
										</th>
										<th class="card-body-title-padding" style="width: 17%;">
											<div class="card-body-title-height">사용자 형태</div>
										</th>
										<th class="card-body-title-padding" style="width: 18%;">
											<div class="card-body-title-height">마지막 로그인</div>
										</th>
										<th class="card-body-title-padding" style="width: 22%;">
											<div class="card-body-title-height">가입 날짜</div>
										</th>
									</tr>
								</thead>
								<c:choose>
									<c:when test="${nursery != null and fn:length(nursery) > 0}">
										<c:forEach var="nursery" items="${nursery}">
											<tbody class="card-body-main-box">
												<tr>
													<th class="card-body-title-checkbox-padding"
														style="width: 3%;"><label
														class="card-body-title-user-checkbox">
															<div class="check-img"></div> <input
															class="notice-checked" type="checkbox">
													</label></th>
													<th class="card-body-title-padding" style="width: 22%;">
														<div class="donater-info">
															<div class="donater-info-img1"></div>
															<div class="donater-info-text">
																<div class="donater-name">
																	<c:out value="${nursery.getNurserySchoolMemberName()}" />
																</div>
																<div>
																	<c:out value="${nursery.getNurserySchoolMemberEmail()}" />
																</div>
															</div>
														</div>
													</th>
													<th class="card-body-title-padding" style="width: 18%;">
														<div class="donate-info-height">
															<c:out value="${nursery.getNurserySchoolMemberName()}" />
														</div>
													</th>
													<th class="card-body-title-padding" style="width: 17%;">
														<div class="donate-info-height">보육원 회원</div>
													</th>
													<th class="card-body-title-padding" style="width: 18%;">
														<div class="donate-info-height">
															<c:out
																value="${nursery.getNurserySchoolMemberRecentLogins()}" />
														</div>
													</th>
													<th class="card-body-title-padding" style="width: 22%;">
														<div class="donate-info-height">
															<c:out
																value="${nursery.getNurserySchoolMemberJoinDate()}" />
														</div>
													</th>
												</tr>
											</tbody>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td colspan="5" align="center">등록된 회원이 없습니다.</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</table>
							<table style="font-size: 16px" id="schooltb">
								<tr align="center" valign="middle">
									<td class="web-view"><c:if test="${prevSchool}">
											<a style="text-decoration: none; color: black"
												href="${pageContext.request.contextPath}/management/userList.me?pageSchool=${startPageSchool - 1}">&lt;</a>
										</c:if> <c:forEach var="i" begin="${startPageSchool}"
											end="${endPageSchool}">
											<c:choose>
												<c:when test="${not (i eq pageSchool)}">
													<a style="text-decoration: none; color: black"
														href="${pageContext.request.contextPath}/management/userList.me?pageSchool=${i}">
														<c:out value="${i}" />&nbsp;&nbsp;
													</a>
												</c:when>
												<c:otherwise>
													<c:out value="${i}" />&nbsp;&nbsp;
															</c:otherwise>
											</c:choose>
										</c:forEach> <c:if test="${nextSchool}">
											<a style="text-decoration: none; color: black"
												href="${pageContext.request.contextPath}/management/userList.me?pageSchool=${endPageSchool + 1}">&gt;</a>
										</c:if></td>
								</tr>
							</table>
							<div class="card-body">
								<!-- 기부 목록 -->
								<table id="nomarList" style="display: none;">
									<thead class="card-body-title-box">
										<tr class="card-body-line">
											<th class="card-body-title-checkbox-padding"
												style="width: 3%;"><label
												class="card-body-title-user-checkbox">
													<div class="check-img"></div> <input
													class="notice-checked-all" type="checkbox">
											</label></th>
											<th class="card-body-title-padding" style="width: 22%;">
												<div class="card-body-title-height">사용자</div>
											</th>
											<th class="card-body-title-padding" style="width: 18%;">
												<div class="card-body-title-height">닉네임</div>
											</th>
											<th class="card-body-title-padding" style="width: 17%;">
												<div class="card-body-title-height">사용자 형태</div>
											</th>
											<th class="card-body-title-padding" style="width: 18%;">
												<div class="card-body-title-height">마지막 로그인</div>
											</th>
											<th class="card-body-title-padding" style="width: 22%;">
												<div class="card-body-title-height">가입 날짜</div>
											</th>
										</tr>
									</thead>
									<c:choose>
										<c:when
											test="${individual != null and fn:length(individual) > 0}">
											<c:forEach var="individual" items="${individual}">
												<tbody class="card-body-main-box">
													<tr>
														<th class="card-body-title-checkbox-padding"
															style="width: 3%;"><label
															class="card-body-title-user-checkbox">
																<div class="check-img"></div> <input
																class="notice-checked" type="checkbox">
														</label></th>
														<th class="card-body-title-padding" style="width: 22%;">
															<div class="donater-info">
																<div class="donater-info-img1"></div>
																<div class="donater-info-text">
																	<div class="donater-name">
																		<c:out value="${individual.getIndividualMemberName()}" />
																	</div>
																	<div>
																		<c:out
																			value="${individual.getIndividualMemberEmail()}" />
																	</div>
																</div>
															</div>
														</th>
														<th class="card-body-title-padding" style="width: 18%;">
															<div class="donate-info-height">
																<c:out value="${individual.getNickName()}" />
															</div>
														</th>
														<th class="card-body-title-padding" style="width: 17%;">
															<div class="donate-info-height">일반 회원</div>
														</th>
														<th class="card-body-title-padding" style="width: 18%;">
															<div class="donate-info-height">
																<c:out
																	value="${individual.getIndividualMemberRecentLogins()}" />
															</div>
														</th>
														<th class="card-body-title-padding" style="width: 22%;">
															<div class="donate-info-height">
																<c:out
																	value="${individual.getIndividualMemberJoinDate()}" />
															</div>
														</th>
													</tr>
												</tbody>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="5" align="center">등록된 회원이 없습니다.</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</table>
								<table style="font-size: 16px; display: none;" id="nomartb">
									<tr align="center" valign="middle">
										<td class="web-view"><c:if test="${prevIndi}">
												<a style="text-decoration: none; color: black"
													href="${pageContext.request.contextPath}/management/userList.me?pageIndi=${startPageIndi - 1}">&lt;</a>
											</c:if> <c:forEach var="i" begin="${startPageIndi}"
												end="${endPageIndi}">
												<c:choose>
													<c:when test="${not (i eq pageIndi)}">
														<a style="text-decoration: none; color: black"
															href="${pageContext.request.contextPath}/management/userList.me?pageIndi=${i}">
															<c:out value="${i}" />&nbsp;&nbsp;
														</a>
													</c:when>
													<c:otherwise>
														<c:out value="${i}" />&nbsp;&nbsp;
															</c:otherwise>
												</c:choose>
											</c:forEach> <c:if test="${nextIndi}">
												<a style="text-decoration: none; color: black"
													href="${pageContext.request.contextPath}/management/userList.me?pageIndi=${endPageIndi + 1}">&gt;</a>
											</c:if></td>
									</tr>
								</table>
							</div>
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
	src="${pageContext.request.contextPath}/assets/js/manager/mileStoneManager_userlist.js"></script>

<script type="text/javascript">
	function myFunction1() {
		$("#nomarList").show();
		$("#schoolList").hide();
		$("#nomartb").show();
		$("#schooltb").hide();
	}
	function myFunction2() {
		$("#schoolList").show();
		$("#nomarList").hide();
		$("#schooltb").show();
		$("#nomartb").hide();
	}
</script>
<script>
	function btn() {
		alert('준비중입니다.');
	}
</script>
</html>