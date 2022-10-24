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
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/board/schoolBoardWrite.css"/>
</head>

<body>

    <div id="modifySchool" style="padding-right: 4px;">
        <header>
            <div id="headerBox">

                <div class="logo" style="padding-top: 5px;height: 25px;">
	        	       <img src="${pageContext.request.contextPath}/assets/img/board/logo.png">
                </div>

                <div class="search_box">
                    <input id="searchInput" type="text" placeholder="정을 옮기는 이정표입니다">
               <img src="${pageContext.request.contextPath}/assets/img/board/search.png">                
                  </div>
                <div class="user">
                    <span>
                    </span>
                    <div style="width: 20px;"></div>
                    <span>
                    </span>
                    <div style="width: 20px;"></div>
                    <div id="userWrap">
                        <picture class="userIcon">
                            <source type="image/webp"
                                srcset="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/640xauto.webp 640w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/750xauto.webp 750w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/828xauto.webp 828w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1080xauto.webp 1080w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1200xauto.webp 1200w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp 1920w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/2048xauto.webp 2048w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/3840xauto.webp 3840w">
                            <img alt="profile"
                                srcset="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/640xauto 640w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/750xauto 750w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/828xauto 828w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1080xauto 1080w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1200xauto 1200w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto 1920w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/2048xauto 2048w,https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/3840xauto 3840w"
                                src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27"
                                loading="lazy" class="css-1u3hmek">
                        </picture>
                        <span id="bottomPointer" style="position: absolute; left:96.4%; top:13px">
                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                                <path
                                    d="M2.075 8.825 3.49 7.41c.1-.1.255-.1.355 0L12 15.565l8.16-8.16c.1-.1.255-.1.355 0L21.93 8.82c.1.1.1.255 0 .355l-9.75 9.75c-.1.1-.255.1-.355 0L2.075 9.18c-.1-.1-.1-.26 0-.355Z"
                                    class="css-17ivn46"></path>
                            </svg>
                        </span>
                    </div>
                </div>

                <div id="miniBox">
                    <div id="miniBox2">
                        <div id="miniBox3">
                            <div id="miniProfile">
                                <img src="https://cdn.class101.net/images/cba86b3c-f6a4-42b3-9bbd-bf6c09e49d27/1920xauto.webp"
                                    alt="">
                                <div style="margin: 10px;">
                                     <div>${nurserySchoolMemberId}</div>
                                    <div id="miniProfileRight"><a href="myPage1.html " style="color: orange;"><a href="${pageContext.request.contextPath}/app/404/404.jsp"  style="text-decoration: none; color:black">마이페이지</a>
                                            <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
                                                class="css-jdqsvn" style="width: 10px; height: 10px;">
                                                <path
                                                    d="M8.825 21.93 7.41 20.515c-.1-.1-.1-.255 0-.355l8.155-8.155-8.16-8.16c-.1-.1-.1-.255 0-.355L8.82 2.075c.1-.1.255-.1.355 0l9.75 9.75c.1.1.1.255 0 .355L9.18 21.93c-.1.1-.26.1-.355 0Z"
                                                    class="css-bchp3n"></path>
                                            </svg>
                                        </a></div>
                                </div>
                            </div>
                            <div class="css-1g5174"></div>
                            <div style="text-align: center;"> <a href="${pageContext.request.contextPath}/member/index.me?logout=true"  id="logout" style="margin-right: 18px; text-decoration: none; color:black"> 로그아웃</a></div>
                        </div>
                    </div>
                </div>


            </div>
        </header>



        <div style="margin-left: 23px; font-size: 15px; font-weight: bold; color: rgb(26, 26, 26);
        line-height: 34px; padding-top : 10px ;margin-bottom :25px">
            <h2 style="letter-spacing: -2.5px;">글 작성하기</h2>
        </div>

       <div class="sc-e489b3e-3 gEAbaC" style="margin-top: -10px; margin-bottom: -20px;">
           <div class="sc-e489b3e-7 dkxgGx" style="padding-right: 20px; margin-left: 22px;">

               <!-- 프로필 사진 -->
               <div size="28" class="sc-1602cde7-0 bvsxdu">
                  <img sizes=" 100vw"
                    src="${pageContext.request.contextPath}/assets/img/board/smalluser.png"
                    style="height: 30px; padding-right: 5px">
               </div>
          <form action="${pageContext.request.contextPath}/board/scboardwriteOk.schoolcom" name="writeForm" method="post" enctype="multipart/form-data" style="display: flex;align-items: center;">         
               <!-- 작성자 -->
               <div class="writer" md="Body2" class="sc-8ee9b8f2-0 gBPcnX sc-e489b3e-8 eaqXQT"
                   style="font-size : 14px; letter-spacing: -1px; padding-right: 394px;"><c:out value="${nurserySchoolMemberId}"/></div>
    				<!-- 파일첨부 -->
    				<div class="files">
	                   <div style="display: flex;">
	                       <div class="image-upload">
	                           <label for="file-input" style="right: 20px;">
	                           <img
	                             src="${pageContext.request.contextPath}/assets/img/board/putpicture.png"
	                             style="height: 43px; cursor: pointer;position: absolute;right: 3%;top: 12%;">
	                           </label>
                           <input name="individualCommunityImage" id="file-input" type="" style="display: none;"onclick="noReady()"/>
							<!--<input name="individualCommunityImage" id="file-input" type="file" style="display: none;"onchange="javascript:document.getElementById('fileName').value = this.value.split('\\')[this.value.split('\\').length-1]"/> -->
                           <!-- <input type="button" onclick="cancelFile('board_file1')" value="첨부 삭제"> -->
	                       </div>
	                   </div>
                   </div>
           </div>
       </div>


      <!-- 제목 -->
         <input id="boardTitle" type="text" placeholder="제목을 입력하세요" name="nurserySchoolCommunityTitle"
            style="padding: 16px; margin: 20px 20px 0 20px; width: 605px; height: 20px">
         
            <!-- 내용 -->
         <div class="sc-e489b3e-9 iLCbOX" style="margin: 20px; margin-right: 14px;">
            <div class="sc-1f17b81e-1 fGEGPt postWrite">
               <textarea id="boardContent" class="sc-1f17b81e-0 dHJCuF sc-e489b3e-10 iTqZES  "
                  placeholder="무단 홍보, 비방 글은 삭제될 수 있습니다." name="nurserySchoolCommunityContent" autocomplete="off"></textarea>
            </div>
         </div>


         <!-- 첨부파일 -->
         <!-- 첨부파일 이름은 #fileName에 넣으세요 -->
         <div id="attachedFile" style="padding: 0 20px 0 20px; color:rgb(190 190 190);">         
            첨부된 파일:<input type="text" id="fileName" style="border-color:transparent" readonly="readonly">
         </div>

       <div id="withdrawal">
           <div id="content2">
               <div id="first">
                   <input type="button" class="withdrawalSubmit" id="save" value="저장하기" onclick="send()"/>
               </div>
                   <input type="button" style="margin-top:20px" class="cancel" id="save" value="취소하기" onclick="location.href='${pageContext.request.contextPath}/board/schoolBoard.schoolcom'" class="lists"/>
           </div>
       </div>
   </form>

</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/board/schoolBoardWrite.js"></script>
<script>
function noReady(){
	alert("페이지 준비중입니다");
}


function send(){
   console.log(writeForm.nurserySchoolCommunityTitle.value);
   console.log(writeForm.nurserySchoolCommunityContent.value);
   
   if(!$("#boardTitle")){
      alert("제목을 작성해주세요.");
      return;
   }
   if(!$("#boardContent")){
      alert("내용을 작성해주세요.");
      return;
   }
   writeForm.submit();
}

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
 
 function cancelFile(fileName){
    $("input#" + fileName).val("");
    $("img#" + fileName + "Img").attr("src", "${pageContext.request.contextPath}/images/filePlus.png");
 }

</script>
</html>