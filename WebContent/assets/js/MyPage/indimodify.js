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


  function setThumbnail(event) {
    var reader = new FileReader();

    reader.onload = function (event) {
      var img = document.createElement("img");
      img.setAttribute("src", event.target.result);
      img.setAttribute("position", "absolute");
      img.setAttribute("top", "0px");
      img.setAttribute("width", "80px");
      img.setAttribute("height", "80px");
      img.setAttribute("border-radius", "40px");

      document.querySelector("div#image_container").appendChild(img);
    };

    reader.readAsDataURL(event.target.files[0]);
  }

  const file = document.querySelector("input[type='file']");
  const thumbnail = document.querySelector("label[for='attach'] div[id = 'attach2']");
  file.addEventListener("change", function (e) {
    // console.log(e.target.files[0]);
    var reader = new FileReader();
    reader.readAsDataURL(e.target.files[0]);
    reader.onload = function (e) {
      // console.log(e.target.result);
      let url = e.target.result;
      // 이미지 파일인지 아닌지 검사하여 이미지 파일이 아닐 경우 원래 attach.png 이미지로 변경
      if (url.includes('image')) {
        thumbnail.style.backgroundImage = "url('" + url + "')";
      } else {
        thumbnail.style.backgroundImage = "url('img/attach.png')";
      }
    }
  });

  /* 주소 api */
  function find() {
    new daum.Postcode({
      oncomplete: function (data) {
        // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

        // 각 주소의 노출 규칙에 따라 주소를 조합한다.
        // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
        var addr = ''; // 주소 변수

        //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
        if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
          addr = data.roadAddress;
        } else { // 사용자가 지번 주소를 선택했을 경우(J)
          addr = data.jibunAddress;
        }

        // 우편번호와 주소 정보를 해당 필드에 넣는다.
        document.getElementById('memberZipcode').value = data.zonecode;
        document.getElementById("memberAddress").value = addr;
        // 커서를 상세주소 필드로 이동한다.
        document.getElementById("memberAddressDetail").focus();
      }
    }).open();
  }



