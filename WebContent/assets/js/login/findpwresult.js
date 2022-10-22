    /* <div class="phone_number">
           <input type="text" name="" id="phone_number" placeholder="비밀번호">
       </div>

       <div class="name">
           <input type="text" name="" id="name" placeholder="비밀번호 확인">
       </div>
*/

const userPw = document.getElementById("phone_number");
userPw.addEventListener("blur", function () {
    let pwValueLength = userPw.value.length;
    let isPwValid = pwValueLength >= 12;
    const password = document.getElementById("passdiv");
    let pop1 = isPwValid ? "" : " ⚠  비밀번호는 12자리 이상이어야합니다.";
    password.innerHTML = pop1;
});

const userPw2 = document.getElementById("phone_number2");
userPw2.addEventListener("blur", function () {
    let pwValueLength2 = userPw2.value.length;
    let isPwValid2 = pwValueLength2 >= 12;
    const password2 = document.getElementById("passdiv2");
    let pop2 = isPwValid2 ? "" : " ⚠  비밀번호는 12자리 이상이어야합니다.";
    password2.innerHTML = pop2;
});