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


<link href="../../static/css/mypage-css-jin/profile-change-modal.css" rel="stylesheet" type="text/css"/>
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







	<div  id="__BVID__420___BV_modal_outer_"
		style="position: absolute; z-index: 1040;">
		<div id="__BVID__420" role="dialog"
			aria-labelledby="__BVID__420___BV_modal_title_"
			aria-describedby="__BVID__420___BV_modal_body_"
			class="modal fade show" aria-modal="true" style="display: block;">
			<div
				class="modal-dialog modal-md modal-dialog-centered modal-select-profile-image">
				<span tabindex="0"></span>
				<div id="__BVID__420___BV_modal_content_" tabindex="-1"
					class="modal-content">
					<header id="__BVID__420___BV_modal_header_" class="modal-header">
						<h5 id="__BVID__420___BV_modal_title_" class="modal-title">프로필
							사진 등록</h5>
						
					</header>
					<div id="__BVID__420___BV_modal_body_" class="modal-body">
						<button  type="button"
							class="btn file-input btn-primary btn-block">
							사진 등록하기
							<div  class="custom-file b-form-file file"
								id="__BVID__424__BV_file_outer_">
								<input type="file" accept="jpg,jpeg,png,gif,bmp,jpeg2000" 
								class="custom-file-input" id="__BVID__424" style="z-index: -5;">
								<label data-browse="Browse" class="custom-file-label" for="__BVID__424">
								<span class="d-block form-file-text"
									style="pointer-events: none;">No file chosen</span></label>
							</div>
						</button>
						<a href="javascript:history.go(-1)"
							class="btn btn-cancel btn-secondary btn-sm btn-block">취소</a>
					</div>
					
				</div>
				<span tabindex="0"></span>
			</div>
		</div>
		<div id="__BVID__420___BV_modal_backdrop_" class="modal-backdrop"></div>
	</div>
	
	
	
	
	
	
	
	
	
	
			
</body>
</html>