var check = false;

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


    $("#modifySubmit").mouseover(function () {
        $(this).css("background-color", "rgb(255 86 0)")
    });

    $("#modifySubmit").mouseout(function () {
        $(this).css("background-color", "rgb(255 242 233)")
    });

    $(".withdrawalSubmit").mouseover(function () {
        $(this).css("background-color", "rgb(217 213 213)")
    });

    $(".withdrawalSubmit").mouseout(function () {
        $(this).css("background-color", "rgb(248 248 248)")
    });


    $(".withdrawalSubmit").click(function () {
        $("#modalBody").fadeIn();
    });

    $(".exit").click(function () {
        $("#modalBody").fadeOut();
    });

    $("#continue").click(function () {
        $("#modalBody").fadeOut();
    });

    $("#delete").click(function () {
        $("#modalBody").fadeOut();
        alert('회원탈퇴 처리되었습니다.');
        location.href = "main/result.html";
    })

});
