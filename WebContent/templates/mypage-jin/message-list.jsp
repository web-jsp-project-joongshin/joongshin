<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/message-list.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>

	<div id="app-body">
		<div class="my-page-community-activity-container" >
			<div class="community-activity-container">
				<section class="community-title-section" >
					<h1 class="community-activity-title" >숨고생활 작성글/댓글</h1>
				</section>
				<ul class="tab-list"  >
					<li class="tab sg-text-body2 sg-font-regular sg-text-gray-400" >
						 <a href="./board-list.jsp" style="text-decoration: none; color: #2e2e2e; font-weight: 700;">
						 작성 글</a>
					</li>
					<li class="tab router-link-exact-active router-link-active sg-text-subhead4 sg-font-bold sg-text-gray-900 selected">
						 작성 댓글
					</li>
				</ul>
				<section class="community-content-section white" >
					<article class="no-items align-self-center text-center no-items">
						<i>
							<img src="https://assets.cdn.soomgo.com/icons/icon-coupon-empty.svg" alt="empty">
						</i>
						<h3>작성 댓글이 없습니다</h3>
						<p class="help-block p2">숨고생활에 올려진 정보와 질문에<br> 댓글을 작성해보세요!</p>
					</article>
				</section>
			</div>
		</div>
	</div>	
	
</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>