<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>중고신입 비밀번호 변경</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/password-change.css" rel="stylesheet" type="text/css"/>

<style>
/* 잘못된 값 입력시 배경 빨강으로 만들어줌 */
    .is-invalid {
        border-color: red;
    }
</style>

</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>
	<div id="app-body">
		<div class="container container-md">
		<form  action="${pageContext.request.contextPath}/myPwChangeOk.mypage?userId=${userId}" name="updatePw" method="post">
			<main class="account-info-container">
				<h1>비밀번호 변경</h1>
				<div  
					class="sign-container secondary lg" style="display: none;">
					<div  class="header">
						<div  class="title">
							<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwyMCAwIDIwIDIwIDAgMjB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTMwMSkgdHJhbnNsYXRlKDE2IDI4MSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEwIDJjLTQuNDE2IDAtOCAzLjU4NC04IDhzMy41ODQgOCA4IDggOC0zLjU4NCA4LTgtMy41ODQtOC04LTh6bS44IDEySDkuMlY5LjJoMS42VjE0em0wLTYuNEg5LjJWNmgxLjZ2MS42eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC0zMDEpIHRyYW5zbGF0ZSgxNiAyODEpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="secondary">
						</div>
					</div>
				</div>
				<div class="form-row">
					<div  class="margin-bottom-24 col-12">
						<fieldset class="form-group current-password" id="__BVID__422">
						  <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__422__BV_label_">기존 비밀번호</legend>
						  <div>
						    <div role="group" class="input-group1 current-password">
						      <input name="currentPassword" type="password" placeholder="현재 비밀번호를 입력해주세요" autocomplete="off" class="form-control1" autocapitalize="off" spellcheck="false" data-vv-validate-on="blur" aria-invalid="true" id="currentPassword" >
						      <button type="button" class="btn btn-secondary">표시</button>
						    </div>
						    <div id="message"></div>
						  </div>
						</fieldset>
					</div>
					<div class="margin-bottm-8 col-12">
					  <fieldset class="form-group" id="__BVID__424">
					    <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__424__BV_label_">새로운 비밀번호</legend>
					    <div>
					      <input name="newPassword" id="newPassword" type="password" placeholder="영문+숫자 조합 8자리 이상 입력해주세요" autocomplete="off" class="form-control1" autocapitalize="off" spellcheck="false" data-vv-validate-on="blur" aria-invalid="true" id="__BVID__425" aria-required="true">
					      <div id="passwordMessage"></div>
					    </div>
					  </fieldset>
					</div>
					<div class="margin-bottm-8 col-12">
					  <fieldset class="form-group" id="__BVID__426">
					    <legend tabindex="-1" class="bv-no-focus-ring col-form-label pt-0" id="__BVID__426__BV_label_">새로운 비밀번호 확인</legend>
					    <div>
					      <input name="confirmPassword" id="confirmPassword" type="password" placeholder="비밀번호를 한번 더 입력해주세요" autocomplete="off" class="form-control1" autocapitalize="off" spellcheck="false" aria-invalid="true" aria-required="true">
					      <div id="confirmPasswordMessage"></div>
					    </div>
					  </fieldset>
					</div>
					</div>
					<footer class="button-group">
						<a href="javascript:history.go(-1)"
							class="btn btn-cancel btn-active btn-outline-secondary"
							target="_self" style="color: #6FB6C0;">취소</a>
						<button type="button" class="btn btn-primary" onclick="submit()">변경 완료</button>
					</footer>	
				</main>
			</form>
		</div>
	</div>
</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	const userId = `${userId}`;
</script>
<script src="../../static/js/mypage-js-jin/password-change.js"></script>
</html>