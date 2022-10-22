<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- 헤더 로고 흰색으로 변경해야함 -->
<!DOCTYPE html>
<html lang="ko" data-direction="ltr">

<head>
    <meta name="robots" content="noindex, nofollow">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MILESTONE+Help Center</title>
    <meta name="description" content="자주 묻는 질문">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="intercom:trackingEvent"
        content="{&quot;name&quot;:&quot;Viewed Help Center&quot;,&quot;metadata&quot;:{&quot;action&quot;:&quot;viewed&quot;,&quot;object&quot;:&quot;educate_home&quot;,&quot;place&quot;:&quot;help_center&quot;,&quot;owner&quot;:&quot;educate&quot;,&quot;default_locale&quot;:&quot;en&quot;,&quot;current_locale&quot;:&quot;ko&quot;,&quot;is_default_locale&quot;:false}}">

    <meta property="og:title" content="CLASS101+Help Center">
    <meta name="twitter:title" content="CLASS101+Help Center">

    <meta property="og:description" content="자주 묻는 질문">
    <meta name="twitter:description" content="자주 묻는 질문">

    <meta property="og:type" content="website">
    <meta property="og:image"
        content="https://downloads.intercomcdn.com/i/o/334438/617f499e0dc747ca28c9c9d6/37f11ccece2351ec558f9bd873223a6f.png">

    <meta name="twitter:image"
        content="https://downloads.intercomcdn.com/i/o/334438/617f499e0dc747ca28c9c9d6/37f11ccece2351ec558f9bd873223a6f.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/faq/faq.css" />
</head>






