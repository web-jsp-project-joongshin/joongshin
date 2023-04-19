<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Password Change</title>
	<script>
		function validateForm() {
			// Get form inputs
			var oldPassword = document.forms["passwordForm"]["oldPassword"].value;
			var newPassword = document.forms["passwordForm"]["newPassword"].value;
			var confirmPassword = document.forms["passwordForm"]["confirmPassword"].value;

			// Validate old password
			if (oldPassword == "") {
				document.getElementById("oldPasswordError").innerHTML = "기존 비밀번호를 입력해주세요.";
				return false;
			} else {
				document.getElementById("oldPasswordError").innerHTML = "";
			}

			// Validate new password
			if (newPassword == "") {
				document.getElementById("newPasswordError").innerHTML = "새로운 비밀번호를 입력해주세요.";
				return false;
			} else if (!/^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/.test(newPassword)) {
				document.getElementById("newPasswordError").innerHTML = "영문+숫자 조합 8자리 이상으로 설정해주세요.";
				return false;
			} else {
				document.getElementById("newPasswordError").innerHTML = "";
			}

			// Validate confirm password
			if (confirmPassword == "") {
				document.getElementById("confirmPasswordError").innerHTML = "새로운 비밀번호를 다시 입력해주세요.";
				return false;
			} else if (newPassword != confirmPassword) {
				document.getElementById("confirmPasswordError").innerHTML = "새로운 비밀번호와 일치하지 않습니다.";
				return false;
			} else {
				document.getElementById("confirmPasswordError").innerHTML = "";
			}

			// If all validations pass, submit the form
			return true;
		}
	</script>
</head>
<body>
	<h1>Password Change</h1>
	<form name="passwordForm" onsubmit="return validateForm()">
		<div>
			<label for="oldPassword">기존 비밀번호:</label>
			<input type="password" id="oldPassword" name="oldPassword">
			<div id="oldPasswordError" style="color:red"></div>
		</div>
		<div>
			<label for="newPassword">새로운 비밀번호:</label>
			<input type="password" id="newPassword" name="newPassword">
			<div id="newPasswordError" style="color:red"></div>
		</div>
		<div>
			<label for="confirmPassword">새로운 비밀번호 확인:</label>
			<input type="password" id="confirmPassword" name="confirmPassword">
			<div id="confirmPasswordError" style="color:red"></div>
		</div>
		<input type="submit" value="변경">
	</form>
</body>
</html>
    