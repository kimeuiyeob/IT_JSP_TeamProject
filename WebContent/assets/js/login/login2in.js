/**
 * 
 */
console.log($('input[name = "individualMemberId"]'))

$('input[name = "individualMemberId"]')

const loginButton = $('#login');

loginButton.on("click", function() {
	const individualMemberId = $('input[name = "individualMemberId"]')
	const individualMemberPassword = $('input[name = "individualMemberPassword"]')

	if (!individualMemberId.val()) {
		$('#loginState').text("아이디를 입력해주세요");
		individualMemberId[0].focus();
		return;
	}
	if (!individualMemberPassword.val()) {
		$('#loginState').text("비밀번호를 입력해주세요");
		individualMemberPassword[0].focus();
		return;
	}

	loginForm.submit();
})


