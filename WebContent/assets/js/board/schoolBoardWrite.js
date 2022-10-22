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

    });

	$(".withdrawalSubmit").mouseover(function () {
	      $(this).css("background-color", "rgb(255 86 0)")
	    }); 
	$(".withdrawalSubmit").mouseout(function () {
		  $(this).css("background-color", "rgb(255 242 233)")
	    });

	$(".cancel").mouseout(function(){
	    $(this).css("background-color", "rgb(248 248 248)")
	});
	
	$(".cancel").mouseover(function(){
		 $(this).css("background-color", "rgb(217 213 213)")
	});



 