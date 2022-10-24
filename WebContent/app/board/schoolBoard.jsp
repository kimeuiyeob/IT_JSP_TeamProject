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
                보육원 커뮤니티
            </div>
            <div>
                <input type="button" id="write" value="글 작성하기" style=" margin-left: 1024px;" onclick="writePost()">
            </div>
        </div>
    </div>



		    <div class="longdivs">
      <c:choose>   
         <c:when test="${boards != null and fn:length(boards)>0}">
            <c:forEach var="board" items="${boards}">
                   <div class="longdived">
                        <div class="longdivedimg">
                            <img src="${pageContext.request.contextPath}/assets/img/board/noPicture.jpg" alt="">
                        </div>
                        <input type="hidden" name="nurserySchoolCommunityNumber" value="${board.getNurserySchoolCommunityNumber()}">
                   <a style="text-decoration: none; color: black"
                    href="${pageContext.request.contextPath}/board/boardDetailOk.schoolcom?nurserySchoolCommunityNumber=${board.nurserySchoolCommunityNumber}">
                        <div class="longdivedinfo" style="height:15%">
                           <!-- 작성자이름 -->
                            <div class="infoname"><p><c:out value="${board.getNurserySchoolMemberName()}"/></p></div>
                        </a>
                            <div class="infodetail">
                              <!-- 게시글 내용 -->
                         <a style="text-decoration: none; color: black"
                         href="${pageContext.request.contextPath}/board/boardDetailOk.schoolcom?nurserySchoolCommunityNumber=${board.nurserySchoolCommunityNumber}">
                                <p><c:out value="${board.getNurserySchoolCommunityTitle()}"/></p>
                             </a>
                            </div>
                            <div class="infolike">
                                <div class="heart" style="width:12%">
                                </div>
                                <div class="thumbsup" style="display: flex">
                                    <div style="padding-right : 8px">
                                        <img src="${pageContext.request.contextPath}/assets/img/board/eye.png" alt="">
                                    	<c:out value="${board.getNurserySchoolCommunityHits()}"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <c:if test="${board.getNurserySchoolCommunityHits()>7}">
	                        <div class="longdivedetc">
	                            <div class="etchighlight">인기</div>
	                            <div class="etcname">커뮤니티 글</div>
	                        </div>
                        </c:if>                        
                    </div>
            </c:forEach>
         </c:when>
         
         <c:otherwise>
            <div style="margin: 0 auto; padding-top: 100px; font-size: 18px">등록된 게시물이 없습니다</div>   
         </c:otherwise>
      </c:choose>




    </div>





    <div class="givepaadding" style="padding-bottom : 80px"></div>

    





    <!-- ------------------------------------------------------------------------------------- -->
<!-- 페이징처리  -->
    <div class="faq-page-bar-wrap" style="padding-top : 100px;">
        <div class="Pagination__PaginationStyle-s1roa8-0 jvAeCO">
            <div class="bottom-page-bar">
                <ul class="pagination">
                
                
                
               <c:if test="${prev}">
                       <a href="${pageContext.request.contextPath}/board/schoolBoard.schoolcom?page=${startPage - 1}">&lt;</a>
               </c:if>
               
               
               
               <c:forEach var="i" begin="${startPage}" end="${endPage}">
                  <c:choose>
                     <c:when test="${not(i eq page)}">
                       <a href="${pageContext.request.contextPath}/board/schoolBoard.schoolcom?page=${i}" style="text-decoration: none; color:black">
                       	<c:out value="${i}"/>&nbsp;&nbsp;</a>
                     </c:when>
                     <c:otherwise>
                     	<a style="color: black;display: flex;align-items: center;">
                           <span style="color:#fd3049"><c:out value="${i}"/>&nbsp;&nbsp;</span>	</a>
                     </c:otherwise>
                    </c:choose>
               </c:forEach>
                   
                   
                  	<c:if test="${next}">
                       <a href="${pageContext.request.contextPath}/board/schoolBoard.schoolcom?page=${endPage + 1}">&gt;</a>
              		</c:if>
                </ul>
            </div>
        </div>
    </div>

<jsp:include page="../fix/footer.jsp"/>

</body>
<script>
   $("longdived").click
   function writePost(){
	   if(${sessionScope.nurserySchoolMemberNumber != null}){
		   location.href='${pageContext.request.contextPath}/board/boardwrite.schoolcom';
	   }else if(${sessionScope.individualMemberNumber != null}){
		   alert("보육원 전용 커뮤니티입니다");
	   }else{
		   alert("로그인 후 서비스 이용이 가능합니다");
		   location.href='${pageContext.request.contextPath}/member/login.me';
	   } 
   }
</script>
</html>