<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>도움이 필요한 보육원</title>
 <link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/school/help.css">
</head>
<!-- ------------------------------------------------------보인들 코드 여기에다가 넣어주세요 ------------------------------------------------------------------- -->
<body>
<jsp:include page="../fix/header.jsp"/>
	<div id="big">
		<div id="big2">
			<div id="big3">
				<section id="daddy-header">
				</section>
			</div>
			<c:forEach var="nurserySchoolMember" items="${nurserySchoolMember}">
			<div style="opacity: 1; transform: none;">
				<div style="padding-top: 100px;">
					<div class="middle">
						<div backgroundcolor="#000" class="middle-header"></div>
						<div class="middle-middle1 middle-middle2">
							<div class="middle-middle3">
								<div lg="8" class="middle-image1 middle-image2">
									<div class="middle-image3">
										<div class="middle-image4" aspectratio="1"
											aspectratiomobile="0.75"
											aspectratiodesktop="0.5714285714285714">
											<picture class="middle-image5">
											<source type="image"
												srcset="https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/375xauto.webp 375w,https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/750xauto.webp 750w,https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/960xauto.webp 960w,https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/1440xauto.webp 1440w,https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/2048xauto.webp 2048w,https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/2880xauto.webp 2880w,https://cdn.class101.net/images/a276dafa-746d-4dd0-bf94-bb146d72c045/autoxauto.webp 5120w">
											<img src="${nurserySchoolMember.getNurserySchoolPhoto()}">
											</picture>
										</div>
									</div>
									<div class="be-not-in22">
										<div class="be-not-in23">
										</div>
									</div>
									<hr class="be-not-in37">
									<div class="content-text1 content-text2">
										<p>안녕하세요, 보육원 입니다.</p>
										<p>
											<br>
										</p>
										<p>도와주세요</p>
										<p>
											<br>
										</p>
										<p>
											<strong>1. 아가들이 많아요</strong>
										</p>
										<p>기부를 주세요</p>
										<ul>
											<li>기부를 주세요</li>
											<li>기부를 주세요</li>
											<li>기부를 주세요</li>
										</ul>
										<p>2) 기부를 주세요</p>
										<ul>
											<li>기부를 주세요</li>
										</ul>
										<p>3) 기부를 주세요</p>
										<ul>
											<li>기부를 주세요</li>
										</ul>
										<p>4) 기부를 주세요</p>
										<ul>
											<li>기부를 주세요</li>
										</ul>
										<p>5) 기부를 주세요</p>
										<ul>
											<li>기부를 주세요</li>
										</ul>
										<p>
											<strong>2. 기부를 주세요</strong>
										</p>
										<ul>
											<li>기부를 주세요.</li>
										</ul>
										<p>
											<strong>3. 기부를 주세요</strong>
										</p>
										<ul>
											<li>기부를 주세요.</li>
											<li>기부를 주세요.</li>
										</ul>
										<p>
											<br>
										</p>
										<p>기부를 주세요.</p>
									</div>
								</div>
								<div lg="4" class="side1 side2">
									<div offsettop="78" class="side-box1">
										<div class="side-box-title1">
											<h3 md="Headline3" class="side-box-title2"><c:out value="${nurserySchoolMember.getNurserySchoolMemberName()}" /></h3>
										</div>
										<div md="Body2" class="side-box-content1 side-box-content2"><c:out value="${nurserySchoolMember.getNurserySchoolIntroductoryArticle()}" /></div>
										<div class="side-box-date1">
											<div class="side-box-date2">
												<div md="Body2" font-weight="bold" class="side-box-date3">기부받은 횟수 : </div>
												<div md="Body2" class="side-box-date4 side-box-date5"><c:out value="${nurserySchoolMember.getNumberOfDonationsReceived()}" /></div>
											</div>
										</div>
										<button type="button" icon-position="0"
											class="side-box-button1 side-box-button2 " color="default">
											<div position="0" buttonsize="lg" class="side-box-button3">
												<svg xmlns="http://www.w3.org/2000/svg" width="24"
													height="24" fill="none" viewBox="0 0 24 24">
                                                    <path
														fill-rule="evenodd"
														d="M20 19v-7h2v8a1 1 0 01-1 1H3a1 1 0 01-1-1v-8h2v7h16zM13 5.829l3.586 3.587L18 8.001 12 2 6 8.001l1.414 1.414L11 5.829v10.173h2V5.829z"
														fill="#cacaca"></path>
                                                </svg>
											</div>
											<span class="side-box-button4">도움주기</span>
										</button>
									</div>
								</div>
							</div>
						</div>
						<div top="0" right="0" bottom="0" left="0"
							class="footer-header-line1"></div>
						<div class="footer-header-line2"></div>
						<div id="next-membership" class="footer-header-line3"></div>
					</div>
				</div>
			</div>
			</c:forEach>
			<div id="portal"></div>
			<div id="global-portal-area"></div>
			<div id="criteo-tags-div" style="display: none;"></div>
			<next-route-announcer>
			<p aria-live="assertive" id="__next-route-announcer__" role="alert"
				style="border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; margin: -1px; overflow: hidden; padding: 0px; position: absolute; width: 1px; white-space: nowrap; overflow-wrap: normal;">
				클래스101 | 세상의 모든 클래스, 클래스101</p>
			</next-route-announcer>
			<div class="big4 big5" zindex="10000002"
				overlaycolor="rgba(0, 0, 0, 0.72)"></div>
			<div class="big4 big5" zindex="10000002"
				overlaycolor="rgba(0, 0, 0, 0.72)"></div>
			<div class="big6 big5" zindex="10000002"
				overlaycolor="rgba(0, 0, 0, 0.72)"></div>
			<div class="big6 big5" zindex="10000002"
				overlaycolor="rgba(0, 0, 0, 0.72)"></div>
			<div id="ch-plugin">
				<div id="ch-plugin-core">
					<style data-styled="active" data-styled-version="5.1.1"></style>
				</div>
				<div id="ch-plugin-script" class="ch-messenger-hidden"
					style="z-index: 1000 !important"></div>
			</div>
		</div>
	</div>

	<div id="myPage">
		<div id="inner">
			<!-- <div id="miniTitle">마이페이지</div> -->
		</div>

		<main>
			<div id="leftMenu">
			</div>

			<section></section>
		</main>
	</div>
<jsp:include page="../fix/footer.jsp"/>
</body>

</html>