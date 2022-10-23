/*----------------------------우편번호api------------------------*/
function find() {
	new daum.Postcode({
		oncomplete: function(data) {
			// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

			// 각 주소의 노출 규칙에 따라 주소를 조합한다.
			// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			var addr = ''; // 주소 변수

			//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
				addr = data.roadAddress;
				$("#nurserySchoolAddresssdiv").text("");
			} else { // 사용자가 지번 주소를 선택했을 경우(J)
				addr = data.jibunAddress;
				$("#nurserySchoolAddressdiv").text("");
			}

			// 우편번호와 주소 정보를 해당 필드에 넣는다.
			$("input[name='zipCode']").val(data.zonecode);
			$("input[name='nurserySchoolAddress']").val(addr);
			// 커서를 상세주소 필드로 이동한다.
			$("input[name='nurserySchoolDetailedAddress']")[0].focus();
		}
	}).open();
}
/*--------------------------아이디----------------------------*/
$("input[name='nurserySchoolMemberId']").on("blur", function() {
	checkId($(this).val());
});

var idCheck = false;

function checkId(nurserySchoolMemberId) {
	if (!nurserySchoolMemberId) {
		$("#nurserySchoolMemberIddiv").text("아이디를 입력해주세요.");
		$("#nurserySchoolMemberIddiv").css("color", "red");
		return;
	} else {
		$("#nurserySchoolMemberIddiv").text("");
	}

	$.ajax({
		url: contextPath + "/login/checkIdOk.school",
		type: "get",
		data: { nurserySchoolMemberId: nurserySchoolMemberId },
		dataType: "json",
		contentType: "application/json; charset=utf-8",
		success: function(data) {
			if (!data.result) {
				$("#nurserySchoolMemberIddiv").text("사용가능한 아이디입니다.")
				$("#nurserySchoolMemberIddiv").css("color", "blue");
				idCheck = false;
			} else {
				$("#nurserySchoolMemberIddiv").text("중복된 아이디입니다.")
				$("#nurserySchoolMemberIddiv").css("color", "red");
				idCheck = true;
			}
		}

	});
}

/*------------------------보육원명 안썻을 때----------------------*/
$("input[name='nurserySchoolMemberName']").on("blur", function() {
	if (!$(this).val()) {
		$("#nurserySchoolMemberNamediv").text("보육원이름을 입력해주세요.");
		$("#nurserySchoolMemberNamediv").css("color", "red");
	} else {
		$("#nurserySchoolMemberNamediv").text("");
	}
});

/*------------------------전화번호 안썻을 때(중복검사 필요)----------------------*/
$("input[name='nurserySchoolMemberPhoneNumber']").on("blur", function() {
	checkPhoneNumber($(this).val());
});

let phoneNumberCheck = "";

