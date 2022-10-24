/* ------------------필터 클릭, 호버--------------------- */
const $filter = $('.card-toolbar-item').eq(0);
const $filterDropdown = $('.menu-sub-dropdown');
const $filters = $('.card-toolbar-item');
const $filtersLast = $('.card-toolbar-itemBox').children().last()
let check1 = false;

$body.on('click', function (e) {
    if (check1) {
        if (e.target.closest('.menu-sub-dropdown') == e.currentTarget.querySelector('.menu-sub-dropdown').closest('.menu-sub-dropdown')) {
        } else {
            $filterDropdown.css('display', 'none');
            $filter.css('background-color', '#f6f8fa');
            $filter.css('color', '#009ef7');
            $filter.find('#filter-img').css({
                'background': `url('../../assets/img/manager/filterBlue.png')`,
                'background-size': '13px'
            });
            check1 = !check1;
        }
    }
})

$filter.on("click", function () {
    if ($filterDropdown.css('display') == 'none') {
        $filter.css('background-color', '#009ef7');
        $filter.css('color', '#fff');
        $filter.find('#filter-img').css({
            'background': `url('../../assets/img/manager/filterWhite.png')`,
            'background-size': '13px'
        });
        $filterDropdown.css('display', 'flex');
        setTimeout(() => {
            check1 = !check1;
        }, 100);
    }
})

$filters.on('mouseover', function () {
    $(this).css('background-color', '#009ef7');
    $(this).css('color', '#fff');
    $(this).find('#out-img').css({
        'background': `url('../../assets/img/manager/outWhite.png') no-repeat`,
        'background-size': '13px'
    })
    $(this).find('#plusBlue-img').css({
        'background': `url('../../assets/img/manager/plusWhite.png') no-repeat`,
        'background-size': '17px'
    })
    $(this).find('#filter-img').css({
        'background': `url('../assets/img/manager/filterWhite.png')`,
        'background-size': '13px'
    })
})

$filters.on('mouseout', function () {
    $(this).css('background-color', '#f6f8fa');
    $(this).css('color', '#009ef7');
    $(this).find('#out-img').css({
        'background': `url('../../assets/img/manager/out.png') no-repeat`,
        'background-size': '13px'
    })
    $(this).find('#plusBlue-img').css({
        'background': `url('../../assets/img/manager/plusBlue.png') no-repeat`,
        'background-size': '17px'
    })
    $(this).find('#filter-img').css({
        'background': `url('../../assets/img/manager/filterBlue.png')`,
        'background-size': '13px'
    })
})

$filtersLast.on('click', function () {
    deleteModal.classList.toggle('show');

    if (deleteModal.classList.contains('show')) {
        body.style.overflow = 'hidden';
    }
})
/* ---------------------필터 서브-------------- */
const $selectOption = $('.menu-sub-dropdown-option-box');

$selectOption.on('click', function () {
    console.log('방가')
    if ($(this).find('input').is(':checked')) {
        $(this).find('.menu-sub-dropdown-option-sub').css('display', 'flex');
        $(this).find('input').prop('checked', true);
    } else {
        $(this).find('.menu-sub-dropdown-option-sub').css('display', 'none');
        $(this).find('input').prop('checked', false);
    }
})

/* ----------------- 필터 서브 옵션 호버---------------- */
const $subOption = $('.menu-sub-dropdown-option-sub-item');

$subOption.on('mouseover', function () {
    $(this).css('background-color', '#f4f6fa');
    $(this).css('color', '#009ef7');
})
$subOption.on('mouseout', function () {
    $(this).css('background-color', '#fff');
    $(this).css('color', '#5e6278');
})

$subOption.on('click', function () {
    $(this).closest('label').find('.menu-sub-dropdown-option-text').html($(this).html());
})

/* ------------------ 필터 서브 옵션 푸터 호버----------------*/