<body class="" style="">
    <header class="header">
        <div class="container header__container o__ltr" dir="ltr">
            <div class="content">
                <div class="mo o__centered o__reversed header__meta_wrapper">
                    <div class="mo__body header__site_name">
                        <div class="header__logo">
                            <a href="${pageContext.request.contextPath}/member/index.me">
                                <img alt="CLASS101+Help Center" height="347" src="${pageContext.request.contextPath}/assets/img/faq/whiteLogo.png">
                            </a>
                        </div>
                    </div>
                    <div class="mo__aside">
                        <div class="header__links">
                                    <g stroke="#FFF" fill="none" fill-rule="evenodd" stroke-linecap="round"
                                        stroke-linejoin="round">
                                        <path d="M11.5 6.73v6.77H.5v-11h7.615M4.5 9.5l7-7M13.5 5.5v-5h-5"></path>
                                    </g>
                                </svg><span></span></a>
                            <select name="locale-picker" id="locale-picker" class="locale-picker" data-locale="ko"
                                style="width: 82px;">
                                <option data-locale="ko" selected="selected" value="/class101faq/ko/">한국어</option>
                            </select><select name="hidden_locales" id="locale-picker-for-width-calculation"
                                class="locale-picker" style="">
                                <option value="">한국어</option>
                            </select>
                        </div>
                    </div>
                </div>
                <h1 class="header__headline">자주 묻는 질문</h1>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="content educate_content">
            <section class="section">
                <div class="g__space">
                    <a href="${pageContext.request.contextPath}/faq/faqDetail.faq" class="paper ">
                        <div class="collection o__ltr">
                            <div class="collection__photo">
                                <svg role="img" viewBox="0 0 48 48">
                                    <g id="book-bookmark" stroke-width="2" fill="none" fill-rule="evenodd"
                                        stroke-linecap="round">
                                        <path d="M35 31l-6-6-6 6V7h12v24z"></path>
                                        <path d="M35 9h6v38H11a4 4 0 0 1-4-4V5" stroke-linejoin="round"></path>
                                        <path d="M39 9V1H11a4 4 0 0 0 0 8h12" stroke-linejoin="round"></path>
                                    </g>
                                </svg>
                            </div>
                            
                            
                            
                            
                            <!-- ============================================================= -->
                            
                            
                            
                            <div class="collection_meta" dir="ltr">
                                <h2 class="t__h3 c__primary">자주 묻는 질문</h2>
                                <p class="paper__preview"></p>
                                <div class="avatar">
                                    <div class="avatar__photo avatars__images o__ltr">
                                        <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                            alt="class101 avatar" class="avatar__image">

                                    </div>
                                    <div class="avatar__info">
                                        <div>
                                            <span class="c__darker">
                                                이 컬렉션의 7개 기사
                                            </span>
                                            <br>
                                            작성자: <span class="c__darker"> milestone</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
                <div class="g__space">
                    <a href="${pageContext.request.contextPath}/faq/faqService.faq" class="paper ">
                        <div class="collection o__ltr">
                            <div class="collection__photo">
                                <svg role="img" viewBox="0 0 48 48">
                                    <g id="book-opened2">
                                        <path
                                            d="M24 11c0-3.866 10.297-7 23-7v33c-12.703 0-23 3.134-23 7 0-3.866-10.3-7-23-7V4c12.7 0 23 3.134 23 7zm0 0v32m-5-27.52c-3.22-1.232-7.773-2.128-13-2.48m13 8.48c-3.22-1.232-7.773-2.128-13-2.48m13 8.48c-3.22-1.232-7.773-2.128-13-2.48m13 8.48c-3.22-1.23-7.773-2.127-13-2.48m23-15.52c3.223-1.232 7.773-2.128 13-2.48m-13 8.48c3.223-1.232 7.773-2.128 13-2.48m-13 8.48c3.223-1.232 7.773-2.128 13-2.48m-13 8.48c3.223-1.23 7.773-2.127 13-2.48"
                                            stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
                                        </path>
                                    </g>
                                </svg>
                            </div>
                            
                            
                              <!-- ============================================================= -->
                            
                            
                            <div class="collection_meta" dir="ltr">
                                <h2 class="t__h3 c__primary">서비스 소개 및 이용문의</h2>
                                <p class="paper__preview"></p>
                                <div class="avatar">
                                    <div class="avatar__photo avatars__images o__ltr">
                                        <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                            alt="class101 avatar" class="avatar__image">

                                    </div>
                                    <div class="avatar__info">
                                        <div>
                                            <span class="c__darker">
                                                이 컬렉션의 6개 기사
                                            </span>
                                            <br>
                                            작성자: <span class="c__darker"> milestone</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </a>
                </div>
                <div class="g__space">
                    <a href="${pageContext.request.contextPath}/faq/faqDonation.faq" class="paper ">
                        <div class="collection o__ltr">
                            <div class="collection__photo">
                                <svg role="img" viewBox="0 0 48 48">
                                    <g id="biz-dollar" stroke-width="2" fill="none" fill-rule="evenodd"
                                        stroke-linejoin="round">
                                        <path
                                            d="M47 24c0 12.703-10.297 23-23 23C11.3 47 1 36.703 1 24 1 11.298 11.3 1 24 1c12.703 0 23 10.298 23 23z">
                                        </path>
                                        <path
                                            d="M19 29a5 5 0 0 0 5 5 5 5 0 0 0 0-10 5 5 0 0 1 0-10 5 5 0 0 1 5 5m-5-8v26"
                                            stroke-linecap="round"></path>
                                    </g>
                                </svg>
                            </div>
                            
                            
                              <!-- ============================================================= -->
                            
                            
                            
                            <div class="collection_meta" dir="ltr">
                                <h2 class="t__h3 c__primary">기부문의</h2>
                                <p class="paper__preview"></p>
                                <div class="avatar">
                                    <div class="avatar__photo avatars__images o__ltr">
                                        <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                            alt="class101 avatar" class="avatar__image">

                                    </div>
                                    <div class="avatar__info">
                                        <div>
                                            <span class="c__darker">
                                                이 컬렉션의 9개 기사
                                            </span>
                                            <br>
                                            작성자: <span class="c__darker"> milestone</span>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            
                            
                              <!-- ============================================================= -->
                        </div>
                    </a>
                </div>
                <div class="g__space">
                    <a href="${pageContext.request.contextPath}/faq/faqAccount.faq" class="paper ">
                        <div class="collection o__ltr">
                            <div class="collection__photo">
                                <svg role="img" viewBox="0 0 48 48">
                                    <g id="user-edit" stroke-width="2" fill="none" fill-rule="evenodd">
                                        <path d="M34 45l-7 2 2-7 13-13 5 5-13 13z" stroke-linecap="round"
                                            stroke-linejoin="round"></path>
                                        <path d="M38 31l5 5" stroke-linejoin="round"></path>
                                        <path d="M29 40l5 5" stroke-linecap="round" stroke-linejoin="round"></path>
                                        <path
                                            d="M31 31.037L25 29v-5.843m-10 .373V29L4.98 32.577A6 6 0 0 0 1 38.227V43h21">
                                        </path>
                                        <path
                                            d="M29.75 13c0 6.627-4.48 12-10 12-5.523 0-10-5.373-10-12s4.477-12 10-12c5.52 0 10 5.373 10 12z">
                                        </path>
                                        <path
                                            d="M29.667 11.916c-.336.04-.58.018-.917.083-3.406.653-5.593-.58-7.468-3.86C20.157 10.293 16.64 12 13.75 12c-1.422 0-2.646-.292-3.87-.933">
                                        </path>
                                    </g>
                                </svg>
                            </div>
                            <div class="collection_meta" dir="ltr">
                                <h2 class="t__h3 c__primary">계정문의</h2>
                                <p class="paper__preview"></p>
                                <div class="avatar">
                                    <div class="avatar__photo avatars__images o__ltr">
                                        <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                            alt="class101 avatar" class="avatar__image">

                                    </div>
                                    <div class="avatar__info">
                                        <div>
                                            <span class="c__darker">
                                                이 컬렉션의 7개 기사
                                            </span>
                                            <br>
                                            작성자: <span class="c__darker"> milestone,</span><span class="c__darker">
                                                milestone</span>
                                        </div>
                                    </div>
                                </div>
                                
                                
  						<!-- ============================================================= -->
  						
  						
  						
                            </div>
                        </div>
                    </a>
                </div>
            </section>
        </div>
    </div>
    <footer class="footer">
        <div class="container">
            <div class="content">
                <div class="u__cf" dir="ltr">
                    <div class="footer__logo">
                        <a href="/class101faq/ko/">
                            <img alt="CLASS101+Help Center" src="${pageContext.request.contextPath}/assets/img/faq/mainlogo.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>

</html>