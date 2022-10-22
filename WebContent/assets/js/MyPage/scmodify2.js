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

        $(".saveSubmit").mouseover(function () {
            $(this).css("background-color", "rgb(255, 86, 0)")
        });

        $(".saveSubmit").mouseout(function () {
            $(this).css("background-color", "rgb(255 242 233)")
        });
    });
