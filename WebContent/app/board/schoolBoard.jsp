<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>보육원 커뮤니티</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/schoolBoard.css"/>
</head>
<body style="margin: 0px;">

<jsp:include page="../fix/header.jsp"/>

    <div style="padding-top : 200px">
        <div class="subjectname">
            <div>
                보육원 커뮤니티 활동
            </div>
            <div>
                <input type="button" id="write" value="글 작성하기" style=" margin-left: 977px;" onclick="location.href='${pageContext.request.contextPath}/board/boardwrite.schoolcom'">
            </div>
        </div>
    </div>



    <div class="longdivs">
      <c:choose>   
         <c:when test="${boards != null and fn:length(boards)>0}">
            <!-- 빠른for문: forEach(String name: names)라면 names는 ${boards}  -->
            <c:forEach var="board" items="${boards}">
                   <div class="longdived">
                        <div class="longdivedimg">
                            <img src="${pageContext.request.contextPath}/assets/img/board/baby1.jpg" alt="">
                        </div>
                   <a style="text-decoration: none; color: black"
                    href="${pageContext.request.contextPath}/board/boardDetailOk.schoolcom?nurserySchoolCommunityNumber=${board.nurserySchoolCommunityNumber}">
                        <div class="longdivedinfo">
                           <!-- 작성자이름 -->
                            <div class="infoname"><p><c:out value="${board.getNurserySchoolMemberName()}"/></p></div>
                            <h3 style="display: none">"${board.getNurserySchoolCommunityNumber()}"</h3>
                        </a>
                            <div class="infodetail">
                              <!-- 게시글 내용 -->
                         <a style="text-decoration: none; color: black"
                         href="${pageContext.request.contextPath}/board/boardDetailOk.schoolcom?nurserySchoolCommunityNumber=${board.nurserySchoolCommunityNumber}">
                                <p><c:out value="${board.getNurserySchoolCommunityContent()}"/></p>
                             </a>
                            </div>
                            <div class="infolike">
                                <div class="heart">
                                </div>
                                <div class="thumbsup">
                                    <div style="padding-right : 8px">
                                        <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                                    </div>
                                    <div class="thubmsupcount"><c:out value="${board.getNurserySchoolCommunityHits()}"/></div>
                                </div>
                            </div>
                        </div>
                        <!--=========================인기추천 수정========================= -->
                        <div class="longdivedetc">
                            <div class="etchighlight">인기</div>
                            <div class="etcname">추천 커뮤니티글</div>
                        </div>
                        <!--=========================인기추천 수정========================= -->
                    </div>
            </c:forEach>
         </c:when>
         
         <c:otherwise>
            <div style="margin: 0 auto; padding-top: 100px; font-size: 18px">등록된 게시물이 없습니다</div>   
         </c:otherwise>
      </c:choose>








    </div>

    <div class="givepaadding" style="padding-bottom : 80px"></div>

    
    
    
    
    
    
    
    <!-- ===================================================================================== -->
   <!-- 비 인기글 -->


    <!-- ------------------------------------------------------------------------------------- -->
<!-- 페이징처리  -->
    <div class="faq-page-bar-wrap" style="padding-top : 100px;">
        <div class="Pagination__PaginationStyle-s1roa8-0 jvAeCO">
            <div class="bottom-page-bar">
                <ul class="pagination">
               <c:if test="${prev}">
                       <a href="${pageContext.request.contextPath}/board/scboardOk.schoolcom?page=${startPage - 1}">
                           <img src="${pageContext.request.contextPath}/assets/img/board/left2.png" alt="left" width="24px" style="color: rgb(207, 213, 219);">
                       </a>
               </c:if>
                   <c:forEach var="i" begin="${startPage}" end="${endPage}">
                      <c:choose>
                         <c:when test="${not(i eq page)}">

                              <li class="page-number active">
                                 <a href="${pageContext.request.contextPath}/board/scboardOk.schoolcom?page=${i}">
                                     <span class=""><c:out value="${i}"/></span>
                                 </a>
                              </li>
         
                                 <a href="${i}" style="margin-top: 6px;">
                                     <img src="${pageContext.request.contextPath}/assets/img/board/right2.png" alt="right" width="24px">
                                 </a>
                         </c:when>
                         <c:otherwise>
                                  <span class=""><c:out value="${i}"/></span>
                         </c:otherwise>
                        </c:choose>
                   </c:forEach>
                   
                   
                  <c:if test="${next}">
                       <a href="${pageContext.request.contextPath}/board/scboardOk.schoolcom?page=${endPage + 1}">
                           <img src="${pageContext.request.contextPath}/assets/img/board/left2.png" alt="left" width="24px" style="color: rgb(207, 213, 219);">
                       </a>
               </c:if>
                </ul>
            </div>
        </div>
    </div>

<jsp:include page="../fix/footer.jsp"/>

</body>
<script>
   $("longdived").click

</script>
</html>