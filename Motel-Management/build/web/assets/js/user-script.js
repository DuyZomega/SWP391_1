
/* Truncate Title */
// window.addEventListener("load",function(){
//     truncateTitle();
// });

// function truncateTitle(){
//     var list = document.getElementsByClassName("service");
//     console.log(list);
//     for(var i = 0; i < list.length; i++){
//         var text = list[i].innerHTML;
//         var newText = truncateString(text,20);
//         list[i].innerHTML = newText;
//     }
// }

// function truncateString(str,num){
//     if(str.length > num){
//         return str.slice(0,num) + "...";
//     } else{
//         return str;
//     }

// ====================== Validation ====================

function getEle(id) {
    return document.getElementById(id);
}

var checkValidation = function () {
    var valid = true;
    valid = kiemTraRong('fullName', 'error_fullName')
     & kiemTraRong('user', 'error_userName') & kiemTraRong('password', 'error_password') & kiemTraRong('confirm-password', 'error_confirmPassword') & kiemTraRong('email', 'error_email') & kiemTraRong('telephone', 'error_phone');
    if (!valid) {
        return false;
    }
    return true;

};


var kiemTraRong = function (idValue, idError) {
    var inputText = getEle(idValue);
    if (inputText.value.trim() === '') {
        getEle(idError).innerHTML = inputText.name + ' không được bỏ trống!';
        getEle(idError).style.display = 'block';
        return false;
    } else {
        document.getElementById(idError).innerHTML = '';
        document.getElementById(idError).style.display = 'none';
        return true;
    }
}


// var kiemTraTatCaLaChu = function (selectorValue, selectorError) {
//     var inputText = document.querySelector(selectorValue);
//     var regexChu = /^[A-Za-z ]+$/;
//     if (regexChu.test(inputText.value)) {
//         //Hợp lệ 
//         document.querySelector(selectorError).innerHTML = '';
//         document.querySelector(selectorError).style.display = 'none';
//         return true;
//     } else {
//         //Không hợp lệ
//         document.querySelector(selectorError).innerHTML = inputText.name + ' phải là chữ !';
//         document.querySelector(selectorError).style.display = 'block';
//         return false;
//     }
// }

// // var kiemtraTenUser = function (selectorValue, selectorError) {
// //     var inputText = document.querySelector(selectorValue);
// //     var regexChu = /^[A-Za-z0-9]+$/;
// //     if (regexChu.test(inputText.value)) {
// //         //Hợp lệ 
// //         document.querySelector(selectorError).innerHTML = '';
// //         document.querySelector(selectorError).style.display = 'none';
// //         return true;
// //     } else {
// //         //Không hợp lệ
// //         document.querySelector(selectorError).innerHTML = inputText.name + ' không có ký tự đặc biệt!';
// //         document.querySelector(selectorError).style.display = 'block';
// //         return false;
// //     }
// // }

// var kiemTraTatCaLaSo = function (selectorValue, selectorError) {
//     var inputNum = document.querySelector(selectorValue).value;
//     if (!isNaN(inputNum)) {
//         //Hợp lệ 
//         document.querySelector(selectorError).innerHTML = '';
//         document.querySelector(selectorError).style.display = 'none';
//         return true;
//     } else {
//         document.querySelector(selectorError).innerHTML = inputText.name + ' yêu cầu nhập số !';
//         document.querySelector(selectorError).style.display = 'block';
//         return false;
//     }
//     console.log(inputNum);
// }

// var kiemTraEmail = function (selectorValue, selectorError) {
//     var inputText = document.querySelector(selectorValue);
//     var regexEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\ [[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
//     if (regexEmail.test(inputText.value)) {
//         document.querySelector(selectorError).innerHTML = '';
//         document.querySelector(selectorError).style.display = 'none';
//         return true;
//     } else {
//         document.querySelector(selectorError).innerHTML = inputText.name + ' không hợp lệ !';
//         document.querySelector(selectorError).style.display = 'block';
//         return false;
//     }
// }

// var kiemTraDoDai = function (selectorValue, selectorError) {
//     var inputText = document.querySelector(selectorValue);
//     if (inputText.value.length >= inputText.minLength && inputText.value.length <= inputText.maxLength) {
//         document.querySelector(selectorError).innerHTML = '';
//         document.querySelector(selectorError).style.display = 'none';
//         return true;
//     } else {
//         document.querySelector(selectorError).innerHTML = inputText.name + ' từ ' + inputText.minLength + ' đến ' + inputText.maxLength + ' ký tự!';
//         document.querySelector(selectorError).style.display = 'block';
//         return false;
//     }
// }

// getEle('fullName').onblur = checkValidation;
// getEle('user').onblur = checkValidation;
// getEle('email').onblur = checkValidation;
// getEle('telephone').onblur = checkValidation;
// getEle('password').onblur = checkValidation;
// getEle('confirm-password').onblur = checkValidation;


