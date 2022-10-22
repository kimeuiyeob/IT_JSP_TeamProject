<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>board detail</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/boardDetail.css"/>
</head>

<body>
   
   <jsp:include page="../fix/header.jsp"/>

    <div id="news3Contents">
        <!-- 그림 2개 -->
        <div class="pictures">
            <div id="pic"><img src="${pageContext.request.contextPath}/assets/img/board/아이들8.jpg"></div>
        </div>


        <!-- 글  -->
        <div id="post">
            <div id="postTitle" style="margin:10px">저희 보육원의 아이들은요~</div>
        <div class="postInfo">
            <div id="postDate" style="border-bottom: solid 1px rgb(248 248 248); padding-bottom: 20px">
               <div class="postCategory" style="font-size: 17px"> 새싹 보육원 </div>
                <div class="right">2022.9.31</div>
            </div>
        </div>
            <div id="postBody" style="font-size: 20px">
                내용<br>
                내용<br>
                내용<br>
                내용<br>
                내용<br>
                내용<br>
                내용<br>
        </div>

            <div class="replyContent" style="margin-top: 50px; display:flex; align-items: center;">
               <span style="width: 10%; font-size: 18px">댓글</span>
               <span style="width: 75%; margin-left:20px">
                  <textarea placeholder="댓글을 입력하세요" rows="2" cols="" style="font-size: 18px; width:100%   ; resize: none; padding: 10px"></textarea>
               </span>
               <span style="width:15%">
                  <input type="button" value="등록 " 
                     style="
                        text-align: center;
                        font-weight: 600;
                      justify-content: center;
                      align-items: center;
                      border-color: transparent;
                      background-color: rgb(248, 248, 248);
                      height: 70px;
                      width: 100%;
                      margin-left:30px;
                      cursor: pointer;">
                  </span>
               
            </div>



    </div>

<jsp:include page="../fix/footer.jsp"/>
</body>

</html>
