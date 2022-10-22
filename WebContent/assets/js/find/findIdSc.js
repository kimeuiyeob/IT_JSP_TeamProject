/**
 * 
 */

$('#next').on('click', function() {
	const nurserySchoolMemberEmail = $('input[name = "nurserySchoolMemberEmail"]');
	const nurserySchoolMemberPhoneNumber = $('input[name = "nurserySchoolMemberPhoneNumber"]');
	if (!nurserySchoolMemberEmail.val()) {
		alert('이메일을 입력해 주세요');
		nurserySchoolMemberEmail[0].focus();
		return;
	}
	if (!nurserySchoolMemberPhoneNumber.val()) {
		alert('전화번호 형식에 맞게 입력해 주세요.');
		nurserySchoolMemberPhoneNumber[0].focus();
		return;
	}

	$.ajax({
		url: contextPath + "/find/findIdOk.school",
		type: 'post',
		data: { "nurserySchoolMemberEmail": nurserySchoolMemberEmail.val(), "nurserySchoolMemberPhoneNumber": nurserySchoolMemberPhoneNumber.val() },
		dataType: "json",
		success: function(data) {
			if (data.result) {
				$('input[name = "nurserySchoolMemberId"]').val(data.result);
				resultForm.submit();
			} else {
				alert('입력한 정보에 일치하는 아이디가 없습니다');
			}
		}
	})
})