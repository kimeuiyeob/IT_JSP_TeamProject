<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>news3</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/boardDetail.css"/>
</head>
<style>
   textarea{
   font-family: inherit;
   font-size: inherit;
   }
</style>

<body>

<jsp:include page="../fix/header.jsp"/>

    <div id="news3Contents">
		<div style="width:100%; margin-bottom: 30px">
			<c:choose>
	      		<c:when test="${individualMemberNumber eq board.getIndividualMemberNumber()}">
		      		<!-- 수정버튼 -->
		           <input style="text-align: center;
		            font-weight: 600;
		            justify-content: center;
		            align-items: center;
		            border-color: transparent;
		            background-color: rgb(248, 248, 248);
		            height: 30px;
		            width: 7%;
		            margin-left: 76%;
		            cursor: pointer;"
		            type="button" value="수정" onclick="location.href = '${pageContext.request.contextPath}/board/boardUpdate.indicom?individualCommunityNumber=${board.getIndividualCommunityNumber()}'"/>
		      
		         	<!-- 삭제버튼 -->
			         <input style="text-align: center;
			         font-weight: 600;
			         justify-content: center;
			         align-items: center;
			         border-color: transparent;
			         background-color: rgb(248, 248, 248);
			         height: 30px;
			         width: 7%;
			         margin-left: 10px;
			         cursor: pointer;"
			         id="deletePost"
			         type="button" value="삭제" onclick="location.href = '${pageContext.request.contextPath}/board/boardDeleteOk.indicom?individualCommunityNumber=${board.getIndividualCommunityNumber()}'"/>
		            
		            <!-- 목록버튼 -->
		           <input style="text-align: center;
		            font-weight: 600;
		            justify-content: center;
		            align-items: center;
		            border-color: transparent;
		            background-color: rgb(248, 248, 248);
		            height: 30px;
		            width: 7%;
		            margin-left: 10px;
		            cursor: pointer;"
		            type="button" value="목록" onclick="location.href = '${pageContext.request.contextPath}/board/indiBoard.indicom'"/>
      		</c:when>
      		<c:otherwise>
		            <!-- 목록버튼 -->
		           <input style="text-align: center;
		            font-weight: 600;
		            justify-content: center;
		            align-items: center;
		            border-color: transparent;
		            background-color: rgb(248, 248, 248);
		            height: 30px;
		            width: 7%;
		            margin-left: 90%;
		            cursor: pointer;"
		            type="button" value="목록" onclick="location.href = '${pageContext.request.contextPath}/board/indiBoard.indicom'"/>
	      	
      		</c:otherwise>
      	</c:choose>
      
		</div>	

    
        <!-- 그림 2개 -->
        <div class="pictures">
            <div id="pic">
               <c:choose>
	               	<c:when test="${files != null and fn:length(files) > 0}">
	                	<c:forEach var="file" items="${files}">
                    		<!--  a태그 -->
                    		<a href="${pageContext.request.contextPath}/individualFile/download.file?fileSystemName=${file.getFileSystemName()}&fileOriginalName=${file.getFileOriginalName()}">
	                        	<c:out value="${file.getFileOriginalName()}"/>
	                        	<img src="${pageContext.request.contextPath}/assets/img/board/아이들8.jpg">
	                        </a>
	                        <br>
						</c:forEach>
	                 </c:when>
	                 <c:otherwise>
			         첨부파일이 없습니다.
			         <hr>
	                 </c:otherwise>
                 </c:choose>
            
            </div>
        </div>

        <!-- 게시물  -->
        <div id="post">
        <!-- 제목 -->
            <div id="postTitle" style="margin:10px" name="individualCommunityTitle">${board.getIndividualCommunityTitle()}</div>
            <!-- 커뮤니티 넘버 -->
            <input type="hidden" name="individualCommunityNumber" value="'${board.getIndividualCommunityNumber()}'"/>
            <!-- 작성자 넘버 -->
            <input type="hidden" name="individualMemberNumber" value='${board.getIndividualMemberNumber()}'/>
        <div class="postInfo">
            <div id="postDate" style="border-bottom: solid 1px rgb(248 248 248); padding-bottom: 20px">
               <!-- 작성자 이름 -->
               <input style="border-color: transparent; margin: 0 10px" class="postCategory writer" style="font-size: 17px" name="individualMemberId" value="${board.getIndividualMemberId()}" readonly>
               
                <!-- 작성날짜 -->
                <div class="right date">${board.getIndividualCommunityDateCreated()}</div>
            </div>
        </div>
          <!-- 게시글 내용 -->
        <div id="postBody" style="font-size: 20px">${board.getIndividualCommunityContent()}</div>

<!--         <div class="replyContent" style="margin-top: 50px; display:flex; align-items: center;">
           <span style="width: 10%; font-size: 18px">댓글</span>
           <form action="#" class="combined" style="width:100%;" name="commentForm">
            <span style="width: 65%; margin-left:20px">
               <textarea name="commnetContent" placeholder="댓글을 입력하세요" rows="2" cols="" style="font-size: 18px; width:85%   ; resize: none; padding: 10px; margin-top:10px"></textarea></span>
            <span style="width:10%"><input type="button" value="등록 " style="text-align: center;font-weight: 600;justify-content: center;align-items: center;border-color: transparent;background-color: rgb(248, 248, 248);height: 70px;width: 7%;margin-left:30px;cursor: pointer;"                         
                   onclick="send()"></span>
        </div> -->
           </form>
    </div>
</div>

<jsp:include page="../fix/footer.jsp"/>

</body>
<script>
/* name으로 된 것은 객체로 사용가능하다 */
var contextPath = "${pageContext.request.contextPath}";

/* 컨트롤러 타고 전달받은 "board" */
let nurserySchoolCommunityNumber = "${board.getIndividualCommunityNumber()}";

 /* 세션스코프로 접근한 회원 정보 */
/* let nurserySchoolMemberName = "${sessionScope.nurserySchoolMemberName}"; */

let nurserySchoolMemberName = "${board.getIndividualMemberId()}";

let nurserySchoolMemberNumber = "${sessionScope.IndividualMemberNumber}";

$("#deletePost").click(function(){
   alert("게시글이 삭제되었습니다.");
})

$(".files").change(function(e){
    var file = e.target.files[0];
    var img = $(this).find("img");
    var reader = new FileReader();
    reader.readAsDataURL(file);
    
     reader.onload = function(e){
        if(e.target.result.indexOf("image") != -1){
           img.attr("src", e.target.result)
        }else{
           /* img.attr("src", "${pageContext.request.contextPath}/images/no_img.jpg"); */
        }
     }
  });

</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
   
</script>
</html>