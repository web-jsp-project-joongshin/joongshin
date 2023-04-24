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

<link href="../../static/css/mypage-css-jin/board-list.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>

	<div id="app-body">
		<div  class="my-page-community-activity-container">
			<div  
				class="community-activity-container">
				<section  class="community-title-section">
					<h1  class="community-activity-title">숨고생활 작성글/댓글</h1>
				</section>
				<ul class="tab-list">
					<li class="tab router-link-exact-active router-link-active sg-text-subhead4 sg-font-bold sg-text-gray-900 selected" style = "color: blue">
						작성 글</li>
					<li class="tab sg-text-body2 sg-font-regular sg-text-gray-400">
					<a href="./message-list.jsp" style="text-decoration: none; color: #2e2e2e; font-weight: 700;">
						작성 댓글</a></li>
				</ul>
				<article class="pro-knowhow-list">
						<ul>
							<li class="pro-knowhow-list-item">
								<section class="item-wrapper">
									<a href="https://soomgo.com/community/pro-knowhow/752--%EC%8B%9C%EA%B0%84-%EA%B0%80%EB%8A%94-%EC%A4%84-%EB%AA%A8%EB%A5%B4%EB%8A%94-%EC%88%98%EC%97%85--%EB%A7%8C%EB%93%9C%EB%8A%94-%EA%B3%A0%EC%88%98">
										<figure class= "image-wrapper">
											<img alt="커버 이미지" class="content-image" src="https://static.cdn.soomgo.com/upload/talkboard/f075fba9-b4bd-4611-b21b-3dfda78f4c05.jpg" lazy="loaded">
										</figure>
										<h3 class="content-title">'시간 가는 줄 모르는 수업' 만드는 고수</h3>
										<p class="content-writer">권지안</p>
									</a>
								</section>
							</li>
						</ul>
						<div></div>
					</article>
				</section>
			</div>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>