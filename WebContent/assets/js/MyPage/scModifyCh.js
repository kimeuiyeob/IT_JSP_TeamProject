/**
 * 
 */
const Button = $('#button');

Button.on("click", function() {
   const nurserySchoolMemberPassword = $('input[name = "nurserySchoolMemberPassword"]')

   if (!nurserySchoolMemberPassword.val()) {
      $('#userPw').text("비밀번호를 입력해주세요");
      nurserySchoolMemberPassword[0].focus();
      return;
   }
})