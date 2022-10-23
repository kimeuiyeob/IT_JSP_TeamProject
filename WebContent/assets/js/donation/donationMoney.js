/**
 * 
 */var check = false;

$(function() {
	$("#modalBody").hide();

	$("#miniBox").hide();

	$("#userWrap").click(function() {
		if (!check) {
			$("#miniBox").show();
			check = true;
		} else if (check) {
			$("#miniBox").hide();
			check = false;
		}
	});

	$(".submit-button").mouseover(function() {
		$(this).css("background-color", "rgb(255 86 0)")
	});

	$(".submit-button").mouseout(function() {
		$(this).css("background-color", "rgb(255 242 233)")
	});

});

/* ------------황지수--------------- */
const $borderBox = $('.border-box');
var paymentMethod = "";

$borderBox.on('click', function() {
	$borderBox.css('border', '1px solid rgb(248, 248, 248)')
	console.log($(this).find('div').text().trim() == '카드결제');

	if ($(this).find('div').text().trim() == '무통장입금') {
		alert('준비중인 서비스입니다')
	}

	$(this).css('border', '1px solid rgb(58, 58, 58)')
	paymentMethod = $(this).find('div').text().trim();
})

console.log(individualMemberName);
console.log(individualMemberNumber);
console.log(individualMemberPhoneNumber);
console.log(individualMemberEmail);
console.log(individualMemberAddress);
console.log(zipCode);
console.log(nurserySchoolMemberNumber)

/*결제 api*/
function requestPay() {
    IMP.request_pay({
        pg: 'kcp',
        pay_method: 'card',
        merchant_uid: 'merchant_'+new Date().getTime(),
        name: nurserySchoolMemberName+"기부금",
        amount: donationAmount.val(),
        buyer_email: individualMemberEmail,//기부자 이메일
        buyer_name: individualMemberName,//기부자 이름
        buyer_tel: individualMemberPhoneNumber,//기부자 번호
        buyer_addr: individualMemberAddress,// 주소
        buyer_postcode: zipCode// 우편번호
    }, function (rsp) {
        console.log(rsp);
        if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            alert(msg);
			donationForm.submit();
//            location.href = contextPath+"/search/schoolDetailOk.school?nurserySchoolMemberNumber="+nurserySchoolMemberNumber;
        } else {
            var msg = '결제에 실패하였습니다.';
            msg += '에러내용 : ' + rsp.error_msg;
            alert(msg);
        }
    });
}

var donationAmount = $('input[name = "donationAmount"]');

/*결제하기 눌렀을 때*/
$(".submit-button").click(function() {
	if (!donationAmount.val()) {/* 왜 반대로 작동하지?*/
		alert("기부금액을 입력해주세요")
		return;
	}
	if (donationAmount.val() < 100) {
		alert("최소 기부액은 100원입니다")
		return;
	}
	if (!paymentMethod) {
		alert("결제 방식을 선택해주세요")
		return;
	}
	
	var IMP = window.IMP; // 생략가능
    IMP.init('imp76631312'); //iamport 대신 자신의 "가맹점 식별코드"를 사용

    requestPay();
});