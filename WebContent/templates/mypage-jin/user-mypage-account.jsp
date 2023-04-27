<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>중고신입 일반 유저 계정설정 페이지</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/user-mypage-account.css" rel="stylesheet" type="text/css" />

</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>

<!-- 계정 설정 -->
	<div id="app-body">
		<div class="container container-md image add-image">
			<main class="account-info-container">
				<h1>계정 설정</h1>
				<div class=" profile-image " id="modal_btn">
					<div class="user-profile-picture h-100">
						<div data-name="image"  class="image" data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_99.jpg?h=320&amp;w=320"
							lazy="loaded"
							style="background-image: url('https://cdn-icons-png.flaticon.com/512/4645/4645949.png');">
						</div>
					</div > 
			 	</div>

				<!-- 이름, 이메일, 비밀번호 -->
				<section>
					<ul class="account-info">
						<div class="item">
							<a href="${pageContext.request.contextPath}/myNameChange.mypage?userId=${userId}" class="item-container"><div
									class="item">
									<div class="item-title">이름</div>
									<div class="item-info info-name"></div>
								</div>
								<div>
									<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div>
							</a>
								<a href="javascript:void(0)" class="item-container email">
								<div class="item">
									<div class="item-title">이메일</div>
									<div class="item-info">
										<span class="info-email" style="color: rgb(160, 160, 160)"></span>
									</div>
								</div>
								<a href="${pageContext.request.contextPath}/myPwChange.mypage?userId=${userId}" class="item-container">
								<div class="item">
									<div class="item-title">비밀번호</div>
									<div class="item-info">•••••••</div>
								</div>
								<div>
									<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div>
							</a> 
					</ul>
					<!-- 계정 탈퇴 -->
					<ul>
						<li class="junior-resume">
						</li>
						<li>
							<a href="${pageContext.request.contextPath}/myWithdrawal.mypage?userId=${userId}" class="item-container">
								<div data-testid="delete-account-text" class="item">계정 탈퇴</div>
								<div>
									<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div>
							</a>
						</li>
					</ul>
				</section>
			</main>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	const userId = `${userId}`;
	const userInfo = JSON.parse(`${userInfo}`);
	const userType = `${userType}`;
	let text = "";
	
	const $li = $('li.junior-resume');
	const $nameText = $('div.info-name');
	const $emailText= $('span.info-email');
	
	$nameText.prop('innerText', userInfo.username);
	$emailText.prop('innerText', userInfo.userEmail);
	
	// 주니어일 경우 이력서 수정 부분 추가
	if(userType == 1) {
		text += `
			<a href="${pageContext.request.contextPath}/myResumeChange.mypage?userId=${userId}" class="item-container">
				<div data-testid="resume-account-text" class="item">이력서 수정</div>
				<div>
					<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
				</div>
			</a>
		`;
	}
	
	$li.prop('innerHTML', text);
	
</script>
</html>