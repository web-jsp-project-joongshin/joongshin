<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link data-vue-meta="1" rel="icon" type="image/png" sizes="32x32"
	href="https://static.cdn.soomgo.com/static/favicon-32x32.png?webp=1">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/password-change.css" rel="stylesheet" type="text/css"/>
<link href="../../static/css/mypage-css-jin/header-footer.css" rel="stylesheet" type="text/css"/>

<style>

    .is-invalid {
        border-color: red;
    }
</style>

</head>
<body>

	<div id="app-body">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >비밀번호 변경</h1>
				<div  
					class="sign-container secondary lg" style="display: none;">
					<div  class="header">
						<div  class="title">
							<img 
								src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwyMCAwIDIwIDIwIDAgMjB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTMwMSkgdHJhbnNsYXRlKDE2IDI4MSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEwIDJjLTQuNDE2IDAtOCAzLjU4NC04IDhzMy41ODQgOCA4IDggOC0zLjU4NCA4LTgtMy41ODQtOC04LTh6bS44IDEySDkuMlY5LjJoMS42VjE0em0wLTYuNEg5LjJWNmgxLjZ2MS42eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC0zMDEpIHRyYW5zbGF0ZSgxNiAyODEpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="secondary"><span ></span>
						</div>
						
					</div>
					
				</div>
				<div   class="form-row">
					<div  class="margin-bottom-24 col-12">
						<fieldset class="form-group current-password" id="__BVID__422">
						  <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__422__BV_label_">기존 비밀번호</legend>
						  <div>
						    <div role="group" class="input-group current-password">
						      <input name="currentPassword" type="password" placeholder="현재 비밀번호를 입력해주세요" autocomplete="off" class="form-control" autocapitalize="off" spellcheck="false" data-vv-validate-on="blur" aria-invalid="true" id="ㄷ">
						      <button type="button" class="btn btn-secondary">표시</button>
						    </div>
						    <div id="message"></div>
						  </div>
						</fieldset>

					</div>
					
					<div class="margin-bottm-8 col-12">
					  <fieldset class="form-group" id="__BVID__424">
					    <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__424__BV_label_">새로운 비밀번호</legend>
					    <div>
					      <input name="password" type="password" placeholder="영문+숫자 조합 8자리 이상 입력해주세요" autocomplete="off" class="form-control" autocapitalize="off" spellcheck="false" data-vv-validate-on="blur" aria-invalid="true" id="__BVID__425" aria-required="true">
					      <div id="passwordMessage"></div>
					    </div>
					  </fieldset>
					</div>
					<div class="margin-bottm-8 col-12">
					  <fieldset class="form-group" id="__BVID__426">
					    <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__426__BV_label_">새로운 비밀번호 확인</legend>
					    <div>
					      <input name="confirmPassword" type="password" placeholder="비밀번호를 한번 더 입력해주세요" autocomplete="off" class="form-control" autocapitalize="off" spellcheck="false" aria-invalid="true" id="__BVID__427" aria-required="true">
					      <div id="confirmPasswordMessage"></div>
					    </div>
					  </fieldset>
					</div>
					
				</div>
				<footer  class="button-group">
					<a  href="javascript:history.go(-1)"
						class="btn btn-cancel btn-active btn-outline-secondary"
						target="_self">취소</a>
					<button  type="submit" class="btn btn-primary">변경
						완료</button>
				</footer>
			</main>
		</div>
	</div>
	
	
	
	
<script type="text/javascript">
const currentPasswordInput = document.querySelector('input[name="currentPassword"]');
const message = document.querySelector('#message');
const newPasswordInput = document.querySelector('input[name="password"]');
const confirmPasswordInput = document.querySelector('input[name="confirmPassword"]');
const newPasswordMessage = document.querySelector('#passwordMessage');
const confirmPasswordMessage = document.querySelector('#confirmPasswordMessage');
const showPasswordButton = document.querySelector('.current-password button');

/*기존 비밀번호 입력 */
function validatePassword() {
  if (currentPasswordInput.value.trim() === '') {
    message.innerText = '비밀번호를 입력해주세요.';
    message.style.color = 'red';
    currentPasswordInput.classList.add("is-invalid");
    return true;
  } else if (currentPasswordInput.value !== '1111') {
    message.innerText = '기존 비밀번호와 다릅니다';
    message.style.color = 'red';
    currentPasswordInput.classList.add("is-invalid");
    return false;
  }else{
	  message.innerHTML = "";
	  currentPasswordInput.classList.remove("is-invalid");
  }
}

document.querySelector('button[type="submit"]').addEventListener('click', (event) => {
  event.preventDefault();
  if (!validatePassword() || !validatePasswordInputs()) {
    return;
  }
  // 기존 비밀번호가 맞을 때 변경 로직 추가
  // ...
  alert('비밀번호가 변경되었습니다.');
});

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

currentPasswordInput.addEventListener('blur', validatePassword);
newPasswordInput.addEventListener('blur', validateNewPassword);
confirmPasswordInput.addEventListener('blur', validateConfirmPassword);

/* 비밀번호 표시 */
showPasswordButton.addEventListener('click', () => {
  const type = currentPasswordInput.type === 'password' ? 'text' : 'password';
  currentPasswordInput.type = type;
  showPasswordButton.classList.toggle('show');
});

</script>

</body>
</html>