function checkPhoneNumber(nurserySchoolMemberPhoneNumber) {
	if (!nurserySchoolMemberPhoneNumber) {
		$("#nurserySchoolMemberPhoneNumberdiv").text("전화번호를 입력해주세요.");
		$("#nurserySchoolMemberPhoneNumberdiv").css("color", "red");
		return;
	} else {
		$("#nurserySchoolMemberPhoneNumberdiv").text("");
	}

	$.ajax({
		url: contextPath + "/login/checkPhoneNumberOk.school",
		type: "get",
		data: { nurserySchoolMemberPhoneNumber: nurserySchoolMemberPhoneNumber },
		dataType: "json",
		contentType: "application/json; charset=utf-8",
		success: function(data) {
			if (!data.result) {
				$("#nurserySchoolMemberPhoneNumberdiv").text("사용 가능한 번호입니다.")
				$("#nurserySchoolMemberPhoneNumberdiv").css("color", "blue");
				phoneNumberCheck = false;
			} else {
				$("#nurserySchoolMemberPhoneNumberdiv").text("이미 가입된 번호입니다.")
				$("#nurserySchoolMemberPhoneNumberdiv").css("color", "red");
				phoneNumberCheck = true;
			}
		}

	});
}
/*------------------------주소 안썻을 때----------------------*/
$("input[name='nurserySchoolAddress']").on("blur", function() {
	if (!$(this).val()) {
		$("#nurserySchoolAddressdiv").text("우편번호 찾기를 통해 주소를 입력해주세요.");
		$("#nurserySchoolAddressdiv").css("color", "red");
	} else {
		$("#nurserySchoolAddressdiv").text("");
	}
});
/*------------------------상세주소 안썻을 때----------------------*/
$("input[name='nurserySchoolDetailedAddress']").on("blur", function() {
	if (!$(this).val()) {
		$("#nurserySchoolDetailedAddressdiv").text("상세주소를 입력해주세요.");
		$("#nurserySchoolDetailedAddressdiv").css("color", "red");
	} else {
		$("#nurserySchoolDetailedAddressdiv").text("");
	}
});
/*------------------------비밀번호 안썻을 때와 유효성 검사----------------------*/
let tempPw = "";
$("input[name='nurserySchoolMemberPassword']").on("blur", function() {
	//8자리 이상, 대문자/소문자/숫자/특수문자 모두 포함되어 있는 지 검사
	var pwCheck = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
	//한글이 포함되었는 지 검사
	var hangleCheck = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
	//같은 문자 4번 이상
	var wordCheck = /(\w)\1\1\1/;
	//공백검사
	var spaceCheck = /\s/;

	if (!joinForm.nurserySchoolMemberPassword.value) {
		$("#nurserySchoolMemberPassworddiv").text("비밀번호를 입력해주세요.");
		$("#nurserySchoolMemberPassworddiv").css("color", "red");
		return;
	} else {
		$("#nurserySchoolMemberPassworddiv").text("");
	}

	if (!pwCheck.test(joinForm.nurserySchoolMemberPassword.value)) {
		$("#nurserySchoolMemberPassworddiv").text("비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.");
		return;
	} else {
		$("#nurserySchoolMemberPassworddiv").text("");
	}

	if (hangleCheck.test(joinForm.nurserySchoolMemberPassword.value)) {
		$("#nurserySchoolMemberPassworddiv").text("비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.");
		return;
	} else {
		$("#nurserySchoolMemberPassworddiv").text("");
	}

	if (wordCheck.test(joinForm.nurserySchoolMemberPassword.value)) {
		$("#nurserySchoolMemberPassworddiv").text("비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.");
		return;
	} else {
		$("#nurserySchoolMemberPassworddiv").text("");
	}

	if (spaceCheck.test(joinForm.nurserySchoolMemberPassword.value)) {
		$("#nurserySchoolMemberPassworddiv").text("비밀번호는 영문 대소문자, 숫자, 특수문자 중 2가지 이상 조합된 8자 ~ 32자만 가능합니다.");
		return;
	} else {
		$("#nurserySchoolMemberPassworddiv").text("");
	}
	tempPw = joinForm.nurserySchoolMemberPassword.value;
});
/*------------------------비밀번호 확인 안썻을 때----------------------*/

let checkPw = "";
$("input[name='nurserySchoolMemberPassword2']").on("blur", function() {
	if (!$(this).val()) {
		$("#nurserySchoolMemberPassworddiv2").text("비밀번호 확인을 진행해주세요.");
		$("#nurserySchoolMemberPassworddiv2").css("color", "red");
	} else {
		if ($(this).val() == tempPw) {
			$("#nurserySchoolMemberPassworddiv2").text("비밀번호가 일치합니다.");
			$("#nurserySchoolMemberPassworddiv2").css("color", "blue");
			checkPw = false;
		} else {
			$("#nurserySchoolMemberPassworddiv2").text("비밀번호가 일치하지 안습니다.");
			$("#nurserySchoolMemberPassworddiv2").css("color", "red");
			checkPw = true;
		}
	}
});
/*------------------------이메일 안썻을 때----------------------*/
$("input[name='nurserySchoolMemberEmail']").on("blur", function() {
	if (!$(this).val()) {
		$("#nurserySchoolMemberEmaildiv").text("이메일을 입력해주세요.");
		$("#nurserySchoolMemberEmaildiv").css("color", "red");
	} else {
		$("#nurserySchoolMemberEmaildiv").text("");
	}
});
/*------------------------동의하고 회원가입 눌렀을 때----------------------*/
var check = false;
$("#submitButton").on('click', function() {
	check = false;
	/*--------------------------아이디----------------------------*/
	if (!$("input[name='nurserySchoolMemberId']").val()) {
		$("#nurserySchoolMemberIddiv").text("아이디를 입력해주세요.");
		$("#nurserySchoolMemberIddiv").css("color", "red");
		check = true;
	}

	/*------------------------성명 안썻을 때----------------------*/
	if (!$("input[name='nurserySchoolMemberName']").val()) {
		$("#nurserySchoolMemberNamediv").text("보육원이름을 입력해주세요.");
		$("#nurserySchoolMemberNamediv").css("color", "red");
		check = true;
	}

	/*------------------------전화번호 안썻을 때(중복검사 필요)----------------------*/
	if (!$("input[name='nurserySchoolMemberPhoneNumber']").val()) {
		$("#nurserySchoolMemberPhoneNumberdiv").text("전화번호를 입력해주세요.");
		$("#nurserySchoolMemberPhoneNumberdiv").css("color", "red");
		check = true;
	}

	/*------------------------주소 안썻을 때----------------------*/
	if (!$("input[name='nurserySchoolAddress']").val()) {
		$("#nurserySchoolAddressdiv").text("우편번호 찾기를 통해 주소를 입력해주세요.");
		$("#nurserySchoolAddressdiv").css("color", "red");
		check = true;
	}
	/*------------------------상세주소 안썻을 때----------------------*/
	if (!$("input[name='nurserySchoolDetailedAddress']").val()) {
		$("#nurserySchoolDetailedAddressdiv").text("우편번호 찾기를 통해 주소를 입력해주세요.");
		$("#nurserySchoolDetailedAddressdiv").css("color", "red");
		check = true;
	}
	/*------------------------비밀번호 안썻을 때와 유효성 검사----------------------*/
	if (!$("input[name='nurserySchoolMemberPassword']").val()) {
		$("#nurserySchoolMemberPassworddiv").text("비밀번호를 입력해주세요.");
		$("#nurserySchoolMemberPassworddiv").css("color", "red");
		check = true;
	}
	/*------------------------비밀번호 확인 안썻을 때----------------------*/
	if (!$("input[name='nurserySchoolMemberPassword2']").val()) {
		$("#nurserySchoolMemberPassworddiv2").text("비밀번호 확인을 진행해주세요.");
		$("#nurserySchoolMemberPassworddiv2").css("color", "red");
		check = true;
	}
	/*------------------------이메일 안썻을 때----------------------*/
	if (!$("input[name='nurserySchoolMemberEmail']").val()) {
		$("#nurserySchoolMemberEmaildiv").text("이메일을 입력해주세요.");
		$("#nurserySchoolMemberEmaildiv").css("color", "red");
		check = true;
	}
	/*--------------------이메일 인증 안했을 때---------------------*/
	if(checkEmail){
		$("#checkNurserySchoolMemberEmaildiv").text("인증번호 확인을 진행해주세요.");
		$("#checkNurserySchoolMemberEmaildiv").css("color", "red");
	}

	if (!check && !idCheck && !checkPw && !checkEmail) {
		alert('회원가입을 완료했습니다 로그인을 진행해주세요')
		joinForm.submit();
	} else {
		window.scrollTo(0, 0);
	}
})

