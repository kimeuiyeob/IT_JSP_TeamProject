window.addEventListener('DOMContentLoaded', totalRankclick);

function buttonChange(id, color1, color2) {
    document.getElementById(id).style.backgroundColor = color1;
    document.getElementById(id).style.color = color2;
}


var div2 = document.getElementsByClassName("div2");

function handleClick(event) {
    console.log(event.target);

    console.log(event.target.classList);

    if (event.target.classList[1] === "clicked") {

    } else {
        for (var i = 0; i < div2.length; i++) {
            div2[i].classList.remove("clicked");
        }

        event.target.classList.add("clicked");
    }
}

function init() {
    for (var i = 0; i < div2.length; i++) {
        div2[i].addEventListener("click", handleClick);
    }
}

init();

function buttonclick() {
    $('#myrank').show();
    $('#buttonchange').hide();
    $('#buttonchange2').hide();
};


function totalRankclick() {
    $('#totalRanking').show();
    $('#yearRanking').hide();
    $('#yearmyrank').hide();
    $('#buttonchange').show();
    $('#buttonchange2').show();
}

$(document).ready(totalRankclick);
