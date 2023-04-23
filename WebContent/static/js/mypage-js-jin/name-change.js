/*이름 유효성 검사*/
	function validateName() {
		  var name = document.getElementById("name").value.trim();
		  var message = document.getElementById("message");
		  var input = document.getElementById("name");
			/* 이름 빈값일시 출력 */
		  if (name == "") {
		    message.innerHTML = "변경할 이름을 입력해주세요.";
		    message.style.color = 'red';
		    input.classList.add("is-invalid");
		    input.classList.remove("is-valid");
		    return false;
		    /* 빈값아니면 원상태로 복귀 */
		  } else {
		    input.classList.remove("is-invalid");
		    input.classList.add("is-valid");
		    message.innerHTML = "";
		  }
		}

		var emailInput = document.getElementById("name");
		/* blur로 정보 즉시 반영 */
		emailInput.addEventListener("blur", validateName);