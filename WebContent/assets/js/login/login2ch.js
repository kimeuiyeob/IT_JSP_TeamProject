/**
 * 
 */
console.log($('input[name = "nurserySchoolMemberId"]'))

$('input[name = "nurserySchoolMemberId"]')

const loginButton = $('#login');

loginButton.on("click", function() {
	const nurserySchoolMemberId = $('input[name = "nurserySchoolMemberId"]')
	const nurserySchoolMemberPassword = $('input[name = "nurserySchoolMemberPassword"]')

	if (!nurserySchoolMemberId.val()) {
		$('#loginState').text("아이디를 입력해주세요");
		nurserySchoolMemberId[0].focus();
		return;
	}
	if (!nurserySchoolMemberPassword.val()) {
		$('#loginState').text("비밀번호를 입력해주세요");
		nurserySchoolMemberPassword[0].focus();
		return;
	}

	loginForm.submit();
})