/*네이버 클릭*/
$('.login_naver').on('click',function(){
	$('#naver_id_login').eq(0).find('a').get(0).click();
})
/*구글 클릭*/
$('.login_google').on('click',function(){
	$('#google_id_login').eq(0).find('iframe').find(".nsm7Bb-HzV7m-LgbsSe").click();
})

/*카카오 로그인*/
var $kakao = $(".kakaoButton");

var userId;

function kakaoLogin() {
	Kakao.Auth.login({
		success: function(response) {
			Kakao.API.request({  // 사용자 정보 가져오기 
				url: '/v2/user/me',
				success: (response) => {
					let email = response.kakao_account.email // 사용자 정보 중 원하는 값 추출
					$('input[name = "nurserySchoolMemberEmail"]').val(email);


					/* 처음 방문하는 회원이면 앱의 동의하기 진행 → 사이트 추가 정보 입력 받음 → DB 저장*/
					/* 동의한 상태라면 바로 로그인 → 메인페이지 이동*/
					/* 유효성 검사로 로그인과 회원가입 구분 예정 : 
					   사용자 DB에 동일한 id가 있으면 로그인 완료 페이지 이동
					   없으면 추가정보 입력 페이지 진행*/
				}
			});
		},
		fail: function(error) {
			alert(error);
		}
	});
}
/*이메일인증*/
let key = generateRandomCode();
function generateRandomCode() {
    let str = ''
    for (let i = 0; i < 6; i++) {
        str += Math.floor(Math.random() * 10)
    }
    return str
}
function sendEmail() {
	if (!$("input[name='nurserySchoolMemberEmail']").val()) {
		$("#nurserySchoolMemberEmaildiv").text("이메일을 입력해주세요.");
		$("#nurserySchoolMemberEmaildiv").css("color", "red");
		return;
	}
	$("#checkNurserySchoolMemberEmaildiv").text("입력하신 이메일로 인증번호를 발송했습니다.");
	$("#checkNurserySchoolMemberEmaildiv").css("color", "green");
    emailjs.send("service_vfzxi5g", "template_vtzhsgc", {
        message: key,
        to_email: $("input[name='nurserySchoolMemberEmail']").val(),
    });
}

var checkEmail = true;
$("input[name='checkNurserySchoolMemberEmail']").on("blur",function (){
	var inputKey = $('input[name = "checkNurserySchoolMemberEmail"]').val();
	if(inputKey==key){
		$("#checkNurserySchoolMemberEmaildiv").text("인증번호가 일치합니다.");
		$("#checkNurserySchoolMemberEmaildiv").css("color", "blue");
		checkEmail = false;
	}else{
		$("#checkNurserySchoolMemberEmaildiv").text("인증번호가 일치하지 않습니다.");
		$("#checkNurserySchoolMemberEmaildiv").css("color", "red");
		checkEmail = true;
	}
	
});


