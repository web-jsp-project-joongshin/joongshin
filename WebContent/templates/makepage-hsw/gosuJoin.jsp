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
                <h2 id="title">
                        중신 주니어 회원가입
                    </h2>
                
                
                <form action="${pageContext.request.contextPath}/joinOk.user" name="join" method="post">
                    
                    <div class="info">
                        <div class="info-container">
                            <label>이름</label>
                            <span>
                                <input type="text" id="name" name="userName" autocomplete="off" placeholder="영문 혹은 한글, 2~20자">
                            </span>
                            <p class="help"></p>
                        </div>
                        
                        <div class="info-container">
                            <label>휴대폰 번호</label>
                            <span>
                                <input type="text" id="phone" name="userPhonenumber" autocomplete="off" placeholder="예) 01000000000">
                            </span>
                            <p class="help"></p>
                        </div>
                        <button type="button" class="next1" onclick="goJoin()">다음</button>
                    </div>
                    <div class="join">
                        <div class="basic-info-container">
                            <h3>기본 정보</h3>
                            <dl>
                                <dt>이름</dt>
                                <dd></dd>
                                
                                <dt>휴대폰 번호</dt>
                                <dd></dd>
                            </dl>
                        </div>

                        <div class="info-container info-container-first">
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
                                        <input type="text" autocomplete="off" placeholder="이메일 앞자리">
                                    </div>
                                    <span id="seperator">@</span>
                                    <div class="email-last">
                                        <input type="text" autocomplete="off" placeholder="이메일 뒷자리">
                                    </div>
                                    <input type="hidden" name="userEmail">
                                </div>
                            </span>
                            <p class="help"></p>
                            <div class="email-select-wrap">
                                <select class="email">
                                    <option value="">직접입력</option>
                                    <option value="naver.com">naver.com</option>
                                    <option value="hanmail.net">hanmail.net</option>
                                    <option value="nate.com">nate.com</option>
                                    <option value="hotmail.com">hotmail.com</option>
                                    <option value="gmail.com">gmail.com</option>
                                </select>
                            </div>
                            <p class="help"></p>
                        </div>
                            
                            
                            
                            
                            
                            
                            
                            
                            <p class="help"></p>
                            <div id="selfProduce" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">간편 이력서</legend>
								<textarea rows="3" cols="25"
									placeholder="300자 내외 자신의 경력을 작성해주세요." class="textbox"></textarea>
							</fieldset>
						</div>
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
<script src="${pageContext.request.contextPath}/static/js/makepage-jin/gosuJoin.js"></script>

<%@ include file="../mainpageSeo/footer.jsp" %>
</html>