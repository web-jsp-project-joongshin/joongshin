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


<link href="../../static/css/mypage-css-jin/email-change.css" rel="stylesheet" type="text/css"/>

<style>
    .is-invalid {
        border-color: red;
    }
    .is-valid {
  border-color:green;
}
</style>

</head>
<body>


	<div id="app-body">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >이메일 수정</h1>
				
				<section  >
					<fieldset  class="form-group text-field">
						<legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0">이메일</legend>
						<div>
							<input  type="text" id="email"
								placeholder="변경할 이메일을 입력해주세요" 
								class="form-control" 
								spellcheck="true" 
								 >
						</div>
						<div id="message"></div>
					
					</fieldset>
				</section>
				<footer  class="button-group">
					<a  href="javascript:history.go(-1)"
						class="btn btn-cancel btn-active btn-outline-secondary"
						target="_self">취소</a>
					<button  type="button" class="btn btn-primary" onclick="validateEmail()">수정
						완료</button>
				</footer>
			</main>
		</div>
	</div>
	
	
<script>
  function validateEmail() {
    var email = document.getElementById("email").value.trim();
    var message = document.getElementById("message");
    var input = document.getElementById("email");

    if (email == "") {
      message.innerHTML = "이메일 주소를 입력해주세요.";
      message.style.color = 'red';
      input.classList.add("is-invalid");
      input.classList.remove("is-valid");
      return false;
    } else if (email == "kimjin9822@naver.com") {
      message.innerHTML = "이미 가입된 이메일입니다.";
      message.style.color = 'red';
      input.classList.add("is-invalid");
      input.classList.remove("is-valid");
      return false;
    } else {
      input.classList.remove("is-invalid");
    }

    var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (regex.test(email)) {
      message.innerHTML = "유효한 이메일 주소입니다.";
      message.style.color = 'red';
      input.classList.add("is-valid");
      input.classList.remove("is-invalid");
      return true;
    } else {
      message.innerHTML = "유효하지 않은 이메일 주소입니다.";
      message.style.color = 'red';
      input.classList.add("is-invalid");
      input.classList.remove("is-valid");
      return false;
    }
  }

  var emailInput = document.getElementById("email");
  emailInput.addEventListener("blur", validateEmail);
</script>

	
</body>
</html>