const $subOptionResetChoose = $('.menu-sub-dropdown-Botton').eq(0);
const $subOptionApllyChoose = $('.menu-sub-dropdown-Botton').eq(1);
$subOptionApllyChoose.css('background-color', '#009ef7');
$subOptionApllyChoose.css('color', '#fff');

$subOptionResetChoose.on('mouseover', function () {
    $(this).css('color', '#009ef7');
})
$subOptionResetChoose.on('mouseout', function () {
    $(this).css('color', '#7e8299');
})

$subOptionApllyChoose.on('mouseover', function () {
    $(this).css('background-color', '#0095e8');
})
$subOptionApllyChoose.on('mouseout', function () {
    $(this).css('background-color', '#009ef7');
})

/* ----------------체크박스-------------------- */
const $checkBox = $('.notice-checked');
const $checkBoxAll = $('.notice-checked-all');

$checkBoxAll.on('click', function () {
    if ($checkBoxAll.is(':checked')) {
        $checkBoxAll.closest('.card-body-title-user-checkbox').css('background-color', '#009ef7');
        $checkBoxAll.prev().css('display', 'flex');
        $checkBox.closest('.card-body-title-user-checkbox').css('background-color', '#009ef7');
        $checkBox.prev().css('display', 'flex');
        $checkBox.prop('checked', true);
    } else {
        $checkBoxAll.closest('.card-body-title-user-checkbox').css('background-color', '#eff2f5');
        $checkBoxAll.prev().css('display', 'none');
        $checkBox.closest('.card-body-title-user-checkbox').css('background-color', '#eff2f5');
        $checkBox.prev().css('display', 'none');
        $checkBox.prop('checked', false);
    }
})

$checkBox.on('click', function (e) {

    if ($(this).is(':checked')) {
        $(this).closest('.card-body-title-user-checkbox').css('background-color', '#009ef7');
        $(this).prev().css('display', 'flex')
    } else {
        $(this).closest('.card-body-title-user-checkbox').css('background-color', '#eff2f5')
        $(this).prev().css('display', 'none')
        $checkBoxAll.prop('checked', false);
        $checkBoxAll.closest('.card-body-title-user-checkbox').css('background-color', '#eff2f5');
        $checkBoxAll.prev().css('display', 'none');
    }
    if ($checkBox.filter(":checked").length == $checkBox.length) {
        $checkBoxAll.prop('checked', true);
        $checkBoxAll.closest('.card-body-title-user-checkbox').css('background-color', '#009ef7');
        $checkBoxAll.prev().css('display', 'flex');
    }
})


/* -----------배너 추가,수정 모달창-------------- */
/*const $addBanner = $('.card-toolbar-item').eq(0);
var addBannerGroupModal = $('.add-banner-group-modal')[0];
var addBannerModal = $('.add-banner-modal')[0];
var $modalSubmit = $('.modal-submit');
var $closeImg = $('.close-img');
var $selectFileorurlButton = $('.select-fileorurl-button');*/

/* ------------------------------------ */

/* ------------파일 첨부할지 url쓸지 라디오버튼------------------- */
$selectFileorurlButton.on('click', function () {
    switch ($(this).prop('value')) {
        case 'addfile':
            $('.add-banner-modal').find('.modal-info-padding').closest('label').eq(0).css('display', 'block');
            $('.add-banner-modal').find('.modal-info-padding').eq(1).css('display', 'none');
            break;
        case 'imgUrl':
            $('.add-banner-modal').find('.modal-info-padding').eq(1).css('display', 'block');
            $('.add-banner-modal').find('.modal-info-padding').closest('label').eq(0).css('display', 'none');
            break;

    }
    console.log($(this).prop('value'));
})

