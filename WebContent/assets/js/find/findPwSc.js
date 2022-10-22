/**
 * 
 */

$('#next').on('click', function() {
	const nurserySchoolMemberId = $('input[name = "nurserySchoolMemberId"]');
	const nurserySchoolMemberPhoneNumber = $('input[name = "nurserySchoolMemberPhoneNumber"]');
	if (!nurserySchoolMemberId.val()) {
		alert('아이디를 입력해 주세요');
		nurserySchoolMemberId[0].focus();
		return;
	}
	if (!nurserySchoolMemberPhoneNumber.val()) {
		alert('전화번호 형식에 맞게 입력해 주세요.');
		nurserySchoolMemberPhoneNumber[0].focus();
		return;
	}

	$.ajax({
		url: contextPath + "/find/findPwOk.school",
		type: 'post',
		data: { "nurserySchoolMemberId": nurserySchoolMemberId.val(), "nurserySchoolMemberPhoneNumber": nurserySchoolMemberPhoneNumber.val() },
		dataType: "json",
		success: function(data) {
			if (data.result) {
				console.log('아작1')
				$('input[name = "nurserySchoolMemberNumber"]').val(data.result);
				resultForm.submit();
			} else {
				console.log('아작2')
				alert('입력한 정보에 일치하는 아이디가 없습니다');
			}
		}
	})
})