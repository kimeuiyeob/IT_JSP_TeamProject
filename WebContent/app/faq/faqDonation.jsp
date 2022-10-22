<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="ko" data-direction="ltr">

<head>
    <meta name="robots" content="noindex, nofollow">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>MILESTONE+Help Center</title>
    <meta name="description" content="결제문의">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="intercom:trackingEvent"
        content="{&quot;name&quot;:&quot;Viewed Help Center&quot;,&quot;metadata&quot;:{&quot;action&quot;:&quot;viewed&quot;,&quot;object&quot;:&quot;educate_home&quot;,&quot;place&quot;:&quot;help_center&quot;,&quot;owner&quot;:&quot;educate&quot;,&quot;default_locale&quot;:&quot;en&quot;,&quot;current_locale&quot;:&quot;ko&quot;,&quot;is_default_locale&quot;:false}}">
    <meta property="og:title" content="CLASS101+Help Center">
    <meta name="twitter:title" content="CLASS101+Help Center">

    <meta property="og:description" content="결제문의">
    <meta name="twitter:description" content="결제문의">

    <meta property="og:type" content="website">
    <meta property="og:image"
        content="https://downloads.intercomcdn.com/i/o/334438/617f499e0dc747ca28c9c9d6/37f11ccece2351ec558f9bd873223a6f.png">

    <meta name="twitter:image"
        content="https://downloads.intercomcdn.com/i/o/334438/617f499e0dc747ca28c9c9d6/37f11ccece2351ec558f9bd873223a6f.png">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/faq/faqThird.css">
</head>

<body class="header__lite" style="">
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
                                <option data-locale="ko" selected="selected"
                                    value="/class101faq/ko/collections/3422162-자주-묻는-질문">한국어</option>
                            </select><select name="hidden_locales" id="locale-picker-for-width-calculation"
                                class="locale-picker" style="">
                                <option value="">한국어</option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <div class="container">
        <div class="content educate_content">
            <section class="content section">
                <div class="breadcrumb" dir="ltr">
                    <div class="link__arrow o__ltr">
                        <a href="/class101faq/ko/">모든 컬렉션</a>
                    </div>

                    <div class="link__arrow o__ltr">기부문의</div>
                </div>

                <div class="section__bg">
                    <div class="paper g__space collection__headline">
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
                            <div class="collection__meta intercom-force-break" dir="ltr">
                                <h1 class="t__h1">기부문의</h1>
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
                        </div>
                    </div>
                  
                        <div class="g__space">
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">기부 방법이 궁금해요</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            기부하시는 방법은 상단 기부하기 탭을 누르시고 기부를 진행하시면 됩니다.
                                            <br>
                                            감사합니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    </h2>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">기부 내역을 확인하고 싶어요</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            기부 현황은 상단에서 확인하실 수 있으며, 개인 기부 내역은 마이페이지에서 확인하실 수 있습니다.
                                            <br>
                                            감사합니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">할부 선택이 안 돼요!</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">월간 구독중인데 연간 구독으로 바꾸고 싶어요</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">연간 구독중인데 월간 구독으로 바꾸고 싶어요</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">정기결제 카드를 변경하고 싶어요</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                    <h2 class="t__h3"><span class="c__primary">환불과 해지방법이 궁금해요!</span></h2>
                                    <div id="sliding_menu">
                                        <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                        <p></p>
                                        안녕하세요. MILESTONE 팀입니다.
                                        <br>
                                        <br>
                                        by MILESTONE PROJECT FAQ
                                    </div>
                                </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                    <h2 class="t__h3"><span class="c__primary">구독 신청했는데 기존 강의는 환불 안 되나요</span></h2>
                                    <div id="sliding_menu">
                                        <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                        <p></p>
                                        안녕하세요. MILESTONE 팀입니다.
                                        <br>
                                        <br>
                                        by MILESTONE PROJECT FAQ
                                     </div>
                                 </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                            <a href="javascript:void(0)"
                                class="t__no-und paper paper__article-preview">
                                <div class="article__preview intercom-force-break" dir="ltr">
                                    <nav class="nav">
                                        <h2 class="t__h3"><span class="c__primary">카드 결제 시 오류 메세지가 나와요!</span></h2>
                                        <div id="sliding_menu">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/logo.png" style="width: 12%"> 
                                            <p></p>
                                            안녕하세요. MILESTONE 팀입니다.
                                            <br>
                                            <br>
                                            by MILESTONE PROJECT FAQ
                                         </div>
                                     </nav>
                                    <span class="paper__preview c__body"></span>
                                    <div class="avatar">
                                        <div class="avatar__photo o__ltr">
                                            <img src="${pageContext.request.contextPath}/assets/img/faq/minilogo.jpg"
                                                alt="class101 avatar" class="avatar__image">

                                        </div>
                                        <div class="avatar__info">
                                            <div>
                                                <span class="c__darker">작성자:</span>milestone
                                                <br> 1주일 전에 업데이트됨
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </a>
                        </div>
                    

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
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/faq/faq.js"></script>

</body>

</html>