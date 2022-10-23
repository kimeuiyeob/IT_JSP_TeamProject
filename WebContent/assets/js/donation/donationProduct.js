var check = false;

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

	const $options = $('.test');
	const $labelKind = $(`label[for = 'donationProducts']`);
	const $test = $('#donationProducts');
	const donationProducts = $('input[name = "donationProducts"]');

	$test.on('click', function() {
		$labelKind.html($(this).val());
		donationProducts.val($(this).val());
	})

	/* ------------------------- */
	$(".submit-button").mouseover(function() {
		$(this).css("background-color", "rgb(255 86 0)")
	});

	$(".submit-button").mouseout(function() {
		$(this).css("background-color", "rgb(255 242 233)")
	});
});


$('.submit-button').on('click', function() {
	var donationDate = $('input[name = "donationDate"]').val();
	var donationProducts = $('label[for="donationProducts"]').text();
	var donationDetailProducts = $('input[name = "donationDetailProducts"]').val();
	var quantity = $('input[name = "quantity"]').val();
	var boxQuantity = $('input[name = "boxQuantity"]').val();

	console.log(donationDate)
	console.log(donationProducts)
	if (!donationDate) {
		console.log('안녕')
		alert('방문 날짜를 선택해주세요')
		return;
	}
	if (donationProducts == '종류') {
		alert('기부하실 물품 종류를 선택해주세요')
		return;
	}

	alert('기부 신청이 완료 되었습니다')
	donationForm.submit();

})

var now_utc = Date.now() // 지금 날짜를 밀리초로
// getTimezoneOffset()은 현재 시간과의 차이를 분 단위로 반환
var timeOff = new Date().getTimezoneOffset()*60000; // 분단위를 밀리초로 변환
// new Date(now_utc-timeOff).toISOString()은 '2022-05-11T18:09:38.134Z'를 반환
var today = new Date(now_utc-timeOff).toISOString().split("T")[0];
$('input[name = "donationDate"]').attr("min", today);


