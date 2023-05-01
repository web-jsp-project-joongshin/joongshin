<%@page import="java.util.Properties"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
</head>
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">

<!-- 개인 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/basic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/term.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/info.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/modal.css">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<!-- 폰트 -->


<body>

<%@ include file="../mainpageSeo/header.jsp" %>

<main id="join">
        <div class="modal">
            <div class="warn-modal">
                <div id="content-wrap"></div>
            </div>
        </div>
        <section id="join-container">
                <h2 id="title">
                    아이디 재설정
                </h2>
            
	<h1>비밀번호 찾기</h1>
	<form action="/FindPassword.board" method="post">	
		<div class="info">
			<div class="info-container">
				<span style="margin-bottom: 5%;">
					<input maxlength="30" id="email" name="userEmail" type="email" autocomplete="off" placeholder="example@joongsin.com">
				</span>
				<small class="notice">가입하신 이메일 주소를 입력해주시면 새로운 비밀번호를 설정 가능한 링크를 보내드립니다.</small>
				<p class="help"></p>
			</div>
		</div>
		<div class="join">
			<button type="submit" class="next1">이메일 전송하기</button>
		</div>
	</form>
	</section>
	</main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>

<%@ include file="../mainpageSeo/footer.jsp" %>
</html>