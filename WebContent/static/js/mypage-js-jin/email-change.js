
/* 이메일 유효성 검사 */
  function validateEmail() {
    var email = document.getElementById("email").value.trim();
    var message = document.getElementById("message");
    var input = document.getElementById("email");

    if (email == "") {
      message.innerHTML = "이메일 주소를 입력해주세요.";
      message.style.color = 'red';
      input.classList.add("is-invalid");
      return false;
    } else if (email == "kimjin9822@naver.com") {
      message.innerHTML = "이미 가입된 이메일입니다.";
      message.style.color = 'red';
      input.classList.add("is-invalid");
      return false;
    } else {
      input.classList.remove("is-invalid");
    }

    var regex = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
    if (regex.test(email)) {
      message.innerHTML = "유효한 이메일 주소입니다.";
      message.style.color = 'green';
      input.classList.remove("is-invalid");
      return true;
    } else {
      message.innerHTML = "유효하지 않은 이메일 주소입니다.";
      message.style.color = 'red';
      input.classList.add("is-invalid");
      return false;
    }
  }

  var emailInput = document.getElementById("email");
  emailInput.addEventListener("blur", validateEmail);