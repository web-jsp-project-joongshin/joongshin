<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>이메일 변경</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<link href="../../static/css/mypage-css-jin/email-change.css" rel="stylesheet" type="text/css"/>

<style>
/* 이메일 유효성 검사 실패시 테두리 red */
    .is-invalid {
        border-color: red;
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

	<div id="app-body" style="padding: 30px;">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >이메일 수정</h1>
				<section>
					<fieldset  class="form-group text-field">
						<legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0">이메일</legend>
						<div>
							<input type="text" id="email" placeholder="변경할 이메일을 입력해주세요" class="form-control1">
						</div>
						<div id="message"></div>
					</fieldset>
				</section>
				<footer class="button-group">
					<a href="javascript:history.go(-1)" class="btn btn-cancel btn-active btn-outline-secondary" target="_self"  style="color: #6FB6C0;">취소</a>
					<button type="button" class="btn btn-primary" onclick="validateEmail()">수정
						완료</button>
				</footer>
			</main>
		</div>
	</div>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/mypage-js-jin/email-change.js"></script>

<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>
