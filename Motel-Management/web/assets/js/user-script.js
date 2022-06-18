
// ====================== Validation ====================
//Đối tượng
function Validator(options) {

    var selectorRules = {};

    function validate(inputElement, rule) {
        var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
        var errorMessage;

        // Lấy ra các rules của selector
        var rules = selectorRules[rule.selector];

        // Lặp qua từng rule & kiểm tra
        // Nếu lỗi break
        for (var i = 0; i < rules.length; ++i) {
            errorMessage = rules[i](inputElement.value);
            if (errorMessage) break;
        }

        if (errorMessage) {
            errorElement.innerText = errorMessage;
            inputElement.parentElement.classList.add('invalid');
        } else {
            errorElement.innerText = '';
            inputElement.parentElement.classList.remove('invalid');
        }

    }
    // Lấy element của form cần validate
    var formElement = document.querySelector(options.form);
    if (formElement) {
        options.rules.forEach(function (rule) {

            // Lưu lại các rules cho mỗi input
            if (Array.isArray(selectorRules[rule.selector])) {
                selectorRules[rule.selector].push(rule.test);
            } else {
                selectorRules[rule.selector] = [rule.test];
            }
            var inputElement = formElement.querySelector(rule.selector);

            if (inputElement) {
                //xử lý trường hơp blur ra ngoài
                inputElement.onblur = function () {
                    validate(inputElement, rule);
                }

                // xử lý khi người dùng nhập vào input
                inputElement.oninput = function () {
                    var errorElement = inputElement.parentElement.querySelector(options.errorSelector);
                    errorElement.innerText = '';
                    inputElement.parentElement.classList.remove('invalid');
                }
            }
        });

    }
}


// Định nghĩa rules
// Nguyên tắc của các rules
// 1. Error -> msg báo lỗi
// 2. Hợp lệ -> không trả ra gì 

Validator.isRequired = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[A-Za-z0-9_.]+$/;
            return regex.test(value.trim()) ? undefined : message || 'Vui lòng nhập đúng cú pháp!';
        }
    };
}

Validator.isNotEmpty = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.trim() ? undefined : message || 'Vui lòng không để trống';
        }
    };
}

Validator.isTextOnly = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[A-Za-z ]+$/;
            return regex.test(value.trim()) ? undefined : message || 'Vui lòng nhập đúng cú pháp!';
        }
    };
}

Validator.isNumberOnly = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^[0-9]+$/;
            return regex.test(value.trim()) ? undefined : message || 'Vui lòng nhập đúng cú pháp!';
        }
    };
}

Validator.isEmail = function (selector, message) {
    return {
        selector: selector,
        test: function (value) {
            var regex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            return regex.test(value.trim()) ? undefined : message || 'Trường này phải là email!';
        }
    };
}

Validator.minLength = function (selector, min, message) {
    return {
        selector: selector,
        test: function (value) {
            return value.length >= min ? undefined : message || `Vui lòng nhập tối thiểu ${min} kí tự`;
        }
    };
}

Validator.isConfirmed = function (selector, getConfirmValue, message) {
    return {
        selector: selector,
        test: function (value) {
            return value === getConfirmValue() ? undefined : message || 'Giá trị nhập vào không chính xác';
        }
    }
}

//==================Select===================
const selected = document.querySelector(".selected");
const optionsContainer = document.querySelector(".options-container");

const optionsList = document.querySelectorAll(".option");

selected.addEventListener("click", () => {
    optionsContainer.classList.toggle("active");
});

optionsList.forEach(o => {
    o.addEventListener("click", () => {
        selected.innerHTML = o.querySelector("label").innerHTML;
        optionsContainer.classList.remove("active");
    });
});

// ===================Pagination=====================



