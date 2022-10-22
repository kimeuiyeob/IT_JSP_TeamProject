/**
 * 
 */

$('#next').on('click', function() {
	const individualMemberId = $('input[name = "individualMemberId"]');
	const individualMemberPhoneNumber = $('input[name = "individualMemberPhoneNumber"]');
	if (!individualMemberId.val()) {
		alert('아이디를 입력해 주세요');
		individualMemberId[0].focus();
		return;
	}
	if (!individualMemberPhoneNumber.val()) {
		alert('전화번호 형식에 맞게 입력해 주세요.');
		individualMemberPhoneNumber[0].focus();
		return;
	}

	$.ajax({
		url: contextPath + "/find/findPwOk.indi",
		type: 'post',
		data: { "individualMemberId": individualMemberId.val(), "individualMemberPhoneNumber": individualMemberPhoneNumber.val() },
		dataType: "json",
		success: function(data) {
			if (data.result) {
				$('input[name = "individualMemberNumber"]').val(data.result);
				resultForm.submit();
			} else {
				alert('입력한 정보에 일치하는 아이디가 없습니다');
			}
		}
	})
})