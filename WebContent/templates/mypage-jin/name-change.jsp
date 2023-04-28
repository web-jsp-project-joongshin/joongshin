<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<link href="../../static/css/mypage-css-jin/name-change.css" rel="stylesheet" type="text/css"/>

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
<c:set var="userId" value="${sessionScope.userId}"/>

<c:choose>
  <c:when test="${not empty userId}">
    <jsp:include page="../mainpageSeo/loginHeader.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="../mainpageSeo/header.jsp"/>
  </c:otherwise>
</c:choose>

	<div id="app-body">
		<div class="container container-md">
			<form class="account-info-container" action="${pageContext.request.contextPath}/myNameChangeOk.mypage" name="updateName" method="post">
				<h1>이름 수정</h1>
				<div  
					class="sign-container secondary lg">
					<div  class="header">
						<div  class="title">
							<img src="${pageContext.request.contextPath}/static/image/warning.svg" alt="secondary">
							<span>이름(실명)을
								사용하시면 고용율이 150% 상승합니다</span>
						</div>
					</div>
				</div>
				<!-- 이름 입력창 -->
				<section  >
						<legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0">이름</legend>
						<div>
						<!-- 이름을 입력하고 빈값이 있으면 메세지 출력 -->
							<input type="text" id="changeName" placeholder="이름(실명)을 입력해주세요" class="form-control1" spellcheck="true" name="changeName"/>
						</div>
							<div id="message"></div>
					</fieldset>
				</section>
				<footer  class="button-group">
					<a href="javascript:history.go(-1)" class="btn btn-cancel btn-active btn-outline-secondary"
						target="_self" style="color: #6FB6C0;">
						취소
					</a>
					<button type="button" class="btn btn-primary" onclick="validateName(); onClickchangeName();">수정 완료</button>
				</footer>
			</form>
		</div>
	</div>
</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script>
	var pass = false;
	
	function onClickchangeName() {
		if(pass) {
			document.updateName.submit();
		}
	}
	
	/*이름 유효성 검사*/
	function validateName() {
		  var name = document.getElementById("changeName").value.trim();
		  var message = document.getElementById("message");
		  var input = document.getElementById("changeName");
			/* 이름 빈값일시 출력 */
		  if (name == "") {
			pass = false;
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
			pass = true;
		  }
	}
			
	var emailInput = document.getElementById("changeName");
	/* blur로 정보 즉시 반영 */
	emailInput.addEventListener("blur", validateName);

</script>
</html>