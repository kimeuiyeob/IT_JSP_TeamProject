/**
 * 
 */

$('#next').on('click', function() {
	const individualMemberName = $('input[name = "individualMemberName"]');
	const individualMemberPhoneNumber = $('input[name = "individualMemberPhoneNumber"]');
	if (!individualMemberName.val()) {
		alert('이름을 입력해 주세요');
		individualMemberName[0].focus();
		return;
	}
	if (!individualMemberPhoneNumber.val()) {
		alert('전화번호 형식에 맞게 입력해 주세요.');
		individualMemberPhoneNumber[0].focus();
		return;
	}

	$.ajax({
		url: contextPath + "/find/findIdOk.indi",
		type: 'post',
		data: { "individualMemberName": individualMemberName.val(), "individualMemberPhoneNumber": individualMemberPhoneNumber.val() },
		dataType: "json",
		success: function(data) {
			if (data.result) {
				$('input[name = "individualMemberId"]').val(data.result);
				resultForm.submit();
			} else {
				alert('입력한 정보에 일치하는 아이디가 없습니다');
			}
		}
	})
})