/* ---------------모달창 닫기------------------- */
$closeImg.on('click', function () {
    $('.no-input-text').css('display', 'none');
    if ($(this).closest('.add-banner-modal').length > 0) {
        addBannerModal.classList.toggle('show');
    }
    if ($(this).closest('.add-banner-group-modal').length > 0) {
        addBannerGroupModal.classList.toggle('show');
    }
    if ($(this).closest('.preview-banner-modal').length > 0) {
        $previewBannerModal[0].classList.toggle('show');
    }
    body.style.overflow = 'auto';
})

$modalSubmit.on('click', function () {
    /* 그룹추가에서 다음 버튼 */
    if ($(this).closest('.add-banner-group-modal').length > 0) {
        if ($(this).closest('.add-banner-group-modal').find('.modal-info-padding').eq(0).val().length == 0) {
            $(this).closest('.add-banner-group-modal').find('.no-input-text').eq(0).css('display', 'block');
        } else {
            $(this).closest('.add-banner-group-modal').find('.no-input-text').eq(0).css('display', 'none');
        }
        // if ($(this).closest('.add-banner-group-modal').find('.modal-info-padding').eq(1).val().length == 0) {
        //     $(this).closest('.add-banner-group-modal').find('.no-input-text').eq(1).css('display', 'block');
        // } else {
        //     $(this).closest('.add-banner-group-modal').find('.no-input-text').eq(1).css('display', 'none');
        // }
        // if ($(this).closest('.add-banner-group-modal').find('.modal-info-padding').eq(0).val().length == 0 || $(this).closest('.add-banner-group-modal').find('.modal-info-padding').eq(1).val().length == 0) {
        //     return;
        // }
        if ($(this).closest('.add-banner-group-modal').find('.modal-info-padding').eq(0).val().length == 0) {
            return;
        }
        let newModal = document.createElement('div');
        for (let i = 0; i < $('.add-banner-group-modal').find('.modal-info-padding').eq(0).val(); i++) {
            newModal.innerHTML += `<div class="add-banner-modal">
            <div class="add-banner-modal-body">
                <div class="notice-modal-header">
                    <h2>배너 추가</h2>
                    <div class="close-img"></div>
                </div>
                <div class="notice-modal-body">
                    <div class="schedule-info-box">
                        <div class="menu-sub-dropdown-item-title-margin">
                            <div class="schedule-option-flex">
                                `+ (i + 1) + `번 이미지
                                <div class="select-fileorurl-wrap">
                                    <label>
                                        파일첨부
                                        <input type="radio" name="select-fileorurl" class="select-fileorurl-button"
                                            value="addfile">
                                    </label>
                                    <label>
                                        이미지 URL
                                        <input type="radio" name="select-fileorurl" class="select-fileorurl-button"
                                            value="imgUrl">
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="menu-sub-dropdown-item-title-margin">
                            <label>
                                <input type="file" style="display: none;">
                                <div class="modal-info-padding" style="cursor: pointer;">
                                    <div class = "addfileFont">찾아보기</div>
                                </div>
                            </label>
                        </div>
    
                        <div class="menu-sub-dropdown-item-title-margin">
                            <input type="text" class="modal-info-padding" style="display: none;">
                        </div>
                        <div class="no-input-text">
                            이미지 주소 또는 이미지 파일을 첨부해주세요
                        </div>
                    </div>
                    <div class="schedule-info-box">
                        <div class="menu-sub-dropdown-item-title-margin">
                            URL
                        </div>
                        <div class="menu-sub-dropdown-item-title-margin">
                            <input class="modal-info-padding" type="text">
                        </div>
                        <div class="no-input-text">
                            이동 시킬 URL을 입력해주세요
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button class="modal-submit">추가</button>
                </div>
            </div>
        </div>`
        }
        $body.prepend(newModal);
        /* -----각버튼 초기화----- */
        $modalSubmit = $('.modal-submit');
        $closeImg = $('.close-img');
        $selectFileorurlButton = $('.select-fileorurl-button');
        addBannerGroupModal = $('.add-banner-group-modal')[0];
        $addBannerModal = $('.add-banner-modal');
        const $inputFile = $('.addfileFont');


        /* ---------filetest------ */
        $inputFile.closest('.modal-info-padding').prev().on('change', function () {
            $(this).closest('.add-banner-modal').find('.select-fileorurl-button').eq(0).prop('checked', true);
            if ($(this).next().find('.filePath')) {
                $(this).next().find('.filePath').remove();
            }
            $(this).next().prepend('<div class = "filePath">' + $(this).val() + '</div>')
        })

        /* ---------------------- */
        addBannerGroupModal.classList.toggle('show');
        $body.find('div').find('.add-banner-modal')[0].classList.toggle('show');

        /* -----submit활성화----- */
        $modalSubmit.on('click', function () {
            if ($(this).closest('.add-banner-modal').find('.modal-info-padding').eq(1).val()) {
                $(this).closest('.add-banner-modal').find('.no-input-text').eq(0).css('display', 'none');
            } else {
                $(this).closest('.add-banner-modal').find('.no-input-text').eq(0).css('display', 'block');
            }
            if ($(this).closest('.add-banner-modal').find('.filePath').eq(0).html()) {
                $(this).closest('.add-banner-modal').find('.no-input-text').eq(0).css('display', 'none');
            } else {
                $(this).closest('.add-banner-modal').find('.no-input-text').eq(0).css('display', 'block');
            }
            console.log($(this).closest('.add-banner-modal').find('.modal-info-padding').eq(0).val() + "안녕")
            if ($(this).closest('.add-banner-modal').find('.modal-info-padding').eq(2).val()) {
                $(this).closest('.add-banner-modal').find('.no-input-text').eq(1).css('display', 'none');
            } else {
                $(this).closest('.add-banner-modal').find('.no-input-text').eq(1).css('display', 'block');
            }

            /* ----------------------------다음 버튼이 안눌리는 조건(너무 길어져서 두줄로 씀)--------------------------- */
            if (!$(this).closest('.add-banner-modal').find('.modal-info-padding').eq(2).val()) {
                return;
            }
            if (!($(this).closest('.add-banner-modal').find('.modal-info-padding').eq(1).val() || $(this).closest('.add-banner-modal').find('.filePath').eq(0).html())) {
                return;
            }
            $(this).closest('.add-banner-modal')[0].classList.toggle('show');
            // console.log($(this).closest('.add-banner-modal').next().length>0)
            if ($(this).closest('.add-banner-modal').next().length > 0) {
                $(this).closest('.add-banner-modal').next()[0].classList.toggle('show');
            }
        })
        /* -------close재활성화----- */
        $closeImg.on('click', function () {
            $('.no-input-text').css('display', 'none');
            // $('.add-banner-group-modal').find('.modal-info-padding').eq(0).val('');
            if ($(this).closest('.add-banner-modal').length > 0) {
                $(this).closest('.add-banner-modal')[0].classList.toggle('show');
            }
            if ($(this).closest('.add-banner-group-modal').length > 0) {
                addBannerGroupModal.classList.toggle('show');
            }
            if ($(this).closest('.preview-banner-modal').length > 0) {
                $previewBannerModal[0].classList.toggle('show');
            }
            body.style.overflow = 'auto';
        })
        /* -------라디오박스 재활성화-------*/
        $selectFileorurlButton.on('click', function () {
            switch ($(this).prop('value')) {
                case 'addfile':
                    $(this).closest('.add-banner-modal').find('.modal-info-padding').closest('label').eq(0).css('display', 'block');
                    $(this).closest('.add-banner-modal').find('.modal-info-padding').eq(1).css('display', 'none');
                    break;
                case 'imgUrl':
                    $(this).closest('.add-banner-modal').find('.modal-info-padding').eq(1).css('display', 'block');
                    $(this).closest('.add-banner-modal').find('.modal-info-padding').closest('label').eq(0).css('display', 'none');
                    break;
            }
            console.log($(this).prop('value'));
        })

    }
    if ($(this).closest('.add-banner-modal').length > 0) {
        if ($('.add-banner-modal').find('.modal-info-padding').eq(0).val().length == 0) {
            $('.add-banner-modal').find('.no-input-text').eq(0).css('display', 'block');
            return;
        }
        if ($('.add-banner-modal').find('.modal-info-padding').eq(1).val().length == 0) {
            $('.add-banner-modal').find('.no-input-text').eq(1).css('display', 'block');
            return;
        }
        addBannerGroupModal.classList.toggle('show');
        $(this).closest('.add-banner-group-modal').next()[0].classList.toggle('show');
    }

    body.style.overflow = 'auto';
})

