<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<link href="${pageContext.request.contextPath}/static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">

<!-- 개인 css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/basic.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/term.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/singupcss-hsw/info.css">
    
    
<!-- 폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<body>
<%@ include file="../mainpageSeo/header.jsp" %>
    <main id="login">
        <div class="modal">
            <div class="warn-modal">
                <div id="content-wrap"></div>
            </div>
        </div>
        <section id="login-container">
           
            <article>
                <div class="login">
                    <h2 id="title">
                        중신 로그인
                    </h2>
                </div>
                <form action="${pageContext.request.contextPath}/loginOk.user" name="login" method="post">
                    <div class="login">
                        <div class="info-container info-container-first">
                            <span>
                                <input type="text" id="id" name="userEmail" autocomplete="off" placeholder="이메일">
                            </span>
                            <p class="help"></p>
                        </div>
                        <div class="info-container">
                            <span>
                                <div class="password">
                                    <input type="password" id="password" name="userPassword" placeholder="비밀번호">
                                    <p class="help"></p>
                                </div>
                            </span>
                        </div>
                        
                        <button type="button" class="login" onclick="send()">로그인</button>
                        <button type="button" class="join" style="margin-top: 15px;" onclick="location.href='${pageContext.request.contextPath}/join.user'">회원가입</button>
                    </div>
                </form>
            </article>
            <button class="login" onclick="location.href='${pageContext.request.contextPath}/findPassword.user'">아이디 찾기</button>
        </section>
    </main>
</body>
<%@ include file="../mainpageSeo/footer.jsp" %>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="/static/js/makepage-jin/modal.js"></script>
<script src="${pageContext.request.contextPath}/static/js/makepage-jin/login.js"></script>
<script type="text/javascript">
</script>
</html>
