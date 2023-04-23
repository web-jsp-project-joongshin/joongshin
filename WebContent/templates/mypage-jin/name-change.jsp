<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<%@ include file="../mainpageSeo/header.jsp" %>

	<div id="app-body">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >이름 수정</h1>
				<div  
					class="sign-container secondary lg">
					<div  class="header">
						<div  class="title">
							<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwyMCAwIDIwIDIwIDAgMjB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTMwMSkgdHJhbnNsYXRlKDE2IDI4MSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEwIDJjLTQuNDE2IDAtOCAzLjU4NC04IDhzMy41ODQgOCA4IDggOC0zLjU4NCA4LTgtMy41ODQtOC04LTh6bS44IDEySDkuMlY5LjJoMS42VjE0em0wLTYuNEg5LjJWNmgxLjZ2MS42eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC0zMDEpIHRyYW5zbGF0ZSgxNiAyODEpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==" alt="secondary">
							<span >이름(실명)을
								사용하시면 고용율이 150% 상승합니다</span>
						</div>
					</div>
				</div>
				<!-- 이름 입력창 -->
				<section  >
					<fieldset  class="form-group11 text-field">
						<legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0">이름</legend>
						<div>
						<!-- 이름을 입력하고 빈값이 있으면 메세지 출력 -->
							<input type="text" id="name" placeholder="이름(실명)을 입력해주세요" class="form-control1" spellcheck="true" />
						</div>
							<div id="message"></div>
					</fieldset>
				</section>
				<footer  class="button-group">
					<a href="javascript:history.go(-1)" class="btn btn-cancel btn-active btn-outline-secondary"
						target="_self" style="color: #6FB6C0;">
						취소
					</a>
					<button  type="button" class="btn btn-primary" onclick="validateName()">수정 완료</button>
				</footer>
			</main>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/mypage-js-jin/name-change.js"></script>

<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>