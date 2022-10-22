<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>게시판</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/inBoard.css" />
</head>
<body style="margin: 0px;">

<jsp:include page="../fix/header.jsp"/>
    <!-- ------------------------------------------------------보인들 코드 여기에다가 넣어주세요 ------------------------------------------------------------------- -->

    <div style="padding-top : 200px">

        <div class="subjectname">

            <div>
                개인 커뮤니티 활동
            </div>

            <div>
                <input type="button" id="write" value="글 작성하기">
            </div>
            
        </div>

    </div>



    <div class="longdivs">



        <div class="longdived">
            <div class="longdivedimg">
                <img src="${pageContext.request.contextPath}/assets/img/board/baby1.jpg" alt="">
            </div>
            <div class="longdivedinfo">
                <div class="infoname">
                    <p>김의엽</p>
                </div>
                <div class="infodetail">
                    <p>안녕하세요 제 이름은 김의엽입니다. 오늘은 정말 피곤한 날이네요...</p>
                </div>
                <div class="infolike">
                    <div class="heart">
                        <div>
                            <img src="${pageContext.request.contextPath}/assets/img/board/heart.png" alt="">
                        </div>
                        <div class="heartcount">
                            1321
                        </div>
                    </div>
                    <div class="thumbsup">
                        <div style="padding-right : 8px">
                            <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                        </div>
                        <div class="thubmsupcount">
                            2182
                        </div>
                    </div>
                </div>
            </div>
            <div class="longdivedetc">
                <div class="etchighlight">
                    인기
                </div>
                <div class="etcname">
                    추천 커뮤니티글
                </div>
                <!--    <div class="etcetc">
                    (6개월)
                </div> -->
            </div>
        </div>




        <div class="longdived">
            <div class="longdivedimg">
                <img src="${pageContext.request.contextPath}/assets/img/board/baby2.jpg" alt="">
            </div>
            <div class="longdivedinfo">
                <div class="infoname">
                    <p>김도빈</p>
                </div>
                <div class="infodetail">
                    <p>안녕하세요 제 이름은 김도빈입니다. 오늘한거 자바 복습해야되는데...</p>
                </div>
                <div class="infolike">
                    <div class="heart">
                        <div>
                            <img src="${pageContext.request.contextPath}/assets/img/board/heart.png" alt="">
                        </div>
                        <div class="heartcount">
                            1201
                        </div>
                    </div>
                    <div class="thumbsup">
                        <div style="padding-right : 8px">
                            <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                        </div>
                        <div class="thubmsupcount">
                            1203
                        </div>
                    </div>
                </div>
            </div>
            <div class="longdivedetc">
                <div class="etchighlight">
                    인기
                </div>
                <div class="etcname">
                    추천 커뮤니티글
                </div>
                <!-- <div class="etcetc">
                    (6개월)
                </div> -->
            </div>
        </div>



        <div class="longdived">
            <div class="longdivedimg">
                <img src="${pageContext.request.contextPath}/assets/img/board/baby3.jpg" alt="">
            </div>
            <div class="longdivedinfo">
                <div class="infoname">
                    <p>정서림</p>
                </div>
                <div class="infodetail">
                    <p>안녕하세요 제 이름은 정서림입니다. 아...쉽지 않네요.</p>
                </div>
                <div class="infolike">
                    <div class="heart">
                        <div>
                            <img src="${pageContext.request.contextPath}/assets/img/board/heart.png" alt="">
                        </div>
                        <div class="heartcount">
                            972
                        </div>
                    </div>
                    <div class="thumbsup">
                        <div style="padding-right : 8px">
                            <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                        </div>
                        <div class="thubmsupcount">
                            933
                        </div>
                    </div>
                </div>
            </div>
            <div class="longdivedetc">
                <div class="etchighlight">
                    인기
                </div>
                <div class="etcname">
                    추천 커뮤니티글
                </div>
                <!-- <div class="etcetc">
                    (6개월)
                </div> -->
            </div>
        </div>




        <div class="longdived">
            <div class="longdivedimg">
                <img src="${pageContext.request.contextPath}/assets/img/board/baby3.jpg" alt="">
            </div>
            <div class="longdivedinfo">
                <div class="infoname">
                    <p>황지수</p>
                </div>
                <div class="infodetail">
                    <p>안녕하세요 제 이름은 황지수입니다. 저는 우리팀 에이스입니다.</p>
                </div>
                <div class="infolike">
                    <div class="heart">
                        <div>
                            <img src="${pageContext.request.contextPath}/assets/img/board/heart.png" alt="">
                        </div>
                        <div class="heartcount">
                            832
                        </div>
                    </div>
                    <div class="thumbsup">
                        <div style="padding-right : 8px">
                            <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                        </div>
                        <div class="thubmsupcount">
                            832
                        </div>
                    </div>
                </div>
            </div>
            <div class="longdivedetc">
                <div class="etchighlight">
                    인기
                </div>
                <div class="etcname">
                    추천 커뮤니티글
                </div>
                <!-- <div class="etcetc">
                    (6개월)
                </div> -->
            </div>
        </div>


    </div>

    <div class="givepaadding" style="padding-bottom : 80px">
    </div>

    <!-- ===================================================================================== -->


    <div class="longdivs" ;>



        <div class="longdived">
            <div class="longdivedimg">
                <img src="${pageContext.request.contextPath}/assets/img/board/baby1.jpg" alt="">
            </div>
            <div class="longdivedinfo">
                <div class="infoname">
                    <p>박해준</p>
                </div>
                <div class="infodetail">
                    <p>안녕하세요 제 이름은 박해준입니다. 저는 킹왕짱 부팀장입니다.</p>
                </div>
                <div class="infolike">
                    <div class="heart">
                        <div>
                            <img src="${pageContext.request.contextPath}/assets/img/board/heart.png" alt="">
                        </div>
                        <div class="heartcount">
                            520
                        </div>
                    </div>
                    <div class="thumbsup">
                        <div style="padding-right : 8px"> 
                            <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                        </div>
                        <div class="thubmsupcount">
                        722
                        </div>
                    </div>
                </div>
            </div>
            <div class="longdivedetc">
                <div class="etchighlight">
                    <!-- 인기 -->
                </div>
               <!--  <div class="etcname">
                    추천 커뮤니티글
                </div> -->
                <!--    <div class="etcetc">
                    (6개월)
                </div> -->
            </div>
        </div>




        <div class="longdived">
            <div class="longdivedimg">
                <img src="${pageContext.request.contextPath}/assets/img/board/baby2.jpg" alt="">
            </div>
            <div class="longdivedinfo">
                <div class="infoname">
                    <p>여상혁</p>
                </div>
                <div class="infodetail">
                    <p>안녕하세요 제 이름은 여상혁입니다. 백엔드는 저한테 맡겨주세요.</p>
                </div>
                <div class="infolike">
                    <div class="heart">
                        <div>
                            <img src="${pageContext.request.contextPath}/assets/img/board/heart.png" alt="">
                        </div>
                        <div class="heartcount">
                            483
                        </div>
                    </div>
                    <div class="thumbsup">
                        <div style="padding-right : 8px">
                            <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                        </div>
                        <div class="thubmsupcount">
                            85
                        </div>
                    </div>
                </div>
            </div>
            <div class="longdivedetc">
                <div class="etchighlight">
                    <!-- 인기
                </div>
                <div class="etcname">
                    추천 커뮤니티글
                </div> -->
            </div>
        </div>
    </div>
    </div>



    <!-- ------------------------------------------------------------------------------------- -->


    <div class="faq-page-bar-wrap" style="padding-top : 100px;">
        <div class="Pagination__PaginationStyle-s1roa8-0 jvAeCO">
            <div class="bottom-page-bar">
                <ul class="pagination">
                    <li class="pagination-prev-btn disabled">
                        <a role="button">
                            <img src="${pageContext.request.contextPath}/assets/img/board/left2.png" alt="left" width="24px" style="color: rgb(207, 213, 219);">
                        </a>
                    </li>
                    <ul class="pagination-numbers">
                        <li class="page-number active">
                            <span class="">1</span>
                        </li>
                        <li class="page-number">
                            <a role="button" class="">2</a>
                        </li>
                        <li class="page-number">
                            <a role="button" class="">3</a>
                        </li>
                        <li class="page-number">
                            <a role="button" class="">4</a>
                        </li>
                        <li class="page-number">
                            <a role="button" class="">5</a>
                        </li>
                    </ul>
                    <li class="pagination-next-btn">
                        <a role="button">
                            <img src="${pageContext.request.contextPath}/assets/img/board/right2.png" alt="right" width="24px">
                            </i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    
    <jsp:include page="../fix/footer.jsp"/>

</body>

</html>