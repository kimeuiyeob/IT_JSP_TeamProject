/**
 * 
 */var check = false;

$(function () {
  $("#modalBody").hide();

  $("#miniBox").hide();

  $("#userWrap").click(function () {
    if (!check) {
      $("#miniBox").show();
      check = true;
    } else if (check) {
      $("#miniBox").hide();
      check = false;
    }
  });

  $(".submit-button").mouseover(function () {
    $(this).css("background-color", "rgb(255 86 0)")
  });

  $(".submit-button").mouseout(function () {
    $(this).css("background-color", "rgb(255 242 233)")
  });


  $(".submit-button").click(function () {
    alert("결제가 완료되었습니다.");
  });
});

/* ------------황지수--------------- */
const $borderBox = $('.border-box');

$borderBox.on('click', function () {
  $borderBox.css('border', '1px solid rgb(248, 248, 248)')
  $(this).css('border', '1px solid rgb(58, 58, 58)')
})