/* 배너추가에서 다음버튼 */
// function next(){
//     console.log(Object)
//     console.log($(this))
//     console.log($(this).closest('.add-banner-modal'))
//     console.log($(this).closest('.add-banner-modal')[0])
//     $(this).closest('.add-banner-modal')[0].classList.toggle('show');
//     $(this).closest('.add-banner-modal').next()[0].classList.toggle('show');
// }


$addBanner.on('click', function () {
    addBannerGroupModal.classList.toggle('show');

    if (addBannerGroupModal.classList.contains('show')) {
        body.style.overflow = 'hidden';
    }
})

/* -------------미리보기 모달창-------------- */
const $preview = $('.donate-outBox');
const $previewBannerArea = $('.preview-banner-area');

$preview.on('click', function () {
    $previewBannerArea[0].classList.toggle('show');

    // if ($previewBannerArea[0].classList.contains('show')) {
    //     body.style.overflow = 'hidden';
    // }
})

$preview.on('mouseover', function () {
    $(this).css('color', '#009ef7');
    $(this).css('background-color', '#f1faff');
})
$preview.on('mouseout', function () {
    $(this).css('color', '#7e8299');
    $(this).css('background-color', '#f5f8fa');
})

/* ------------------미리보기 분기----------------- */
const banners = document.getElementsByClassName("banner")[0];
        banners.style.transform = "translate(0vw)";
        banners.style.transition = "transform 0.5s";
        let number = 0;
        let inter = setInterval(function () {
            console.log('안녕')
                number++;
                banners.style.transform = "translate(-" + 675 * number + "px)";
                if (number % 5 == 0) {
                        number = 0;
                }

        }, 2000)
