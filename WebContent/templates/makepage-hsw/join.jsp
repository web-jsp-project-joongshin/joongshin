<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<link href="${pageContext.request.contextPath}/static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">

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
            <article>
                <form action="${pageContext.request.contextPath}/joinOk.user" name="join" method="post">
                    <div class="join">
                        <div class="info-container info-container-first">
                            <label>이름</label>
                            <span>
                                <input type="text" id="name" name="userName" autocomplete="off" placeholder="이름">
                            </span>
                            <p class="help"></p>
                        </div>
                        
                        <div class="info-container">
                            <label>비밀번호</label>
                            <span>
                                <div class="password">
                                    <input type="password" id="password" name="userPassword" placeholder="영어, 숫자, 특수문자 중 2가지 이상 10~20자">
                                    <p class="help"></p>
                                </div>
                                <div class="password password-check">
                                    <input type="password" id="password-check" placeholder="비밀번호 재입력">
                                    <p class="help"></p>
                                </div>
                            </span>
                        </div>
                        <div class="info-container">
                            <label>이메일</label>
                            <span>
                                <div class="email-wrap">
                                    <div class="email-first">
                                        <input type="text" autocomplete="off" placeholder="이메일">
                                    </div>
                                    <input type="hidden" name="userEmail">
                                </div>
                            </span>
                            <p class="help"></p>
                        </div>
                        <button type="button" class="next1" onclick="send()">완료</button>
                    </div>
                </form>
            </article>
        </section>
    </main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="${pageContext.request.contextPath}/static/js/makepage-jin/check.js"></script>
<script src="${pageContext.request.contextPath}/static/js/makepage-jin/modal.js"></script>
<script src="${pageContext.request.contextPath}/static/js/makepage-jin/join.js"></script>

<%@ include file="../mainpageSeo/footer.jsp" %>
</html>