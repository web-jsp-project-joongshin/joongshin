<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>중고신입 비밀번호 변경</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/password-change.css" rel="stylesheet" type="text/css"/>

<style>
/* 잘못된 값 입력시 배경 빨강으로 만들어줌 */
    .is-invalid {
        border-color: red;
    }
</style>

</head>
<body>
<c:set var="userId" value="${sessionScope.userId}"/>
<%@ include file="../mainpageSeo/header.jsp" %>
	<div id="app-body">
		<div class="container container-md">
		<form  action="${pageContext.request.contextPath}/myPwChangeOk.mypage" name="updatePw" method="post">
			<main class="account-info-container">
				<h1>비밀번호 변경</h1>
				<div  
					class="sign-container secondary lg" style="display: none;">
					<div  class="header">
						<div  class="title">
							<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwyMCAwIDIwIDIwIDAgMjB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTMwMSkgdHJhbnNsYXRlKDE2IDI4MSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEwIDJjLTQuNDE2IDAtOCAzLjU4NC04IDhzMy41ODQgOCA4IDggOC0zLjU4NCA4LTgtMy41ODQtOC04LTh6bS44IDEySDkuMlY5LjJoMS42VjE0em0wLTYuNEg5LjJWNmgxLjZ2MS42eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC0zMDEpIHRyYW5zbGF0ZSgxNiAyODEpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="secondary">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div class="margin-bottm-8 col-12">
					  <fieldset class="form-group" id="__BVID__424">
					    <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__424__BV_label_">새로운 비밀번호</legend>
					    <div>
					      <input name="newPassword" id="newPassword" type="password" placeholder="영문+숫자 조합 8자리 이상 입력해주세요" autocomplete="off" class="form-control1" autocapitalize="off" spellcheck="false" data-vv-validate-on="blur" aria-invalid="true" id="__BVID__425" aria-required="true">
					      <div id="passwordMessage"></div>
					    </div>
					  </fieldset>
					</div>
					<div class="margin-bottm-8 col-12">
					  <fieldset class="form-group" id="__BVID__426">
					    <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__426__BV_label_">새로운 비밀번호 확인</legend>
					    <div>
					      <input name="confirmPassword" id="confirmPassword" type="password" placeholder="비밀번호를 한번 더 입력해주세요" autocomplete="off" class="form-control1" autocapitalize="off" spellcheck="false" aria-invalid="true" aria-required="true">
					      <div id="confirmPasswordMessage"></div>
					    </div>
					  </fieldset>
					</div>
					</div>
					<footer class="button-group">
						<a href="javascript:history.go(-1)"
							class="btn btn-cancel btn-active btn-outline-secondary"
							target="_self" style="color: #6FB6C0;">취소</a>
						<button type="button" class="btn btn-primary" onclick="submit()">변경 완료</button>
					</footer>	
				</main>
			</form>
		</div>
	</div>
</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
/*비밀번호 유효성 검사*/
const currentPasswordInput = document.querySelector('input[name="currentPassword"]');
const message = document.querySelector('#message');
const newPasswordInput = document.querySelector('input[name="password"]');
const confirmPasswordInput = document.querySelector('input[name="confirmPassword"]');
const newPasswordMessage = document.querySelector('#passwordMessage');
const confirmPasswordMessage = document.querySelector('#confirmPasswordMessage');
const showPasswordButton = document.querySelector('.current-password button');

let checkPw = false;

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
</script>
</html>