/* ------------------미리보기 분기----------------- */



/* -----------삭제 모달창-------------- */

const $finalDelete = $('.delete-modal-delete');
const $finalDeleteCancel = $('.delete-modal-cancel');
const deleteModal = $('.delete-modal')[0];

$finalDelete.on('click', function () {
    deleteModal.classList.toggle('show');
    body.style.overflow = 'auto';
})

$finalDeleteCancel.on('click', function () {
    deleteModal.classList.toggle('show');
    body.style.overflow = 'auto';
})



/* -----------------썸머노트-------------- */

jb('.summernote').summernote({
    placeholder: 'Hello stand alone ui',
    tabsize: 2,
    height: 280,
    toolbar: [
        ['style', ['style']],
        ['font', ['bold', 'underline', 'clear']],
        ['color', ['color']],
        ['para', ['ul', 'ol', 'paragraph']],
        ['table', ['table']],
        ['insert', ['link', 'picture', 'video']],
        ['view', ['fullscreen', 'codeview', 'help']]
    ]
});

/* -------------- 페이지 이동 ---------------- */
const $pageNumberLink = $('.page-number-link');

$pageNumberLink.on('mouseover', function () {
    $(this).css('background-color', '#f4f6fa');
    $(this).css('color', '#009ef7');
})

$pageNumberLink.on('mouseout', function () {
    $(this).css('background-color', '#fff');
    $(this).css('color', '#5e6278');
})


















