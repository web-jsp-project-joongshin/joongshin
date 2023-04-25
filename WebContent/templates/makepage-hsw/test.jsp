<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../../static/css/singupcss-hsw/modal.css" rel="stylesheet">
    <title>회원가입</title>
</head>
<body>
    <main id="join">
        <div class="modal">
            <div class="warn-modal">
                <div id="content-wrap"></div>
            </div>
        </div>
        <section id="join-container">
            <article>
                <form action="${pageContext.request.contextPath}/joinOk.member" name="join" method="post">
                    <div class="info">
                        <div class="info-container">
                            <label>이름</label>
                            <span>
                                <input type="text" id="name" name="memberName" autocomplete="off" placeholder="영문 혹은 한글, 2~20자">
                                <img width="16px">
                            </span>
                            <p class="help"></p>
                        </div>
                        <div class="info-container">
                            <label>생년월일</label>
                            <span>
                                <input type="text" id="birth" name="memberBirth" autocomplete="off" placeholder="예) 19990101">
                                <img width="16px">
                            </span>
                            <p class="help"></p>
                        </div>
                        <div class="info-container">
                            <label>휴대폰 번호</label>
                            <span>
                                <input type="text" id="phone" name="memberPhone" autocomplete="off" placeholder="예) 01000000000">
                                <img width="16px">
                            </span>
                            <p class="help"></p>
                        </div>
                        <button type="button" class="next" onclick="goJoin()">다음</button>
                    </div>
                    <div class="join">
                        <div class="basic-info-container">
                            <h3>기본 정보</h3>
                            <dl>
                                <dt>이름</dt>
                                <dd></dd>
                                <dt>생년월일</dt>
                                <dd></dd>
                                <dt>휴대폰 번호</dt>
                                <dd></dd>
                            </dl>
                        </div>
                        <div class="info-container info-container-first">
                            <label>아이디</label>
                            <span>
                                <input type="text" id="id" name="memberIdentification" autocomplete="off" placeholder="영문 혹은 영문+숫자, 4~20자">
                                <img width="16px">
                            </span>
                            <p class="help"></p>
                        </div>
                        <div class="info-container">
                            <label>비밀번호</label>
                            <span>
                                <div class="password">
                                    <input type="password" id="password" name="memberPassword" placeholder="영어, 숫자, 특수문자 중 2가지 이상 10~20자">
                                    <img width="16px">
                                    <p class="help"></p>
                                </div>
                                <div class="password password-check">
                                    <input type="password" id="password-check" placeholder="비밀번호 재입력">
                                    <img width="16px">
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
                                        <img width="16px">
                                    </div>
                                    <span id="seperator">@</span>
                                    <div class="email-last">
                                        <input type="text" autocomplete="off" placeholder="이메일 뒷자리">
                                        <img width="16px">
                                    </div>
                                    <input type="hidden" name="memberEmail">
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
                                <img src="${pageContext.request.contextPath}/static/images/select.png" width="16px" style="display: inline-block;">
                            </div>
                            <p class="help"></p>
                            <h6 class="help">
                                <img src="${pageContext.request.contextPath}/static/images/warn.png" id="warn" width="16px" height="16px">
                                이메일로 비밀번호 변경 링크 등이 발송됩니다. 개인정보 보호를 위해 정확한 메일 정보를 입력해주세요.
                            </h6>
                        </div>
                        <button type="button" class="next" onclick="send()">완료</button>
                    </div>
                </form>
            </article>
        </section>
    </main>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>let contextPath = "${pageContext.request.contextPath}"</script>
<script src="../../static/js/makepage-jin/join.js"></script>
<script src="../../static/js/makepage-jin/modal.js"></script>
</html>