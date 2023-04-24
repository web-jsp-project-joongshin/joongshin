<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주니어 회원가입</title>
</head>
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">

<link href="../../static/css/singupcss-hsw/basic.css" rel="stylesheet">
<!-- 개인 css -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- 폰트 -->
<body>
<%@ include file="../mainpageSeo/header.jsp" %>

	<div>
		<div class="login-page">
			<h2>주니어 회원가입</h2>
			<div class="card">
				<form>
					<div class="form-row">
						<div id="nameBox" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">이름</legend>
								<div>
									<input name="username" type="text" placeholder="이름(실명)을 입력해주세요"
										maxlength="7" class="inputclass" id="name">
									<div id="message"></div>
								</div>
							</fieldset>
						</div>
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
										placeholder="영문+숫자 조합 8자리 이상 입력해주세요." class="inputclass"
										id="password">
									<button type="button" class="btn-17" id="passwordButton">표시</button>
									<div id="message3"></div>
								</div>
							</fieldset>
						</div>
						<div id="address" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">주소</legend>
								<div>
									<div class="input-group">
										<input name="address" type="text" placeholder="우편번호" size="6"
											class="addressnumber">
										<button class="btn-address">우편번호</button>
									</div>
									<!-- 우편번호 검색 연결 -->
									<input name="address2" type="text" placeholder="상세주소"
										class="inputclass">
								</div>
							</fieldset>
						</div>
						<div id="numberBox" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">전화번호</legend>
								<div>
									<input name="phoneNumber" type="text"
										placeholder="010-XXXX-XXXX" maxlength="11" class="inputclass"
										id="number">
									<div id="message4"></div>
								</div>
							</fieldset>
						</div>
						<div id="selfProduce" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">간편 이력서</legend>
								<textarea rows="3" cols="25"
									placeholder="300자 내외 자신의 경력을 작성해주세요." class="textbox"></textarea>
							</fieldset>
						</div>
						
						<div id="signUpButton" class="col-12">
							<button type="submit" class="btn-signup">
								<span class="btntext">회원 가입</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

        

/* 이름 */
function nameInput() {
	var name = document.getElementById("name").value.trim();
	var message = document.getElementById("message");
	var input = document.getElementById("name");

	if (name == "") {
		message.innerHTML = "이름을 입력해주세요.";
		message.style.color = 'red';
		message.style.fontSize = '0.8rem';
		input.classList.add("is-invalid");
		input.classList.remove("is-valid");
		return false;
	} else {
		input.classList.remove("is-invalid");
		input.classList.add("is-valid");
		message.innerHTML = "";
	}
}

var nameboxInput = document.getElementById("name");
nameboxInput.addEventListener("blur", nameInput);

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

/* 전화번호 */
function numberInput() {
	var number = document.getElementById("number").value.trim();
	var message4 = document.getElementById("message4");
	var input = document.getElementById("number");
	
	if (number == "") {
		message4.innerHTML = "전화번호를 입력해주세요.";
		message4.style.color = 'red';
		message4.style.fontSize = '0.8rem';
		input.classList.add("is-invalid");
		input.classList.remove("is-valid");
		return false;
	} else {
		input.classList.remove("is-invalid");
		input.classList.add("is-valid");
		message4.innerHTML = "";
	}
}
var numberboxInput = document.getElementById("number");
numberboxInput.addEventListener("blur", numberInput);


function checkSelect()  {
	  const checkboxes 
	    = document.querySelectorAll('input[name="term"]');
	  const checked 
	    = document.querySelectorAll('input[name="term"]:checked');
	  const selectAll 
	    = document.querySelector('input[name="selectall"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

	}

	function selectAll(selectAll)  {
	  const checkboxes 
	     = document.getElementsByName('term');
	  
	  checkboxes.forEach((checkbox) => {
	    checkbox.checked = selectAll.checked
	  })
	}
</script>

<%@ include file="../mainpageSeo/footer.jsp" %>
</html>