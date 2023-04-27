/*비밀번호 유효성 검사*/
const currentPasswordInput = document.querySelector('input[name="currentPassword"]');
const message = document.querySelector('#message');
const newPasswordInput = document.querySelector('input[name="password"]');
const confirmPasswordInput = document.querySelector('input[name="confirmPassword"]');
const newPasswordMessage = document.querySelector('#passwordMessage');
const confirmPasswordMessage = document.querySelector('#confirmPasswordMessage');
const showPasswordButton = document.querySelector('.current-password button');

let checkPw = false;

/*기존 비밀번호 입력 */
function validatePassword() {
  	if (currentPasswordInput.value.trim() === '') {
	    message.innerText = '비밀번호를 입력해주세요.';
	    message.style.color = 'red';
	    currentPasswordInput.classList.add("is-invalid");
	    return true;
  	} else {
		checkPw = false;
		$.ajax({
			url: "checkPwOk.mypage",
			data: {userId: userId, inputUserPassword: currentPasswordInput.value},
			async: false,
			success: function(result) {
				result = JSON.parse(result);
				if(result.check) {
					// 일치하다
					message.innerHTML = "";
	  				currentPasswordInput.classList.remove("is-invalid");
					checkPw = true;
				} else {
					message.innerText = '기존 비밀번호와 다릅니다';
				    message.style.color = 'red';
				    currentPasswordInput.classList.add("is-invalid");
					checkPw = false;
				}
			}
		})
	}
}

function submit() {
	if (validatePassword() && validatePasswordInputs()) {
    	document.updatePw.submit();
  	}
}

/* 새로운 비밀번호 입력 */

function validateNewPassword() {
  const newPasswordValue = newPasswordInput.value;
  if (!newPasswordValue) {
    newPasswordMessage.innerText = '비밀번호를 입력해주세요.';
    newPasswordMessage.style.color = 'red';
    newPasswordInput.classList.add("is-invalid");
    
    return false;
  }
  if (!/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/.test(newPasswordValue)) {
    newPasswordMessage.innerText = '영문+숫자 조합 8자리 이상 입력해주세요.';
    newPasswordMessage.style.color = 'red';
    newPasswordInput.classList.add("is-invalid");
    return false;
  }else{
	  newPasswordMessage.innerHTML = "";
	newPasswordInput.classList.remove('is-invalid');
  }
}


/* 새로운 비밀번호 확인 */

function validateConfirmPassword() {
  const newPasswordValue = newPasswordInput.value;
  const confirmPasswordValue = confirmPasswordInput.value;
  if (newPasswordValue !== confirmPasswordValue) {
    confirmPasswordMessage.innerText = '비밀번호가 일치하지 않습니다.';
    confirmPasswordMessage.style.color = 'red';
    confirmPasswordInput.classList.add("is-invalid");
    return false;
  }else{
	  confirmPasswordMessage.innerText = "";
	  confirmPasswordInput.classList.remove("is-invalid");
	  
  }
}

function validatePasswordInputs() {
  return validateNewPassword() && validateConfirmPassword();
}
/* 입력화면에서 벗어나면 즉시 값반영해서 맞는지 아닌지 판별 */
currentPasswordInput.addEventListener('blur', validatePassword);
newPasswordInput.addEventListener('blur', validateNewPassword);
confirmPasswordInput.addEventListener('blur', validateConfirmPassword);

/* 비밀번호 표시 */
showPasswordButton.addEventListener('click', () => {
  const type = currentPasswordInput.type === 'password' ? 'text' : 'password';
  currentPasswordInput.type = type;
  showPasswordButton.classList.toggle('show');
});