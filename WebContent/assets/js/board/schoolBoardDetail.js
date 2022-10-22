/**
 * 보육원 게시물 댓글
 */
 var contextPath = "${pageContext.request.contextPath}";



const $modfiyButtons = $("div.modify-button"); 
const $deleteButtons = $("div.delete-button"); 

/*show();*/

/* 전체목록 다시 불러오기 */
function show(){
   $.ajax({
      url: "/schoolComments/listOk.comments",
      type: "get",
      data: {nurserySchoolCommunityNumber: nurserySchoolCommunityNumber},
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success: showList
   });
}

function showList(replies){
   if(replies.length > 0){
      let text = "";
      
      replies.forEach(reply => {
         /**/
         text += `<div class="reply">`;
         text += `<div class="info">`
         text += `<p class="writer">` + reply.memberId + `</p>`;
         text += `<p class="date">` + reply.replyDate + `</p>`;
         text += `</div>`
         text += `<div class="content" style="width:100%">`;
         /* pre태그는 건들일 수 없음, 여기에 댓글박스 삽입*/
         text += `<pre>` + reply.replyContent + `</pre>`;
         text += `</div>`;
         
         if(reply.memberId == memberId){
            text += `<div class="button-wrap">`;
            text += `<div class="modify-ready-button" data-number=` + reply.replyNumber +`></div>`;
            text += `<div class="modify-button" data-number=` + reply.replyNumber +` style="display:none;"></div>`;
            text += `<div class="delete-button" data-number=` + reply.replyNumber +`></div>`;
            text += `</div>`;
         }
         text += `</div>`;
      });
      
      $("#replies").html(text);
   }
}

function send(){
   let commnetContent = $("textarea").val();

   console.log(commnetContent);
   console.log(nurserySchoolCommunityNumber);
   console.log(nurserySchoolMemberName);
   
   if(!commnetContent){
      alert("댓글 내용을 작성해주세요.");
      return;
   }
   
   $.ajax({
      url: "/schoolComments/writeOk.comments",
      data: {commnetContent: commnetContent, nurserySchoolCommunityNumber: nurserySchoolCommunityNumber, nurserySchoolMemberName: nurserySchoolMemberName},
      success: function(){
         console.log("ajax성공!");
         
      }
   });
}

// 이벤트 위임
// 미리 작성된 HTML 태그에 이벤트를 부여하고, DOM으로 추가될 자식에게 이벤트를 위임해준다.
$("#replies").on("click", "div.delete-button", function(){
   let replyNumber = $(this).data("number");
   $.ajax({
      url: "/reply/deleteOk.re",
      type: "get",
      data: {replyNumber: replyNumber},
      contentType: "application/json; charset=utf-8",
      success: function(){show();}
   });
});

$("modify-ready-button").on("click", function(){
   $(this).closest(".button-wrap");
   $(this).hide();
});

$("modify-button").on("click", function(){
   /*console.log("나 눌렸엉")*/
   $.ajax({
      url: "/reply/modifyOk.re",
      data: {replyNumber: replyNumber, replyContent:$(this).data("number")},
      contentType: "application/json; charset=utf-8",
      /*success가 있어야 페이지 이동없이 수정가능*/
      success: function(){show();}
   });
   
})


