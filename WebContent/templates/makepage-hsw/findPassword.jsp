<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">

<link href="../../static/css/singupcss-hsw/basic.css" rel="stylesheet">
<!-- 개인 css -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- 폰트 -->

<style>
.is-invalid {
	border-color: red;
}
</style>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>

	<div>
		<div class="find" style="padding: 5rem;">
			<h2>비밀번호 찾기</h2>
			<div class="card">
				<form>
					<div class="form-row">
						<div id="emailbox" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">가입한 이메일 주소를 입력해주세요</legend>
								<div>
									<input name="email" type="email"
										placeholder="example@joongsin.com" maxlength="30"
										class="inputclass" id="email">
									<div class="col-14">
										<div id="message2"></div>
										<small class="notice">가입하신 이메일 주소를 입력해주시면 <br>새로운
											비밀번호를 설정 가능한 링크를 보내드립니다.
										</small>
									</div>
								</div>
							</fieldset>
						</div>
						<div id="sendEmail" class="col-12">
							<button type="submit" class="btn-signup">
								<span class="btntext">이메일 전송하기</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
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
</script>

<%@ include file="../mainpageSeo/footer.jsp" %>
</html>