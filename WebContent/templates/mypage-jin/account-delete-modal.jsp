<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link data-vue-meta="1" rel="icon" type="image/png" sizes="32x32"
	href="https://static.cdn.soomgo.com/static/favicon-32x32.png?webp=1">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/account-delete-modal.css" rel="stylesheet" type="text/css"/>
<link href="../../static/css/mypage-css-jin/header-footer.css" rel="stylesheet" type="text/css"/>
<link href="../../static/css/mypage-css-jin/user-mypage-account.css" rel="stylesheet" type="text/css"/>

</head>
<body>






<div id="app-body">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >계정 설정</h1>
				<div  class="profile-image">
					<div  
						class="user-profile-picture h-100">
						<div  data-name="image" class=""
							data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_99.jpg?h=320&amp;w=320"
							lazy="loaded"
							style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile-default/soomgo_99.jpg?h=320&amp;w=320&quot;);"></div>
					</div>
					<a 
							href="./profile-change-modal.jsp"
							class="item-container">
					<img 
						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTYwMyAtMjg2KSB0cmFuc2xhdGUoNTM1IDIxOCkgdHJhbnNsYXRlKDY4IDY4KSB0cmFuc2xhdGUoMSAxKSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjaXJjbGUgY3g9IjE1IiBjeT0iMTUiIHI9IjE1IiBmaWxsPSIjRkZGIiBzdHJva2U9IiNGMkYyRjIiIHN0cm9rZS13aWR0aD0iMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwxOCAwIDE4IDE4IDAgMTh6IiBvcGFjaXR5PSIuNCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNiA2KSIvPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZmlsbD0iI0I1QjVCNSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTEuNCAybDEuNDY0IDEuNTU2SDE1LjRjLjg4IDAgMS42LjcgMS42IDEuNTU1djkuMzMzQzE3IDE1LjMgMTYuMjggMTYgMTUuNCAxNkgyLjZjLS44OCAwLTEuNi0uNy0xLjYtMS41NTZWNS4xMTFjMC0uODU1LjcyLTEuNTU1IDEuNi0xLjU1NWgyLjUzNkw2LjYgMmg0Ljh6TTkgN2MtMS42NTYgMC0zIDEuMzQ0LTMgM3MxLjM0NCAzIDMgMyAzLTEuMzQ0IDMtMy0xLjM0NC0zLTMtM3oiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDYgNikiLz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
						class="camera-icon">
						</a>
				</div>
				<section >
					<div  
						class="sign-container danger md has-button" style="display: none;">
						<div  class="header">
							<div  class="title">
								<img 
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZmlsbD0iI0ZBNTk2MyIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMy42NzUgMTdoMTIuNjVjLjkxMyAwIDEuNjU0LS43NCAxLjY1NC0xLjY1MyAwLS4yOTYtLjA4LS41ODctLjIzLS44NDJsLTYuMzI2LTEwLjdDMTAuOTYgMy4wMiA5Ljk0NSAyLjc2IDkuMTYgMy4yMjVjLS4yNC4xNDEtLjQ0LjM0Mi0uNTgyLjU4MmwtNi4zMjUgMTAuN2MtLjQ2NS43ODUtLjIwNCAxLjguNTgyIDIuMjY0LjI1NC4xNS41NDUuMjMuODQxLjIzem03LjE2NC0yLjQ2M0g5LjE2MnYtMS42NDNoMS42Nzd2MS42NDN6bTAtMy4yODVIOS4xNjJWNy45NjdoMS42Nzd2My4yODV6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTQ0OSkgdHJhbnNsYXRlKDE2IDQyOSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0wIDIwTDIwIDIwIDIwIDAgMCAweiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC00NDkpIHRyYW5zbGF0ZSgxNiA0MjkpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
									alt="danger"><span >성별 정보가 없습니다.</span>
							</div>
						</div>
						<a  href="./"
							class="btn btn-action btn-secondary btn-block" target="_self">
							성별 입력하기 </a>
					</div>
					<ul  class="account-info">
						<div class="item">
								 <a  href="./name-change.jsp"
							class="item-container"><div  class="item">
								<div  class="item-title">이름</div>
								<div  class="item-info">kimjin</div>
							</div>
							<div >
								<img 
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div></a>
							</li>
						<a  href="./email-change.jsp"
							class="item-container"><div  class="item">
								<div  class="item-title">이메일</div>
								<div  class="item-info">
									<span >kimjin9822@naver.com</span>
								</div>
							</div>
							<div >
								<img 
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div></a>
						<a 
							href="./password-change.jsp"
							class="item-container"><div  class="item">
								<div  class="item-title">비밀번호</div>
								<div  class="item-info">•••••••</div>
							</div>
							<div >
								<img 
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div></a>
						
						<a 
							href="./phonenumber-change-modal.jsp"
							class="item-container">
						<div
								 class="item">
								<div  class="item-title">휴대전화 번호</div>
								<div  class="item-info">01098224849</div>
							</div>
							<div >
								<img 
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div></a>
							
					</ul>
					<ul  data-testid="delete-account"
						class="delete-account">
						<a href="./account-delete-modal.jsp"
							class="item-container"><div
								 data-testid="delete-account-text"
								class="item">계정 탈퇴</div>
							<div>
								<img 
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div></a>
					</ul>
				</section>
				<!---->
			</main>
		</div>
	</div>







	<div class="swal2-container swal2-center sg-swal swal2-shown"
		style="overflow-y: auto;">
		<div aria-labelledby="swal2-title" aria-describedby="swal2-content"
			class="swal2-popup swal2-modal swal2-show" tabindex="-1"
			role="dialog" aria-live="assertive" aria-modal="true"
			style="width: 320px; border-radius: 20px; display: flex;">
			<div class="swal2-header">
				<ul class="swal2-progress-steps" style="display: none;"></ul>
				<div class="swal2-icon swal2-error" style="display: none;">
					<span class="swal2-x-mark"><span
						class="swal2-x-mark-line-left"></span><span
						class="swal2-x-mark-line-right"></span></span>
				</div>
				<div class="swal2-icon swal2-question" style="display: none;"></div>
				<div class="swal2-icon swal2-warning" style="display: none;"></div>
				<div class="swal2-icon swal2-info" style="display: none;"></div>
				<div class="swal2-icon swal2-success" style="display: none;">
					<div class="swal2-success-circular-line-left"></div>
					<span class="swal2-success-line-tip"></span> <span
						class="swal2-success-line-long"></span>
					<div class="swal2-success-ring"></div>
					<div class="swal2-success-fix"></div>
					<div class="swal2-success-circular-line-right"></div>
				</div>
				<img class="swal2-image" style="display: none;">
				<h2 class="swal2-title" id="swal2-title" style="display: flex;">정말 숨고를<br>떠나실 건가요?</h2>
				<button type="button" class="swal2-close"
					aria-label="Close this dialog" style="display: none;">×</button>
			</div>
			<div class="swal2-content">
				<div id="swal2-content" style="display: block;">계정 탈퇴 시 모든 개인정보가 삭제되며 <br> 구매하신 캐시는 환불되지 않아요</div>
				<input class="swal2-input" style="display: none;"><input
					type="file" class="swal2-file" style="display: none;">
				<div class="swal2-range" style="display: none;">
					<input type="range">
					<output></output>
				</div>
				<select class="swal2-select" style="display: none;"></select>
				<div class="swal2-radio" style="display: none;"></div>
				<label for="swal2-checkbox" class="swal2-checkbox"
					style="display: none;"><input type="checkbox"><span
					class="swal2-label"></span></label>
				<textarea class="swal2-textarea" style="display: none;"></textarea>
				<div class="swal2-validation-message" id="swal2-validation-message"></div>
			</div>
			<div class="swal2-actions">
				<button type="button" onclick = "location.href = 'javascript:history.go(-1)' " class="swal2-confirm btn btn-primary" aria-label=""
					style="display: inline-block;">다시 생각해 볼께요</button>
				<a href="./account-delete-final-check.jsp" class="swal2-cancel btn" aria-label=""
					style="display: inline-block; text-decoration: none;">계정 탈퇴</a>
			</div>
			<div class="swal2-footer" style="display: none;"></div>
		</div>
	</div>
	
	
	
	
	
	
</body>
</html>