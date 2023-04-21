<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디 찾기</title>
</head>
<link href="../../static/css/singupcss-hsw/basic.css" rel="stylesheet">
<!-- 개인 css -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<!-- 폰트 -->

<style>
.is-invalid {
	border-color: red;
}
</style>

<body>
	<div>
		<div class="find">
			<h2>아이디 찾기</h2>
			<div class="card">
				<form>
					<div class="form-row">
						<div id="nameBox" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">이름</legend>
								<div>
									<input name="username" type="text" placeholder="이름(실명)을 입력해주세요"
										maxlength="7" class="inputclass" id="name">
								</div>
								<div id="message"></div>
							</fieldset>
						</div>
						<div id="numberBox" class="col-12">
							<fieldset class="form-group">
								<legend class="legend-text">가입시 등록한 휴대전화 번호를 입력해주세요.</legend>
								<div>
									<input name="phoneNumber" type="number"
										placeholder="010-XXXX-XXXX" maxlength="11" class="inputclass"
										id="number">
								</div>
								<div id="message2"></div>
							</fieldset>
						</div>
						<div id="certificationNumber" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">인증번호</legend>
								<div>
									<div class="input-group">
										<input name="address" type="text" placeholder="인증번호" size="6"
											class="certificationNumber">
										<button class="btn-certificationNumber">인증번호</button>
									</div>
								</div>
							</fieldset>
						</div>
						<div id="phoneCertification" class="col-12">
							<button type="submit" class="btn-signup">
								<span class="btntext">휴대폰 인증</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
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

		function numberInput() {
			var number = document.getElementById("number").value.trim();
			var message2 = document.getElementById("message2");
			var input = document.getElementById("number");
			
			if (number == "") {
				message2.innerHTML = "전화번호를 입력해주세요.";
				message2.style.color = 'red';
				message2.style.fontSize = '0.8rem';
				input.classList.add("is-invalid");
				input.classList.remove("is-valid");
				return false;
			} else {
				input.classList.remove("is-invalid");
				input.classList.add("is-valid");
				message2.innerHTML = "";
			}
		}

		var numberboxInput = document.getElementById("number");
		numberboxInput.addEventListener("blur", numberInput);
	</script>
</body>
</html>