<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">

<!-- 개인 css -->
<link href="../../static/css/singupcss-hsw/basic.css" rel="stylesheet">
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<body>
<%@ include file="../mainpageSeo/header.jsp" %>
	<div>
		<div class="login-page">
			<h2>로그인</h2>
			<div class="card">
				<form>
					<div class="form-row">
						<div id="emailBox" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">이메일</legend>
								<div>
									<input name="email" type="email"
										placeholder="example@joongsin.com" maxlength="30"
										class="inputclass" id="email">
									<div id="message2"></div>
								</div>
							</fieldset>
						</div>
						<div id="passwordBox" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">비밀번호</legend>
								<div class="input-group">
									<input name="password" type="password"
										placeholder="영문+숫자 조합 8자리 이상 입력해주세요." class="inputclass" id="password">
									<button type="button" class="btn-17" id="passwordButton">표시</button>
									<div id="message3"></div>
								</div>
							</fieldset>
						</div>
						<div id="loginButton" class="col-12">
							<button type="submit" class="btn-login">
								<span class="btntext">회원 가입</span>
							</button>
						</div>
						<div class="searchdiv">
						<a href="findId.jsp" class="search">아이디 찾기</a>
						<div class="line"></div>
						<a href="findPassword.jsp" class="search">비밀번호 찾기</a>
						<div class="line"></div>
						<a href="join.jsp" class="search">회원가입</a>
						</div>
						
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<%@ include file="../mainpageSeo/footer.jsp" %>
<script>
/* 이메일 */
function emailInput() {
	var email = document.getElementById("email").value.trim();
	var message2 = document.getElementById("message2");
	var input = document.getElementById("email");

	if (email == "") {
		message2.innerHTML = "이메일을 입력해주세요.";
		message2.style.color = 'red';
		message2.style.fontSize = '0.8rem';
		message2.style.marginBottom='15px';
		input.classList.add("is-invalid");
		input.classList.remove("is-valid");
		return false;
	} else {
		input.classList.remove("is-invalid");
		input.classList.add("is-valid");
		message2.innerHTML = "";
	}
	                                              
	     var regEmail = /^([0-9a-zA-Z_\.-]+)@([0-9a-zA-Z_-]+)(\.[0-9a-zA-Z_-]+){1,2}$/;
	     if(!regEmail.test(email)) {
	    	 message2.innerHTML="유효하지 않은 이메일값입니다."
	    	 message2.style.color='red';
	    	 message2.style.fontSize= '0.8rem';
	 		message2.style.marginBottom='15px';
			input.classList.add("is-invalid");
			input.classList.remove("is-valid");
	         return false;
	         }                            

	     else {                       
	    	 input.classList.remove("is-invalid");
	 		input.classList.add("is-valid");
	 		message2.innerHTML = "";
	          return true;         

	     }                            

}

var emailboxInput = document.getElementById("email");
emailboxInput.addEventListener("blur", emailInput);

/* 비밀번호 오류 */
function passwordInput() {
	var password = document.getElementById("password").value.trim();
	var message3 = document.getElementById("message3");
	var input = document.getElementById("password");
	
	if (password == "") {
		message3.innerHTML = "비밀번호를 입력해주세요.";
		message3.style.color = 'red';
		message3.style.fontSize = '0.8rem';
		input.classList.add("is-invalid");
		input.classList.remove("is-valid");
		return false;
	}else if(!/^(?=.*[a-zA-Z])(?=.*[0-9]).{8,}$/.test(password)) {
		message3.innerHTML = "영문 + 숫자 8자리 조합으로 입력해주세요.";
		message3.style.color = 'red';
		message3.style.fontSize = '0.8rem';
		input.classList.add("is-invalid");
		input.classList.remove("is-valid");
	} else {
		input.classList.remove("is-invalid");
		input.classList.add("is-valid");
		message3.innerHTML = "";
	}
}
var passwordboxInput = document.getElementById("password");
passwordboxInput.addEventListener("blur", passwordInput);
</script>

</html>