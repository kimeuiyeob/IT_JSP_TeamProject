/**
 * 
 */

$('#next').on('click', function() {
	const nurserySchoolMemberPassword = $('input[name = "nurserySchoolMemberPassword"]');
	const checkNurserySchoolMemberPassword = $('input[name = "checkNurserySchoolMemberPassword"]');
	if (!nurserySchoolMemberPassword.val()) {
		alert('새 비밀번호를 입력하세요.');
		nurserySchoolMemberPassword[0].focus();
		return;
	}
	//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
	var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//한글이 포함되었는 지 검사
	var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	//같은 문자 4번 이상
	var wordCheck = /(\w)\1\1\1/;
	//공백검사
	var spaceCheck = /\s/;

	console.log(updateForm.nurserySchoolMemberPassword.value)
	if (!pwCheck.test(updateForm.nurserySchoolMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		nurserySchoolMemberPassword[0].focus();
		return;
	}

	if (hangleCheck.test(updateForm.nurserySchoolMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		nurserySchoolMemberPassword[0].focus();
		return;
	}

	if (wordCheck.test(updateForm.nurserySchoolMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		nurserySchoolMemberPassword[0].focus();
		return;
	}

	if (spaceCheck.test(updateForm.nurserySchoolMemberPassword.value)) {
		alert('비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.');
		nurserySchoolMemberPassword[0].focus();
		return;
	}
	
	if (!checkNurserySchoolMemberPassword.val()) {
		alert('새 비밀번호 확인을 입력해 주세요.');
		checknurserySchoolMemberPassword[0].focus();
		return;
	}
	if (!(nurserySchoolMemberPassword.val() == checkNurserySchoolMemberPassword.val())) {
		alert('새 비밀번호와 비밀번호 확인이 일치하지 않습니다.');
		checkNurserySchoolMemberPassword[0].focus();
		return;
	}
	alert('비밀번호가 변경되었습니다');
	updateForm.submit();

})