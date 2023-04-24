<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>중고신입 일반 유저 마이 페이지</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/user-mypage.css" rel="stylesheet" type="text/css"/>
</head>
<body> 
<%@ include file="../mainpageSeo/header.jsp" %>

<!-- 마이페이지 -->
	<div id="app-body" style="padding: 30px">
		<div class="container container-md">
			<div class="mypage-container">
				<h1 class="mypage-title">마이페이지</h1>
				<div data-v-e86fae02="" class="profile-container underline">
				<!-- a태그 계정 설정으로 이동 -->
					<a href="./user-mypage-account.jsp">
						<div class="thumb">
							<div class="user-profile-picture h-100">
								<div data-name="image" class="is-square"
									data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_99.jpg?h=320&amp;w=320&amp;webp=1" lazy="loaded"
									style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_99.jpg?h=320&amp;w=320&amp;webp=1&quot;);">
								</div>
							</div>
						</div>

						<div class="user-info">
							<div class="user-name">
								<span class="name-length">kimjin</span> <span class="user-type">고객님</span>
							</div>
							<div class="user-id">
								<span class="id-length">kimjin9822@naver.com</span>
							</div>
						</div>
						<div class="account-setting">
							<button type="button"
								class="btn btn-account-setting btn-secondary">계정설정</button>
						</div>
					</a> 
					</div>
				<!-- 작성글/ 쪽지 확인 -->
				<ul class="underline" style="font-weight: 900; font-size: 1.3rem;">
					<li class="main-menu">커뮤니티 <a role="button"> </a>
					</li>
					<li class="sub-menu-container soomgo-life-activities">
						<a href="./board-list.jsp" class="sub-menu-list">
							<div class="sub-content">
								<div class="sub-menu">
									<span class="sub-menu-title">숨고생활 작성글</span>
								</div>
							</div>
								<div class="arrow1">
									<span class="right-arrow">
									<img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</span>
								</div> 
						</a>
					</li>
					<li class="sub-menu-container soomgo-life-activities">
					<a href="./message-list.jsp" class="sub-menu-list">
						<div class="sub-content">
								<div class="sub-menu">
									<span class="sub-menu-title">숨고생활 쪽지</span>
								</div>
							</div>
							<div class="arrow1">
								<span class="right-arrow"><img src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</span>
							</div> 
						</a>
					</li>
				</ul>
				</div>
			</div>
		</div>
</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>