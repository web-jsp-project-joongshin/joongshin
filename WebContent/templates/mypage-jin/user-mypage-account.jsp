<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
							style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_99.jpg?h=320&amp;w=320&quot;);">
						</div>
					</div > 
			 	</div>

				<!-- 이름, 이메일, 비밀번호 -->
				<section>
					<ul class="account-info">
						<div class="item">
							<a href="./name-change.jsp" class="item-container"><div
									class="item">
									<div class="item-title">이름</div>
									<div class="item-info">kimjin</div>
								</div>
								<div>
									<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div>
							</a>
								<a href="./email-change.jsp" class="item-container">
								<div class="item">
									<div class="item-title">이메일</div>
									<div class="item-info">
										<span>kimjin9822@naver.com</span>
									</div>
								</div>
								<div>
									<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div></a> <a href="./password-change.jsp" class="item-container">
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
				<a href="./account-delete-final-check.jsp" class="item-container">
							<div data-testid="delete-account-text" class="item">계정 탈퇴</div>
							<div>
								<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</a>
							
				</section>
			</main>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>