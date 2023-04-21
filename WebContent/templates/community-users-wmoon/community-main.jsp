<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<link rel="stylesheet" href="../../static/css/users-wmoon/community-main.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
.modal-open .modal {
	overflow-x: hidden;
    overflow-y: auto;
}


.modal {
     position: absolute;
     top: 0%;
     left: 0%;

     width: 100%;
     height: 100%;

     display: none;

     background-color: rgba(0, 0, 0, 0.4);
     transform: translate(0%, 0%);
}

.modal.show {
     display: block;
}

.modal_body {
     position: absolute;
     top: 50%;
     left: 50%;

     width: 400px;
     height: 600px;

     padding: 40px;

     text-align: center;

     background-color: rgb(255, 255, 255);
     border-radius: 10px;
     box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

     transform: translateX(-50%) translateY(-50%);
}


.fade {
	transition: opacity .15s linear;
}

.modal .modal-dialog.modal-dialog-centered {
	min-height: 100%;
    flex-direction: column;
    justify-content: center;
}

.modal.show .modal-dialog {
	transform: none;
	transition: transform .3s ease-out;
}

.modal .modal-dialog {
	margin: auto;
    max-width: 26.25rem;
}

.modal-dialog-centered {
	display: flex;
    align-items: center;
}

.modal-dialog {
	position: relative;
    width: auto;
    margin: 0.5rem;
    pointer-events: none;
}

.modal .modal-content, .modal .modal-header {
	border-radius: 0;
    border: none;
}

.modal-content {
	position: relative;
    display: flex;
    flex-direction: column;
    width: 100%;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 0.0625rem solid rgba(0,0,0,.2);
    border-radius: 0.3rem;
    outline: 0;
}

.search-pro-filter-modal .modal-body {
	padding: 0;
}

.modal-body {
	position: relative;
    flex: 1 1 auto;
}

.search-pro-filter-modal .tabs .nav-tabs {
	border: none;
    position: fixed;
    z-index: 1;
    height: 3.75rem;
    padding: 0.625rem 1rem;
    background-color: #fff;
}

.nav {
	display: flex;
    flex-wrap: wrap;
   	margin-bottom: 0;
    list-style: none;
}

dl, ol, ul {
	margin-top: 0;
}

.search-pro-filter-modal .tabs .nav-item:first-child {
	margin-right: 0.875rem;
}

.nav-tabs .nav-item {
	margin-bottom: -0.0625rem;
}

ul li {
	list-style: none;
}

.search-pro-filter-modal .tabs .nav-link.active {
	color: #00c7ae;
}

.search-pro-filter-modal .tabs .nav-link {
	border: none;
    outline-style: none;
    font-weight: 500;
    line-height: 1.75;
    letter-spacing: -.01688rem;
    padding: 0.375rem;
    position: relative;
}

.nav-link {
	text-decoration: none;
}

.search-pro-filter-modal .tabs .nav-link.active:before {
	content: "";
    position: absolute;
    height: 0.125rem;
    background-color: #00c7ae;
    left: 0.375rem;
    right: 0.375rem;
    bottom: 0.125rem;
    width: calc(100% - 0.75rem);
}

*, :after, :before {
	box-sizing: border-box;
}

.search-pro-filter-modal .tabs .nav-tabs {
    margin-left: -38px;
}

.search-pro-filter-modal .tabs .btn {
	position: absolute;
    display: flex;
    padding: 0.375rem;
    top: 1rem;
    right: -13.125rem;
    background: white;
}

.search-pro-filter-modal .tabs .btn img {
	width: 0.875rem;
    height: 0.875rem;
}

.search-pro-filter-modal .tabs .tab-content {
	height: 34.5rem;
    padding-top: 3.75rem;
}

.tab-content>.active {
	display: block;
}

.search-pro-filter-modal .search-service-autocomplete {
	margin-top: 0.625rem;
}
.search-service-autocomplete {
	display: flex;
    flex-direction: column;
}

.remove-button {
	background: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBmaWxsPSIjRkZGIiBkPSJNLTczNy00MTdINDMzVjc1M0gtNzM3eiIvPjxwYXRoIGZpbGw9IiMwMDAiIGZpbGwtb3BhY2l0eT0iLjQiIGQ9Ik0tNzM3LTQxN0g0MzNWNzUzSC03Mzd6Ii8+PHBhdGggZmlsbD0iI0ZGRiIgZD0iTS0zNjItMTQ3SDU4djYyMmgtNDIweiIvPjxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zMzQgLTEzKSI+PHJlY3Qgd2lkdGg9IjM2NCIgaGVpZ2h0PSI0NCIgZmlsbD0iI0YyRjJGMiIgcng9IjgiLz48cGF0aCBkPSJNMzM0IDMxaDE4VjEzaC0xOHoiLz48ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgzMzYgMTUpIj48Y2lyY2xlIGN4PSI3IiBjeT0iNyIgcj0iNyIgZmlsbD0iI0I1QjVCNSIvPjxwYXRoIHN0cm9rZT0iI0ZGRiIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIiBzdHJva2Utd2lkdGg9Ii44MzUiIGQ9Ik00LjUgNC41bDUgNW0wLTVsLTUgNSIvPjwvZz48L2c+PC9nPjwvc3ZnPg==) no-repeat;
    border: none;
    width: 1.125rem;
    height: 1.125rem;
    position: absolute;
    right: 2.5rem;
    top: 0.8125rem;
}
.iv {
	-webkit-touch-callout: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    cursor: pointer;
    width: 100%;
    position: relative;
    padding: 0.75rem 1rem;
    display: inline-block;
    font-size: .875rem;
    font-weight: 400;
    line-height: normal;
    letter-spacing: normal;
    color: #323232;
}

ul li .loading-indicator {
	position: absolute;
    top: 1rem;
    right: 2.5rem;
}

.indicator-body.center {
	margin: 0 auto;
}

.indicator-body {
	border-radius: 50%;
    -webkit-animation: spin-data-v-fc3fcce8 1s ease-in-out infinite;
    animation: spin-data-v-fc3fcce8 1s ease-in-out infinite;
}

.p12 {
	font-size: .875rem;
    line-height: 1.3125rem;
    font-weight: 400;
    letter-spacing: -.0125rem;
    margin-top: 0;
    margin-bottom: 1rem;
}

ul li .bottom-border{
	background: #f2f2f2;
    position: absolute;
    height: 0.0625rem;
    bottom: 0;
    left: 0;
    width: -moz-available;
    width: -webkit-fill-available;
    margin: 0 1rem;
}

ul li.parent:after {
	content: "";
    position: absolute;
    width: 0.875rem;
    height: 0.875rem;
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCI+PGcgZmlsbD0iI0I1QjVCNSIgZmlsbC1ydWxlPSJldmVub2RkIj48cGF0aCBkPSJNMTYuMTA3IDUuMjU3bC43MDcuNzA3LTcuNzc5IDcuNzc5LS43MDctLjcwN3oiLz48cGF0aCBkPSJNMS4yNTcgNS45NjRsLjcwNy0uNzA3IDcuNzc5IDcuNzc5LS43MDcuNzA3eiIvPjwvZz48L3N2Zz4=);
    background-repeat: no-repeat;
    background-position: 50%;
    background-size: contain;
    top: 1rem;
    right: 1rem;
}

.form-control {
	display: block;
    width: 100%;
    height: calc(1.5em + 1.5rem);
    padding: 0.6875rem 1rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #323232;
    background-color: #fff;
    background-clip: padding-box;
    border: 0.0625rem solid #e1e1e1;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

.autocomplete-input {
	padding: 0.75rem 0.75rem 0.75rem 2.125rem;
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2U9IiNBQkFFQkEiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIuOCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMSAxKSI+PGNpcmNsZSBjeD0iNS44MzMiIGN5PSI1LjgzMyIgcj0iNS44MzMiLz48cGF0aCBkPSJNMTQgMTRMOS45NTYgOS45NTYiLz48L2c+PC9zdmc+);
    background-size: 1rem;
    background-repeat: no-repeat;
    border-radius: 8px;
    background-position: 0.75rem 0.875rem;
    border: none;
    width: auto;
    margin: 0 1rem 1rem;
    background-color: #fafafa;
    height: 2.75rem;
}

</style>
</head>
<body>
	<div class="app">
		<div class="app-body">
			<div class="community-container container">
				<div class="soomgo-life-container">
					<section id="community" class="community">
						<div class="observer-container">
							<section class="community-header" id="community-header">
								<h1 class="community-title">커뮤니티</h1>
								<div>
									<div class="write-button-desktop">
										<div class="dropdown b-dropdown btn-group" id="__BVID__785">
											<button aria-haspopup="true" aria-expanded="false" type="button" class="btn dropdown-toggle btn-primary" id="__BVID__785__BV_toggle_" onclick="location.href='http://localhost:8090/joongshin/templates/community-users-wmoon/write.jsp'">글쓰기</button>
											<ul role="menu" tabindex="-1" class="dropdown-menu dropdown-menu-right" aria-labelledby="__BVID__785__BV_toggle_">
												<li class="dropdown-menu-item">
													<a href="https://soomgo.com/community/soomgo-life/post/write?topicId=all" class="dropdown-item" role="menuitem" targer="_self">
														<div class="dropdown-menu-item-wrapper">
															<div class="dropdown-menu-item-text">
																<span class="dropdown-menu-item-title sg-text-subhead5 sg-font-medium sg-text-gray-900">숨고생활</span>
																<span class="sg-text-description sg-font-regular sg-text-gray-500">정보와 소식을 담은 자유 게시글 작성하기</span>
															</div>
															<i class="dropdown-menu-item-icon"></i>
														</div>
													</a>
												</li>
												<li role="presentation" class="dropdown-menu-item">
													<a href="https://soomgo.com/community/soomgo-life/all" class="dropdown-item">
														<div class="dropdown-menu-item-wrapper">
															<div class="dropdown-menu-item-text">
																<span class="dropdown-menu-item-title sg-text-subhead5 sg-font-medium sg-text-gray-900">고수의 노하우</span>
																<span class="sg-text-description sg-font-regular sg-text-gray-500">고수의 전문 서비스에 대한 노하우 작성하기</span>
															</div>
															<i class="dropdown-menu-item-icon"></i>
														</div>
													</a>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</section>
						</div>
						<ul class="category">
							<li class="sg-text-subhead4 sg-font-bold lg:sg-text-subhead2 lg:sg-font-bold sg-text-gray-900 selected">
								<a href="http://localhost:8090/joongshin/templates/community-users-wmoon/community-main.jsp" class="link-text router-link-active"> 숨고생활 </a>
							</li>
							<li class="sg-text-body2 sg-font-regular lg:sg-text-body1 lg:sg-font-regular sg-text-gray-400">
								<a href="http://localhost:8090/joongshin/templates/community-users-wmoon/community-pic.jsp" class="link-text"> 고수의 노하우 </a>
							</li>
						</ul>
						<div class="community-layout">
							<div class="soomgo-life-topic-layout">
								<div class="soomgo-life-search-bar d-lg-none" style="display: none!important;">
									<form class="search-bar">
										<div role="group" class="input-group">
											<div class="input-group-prepend">
												<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMSkiIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iNi42MTEiIGN5PSI2LjYxMSIgcj0iNS44NjEiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im0xNS4yNSAxNS4yNS00LjI0My00LjI0MyIvPgogICAgPC9nPgo8L3N2Zz4K" alt="커뮤니티 검색 아이콘" class="search">
											</div>
											<input type="text" disabled="disabled" placeholder="키워드와 #태그 모두 검색할 수 있어요." autocomplete="off" class="search-input form-control" maxlength="15" id="__BVID__597">
											<div class="input-group-append">
												<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMgMykiPgogICAgICAgICAgICA8Y2lyY2xlIGZpbGw9IiNDNUM1QzUiIGN4PSI5IiBjeT0iOSIgcj0iOSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im02IDYgNi4wMDUgNi4wMDZNMTIuMDA1IDYgNiAxMi4wMDYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="검색어 삭제 아이콘" class="reset" style="display: none;">
											</div>
										</div>
									</form>
								</div>
								<div class="observer-container" style="height: auto;">
									<section class="topic-filter-section">
										<ul class="topic">
											<li class="selectedi">
												<a href="https://soomgo.com/community/soomgo-life/all" class="topic-link-item router-link-active">
													<div class="icon-wrapper">
														<img src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/634d181f-f6cc-470c-9a1a-cfed6d9c909a.png" alt="전체">
													</div>
													<span class="sg-text-subhead4 sg-font-bold sg-text-gray-900">전체</span>
												</a>
											</li>
											<li></li>
											<li></li>
											<li></li>
											<li></li>
											<li></li>
											<li></li>
											<li></li>
										</ul>
									</section>
								</div>
							</div>
							<div class="community-content-layout all">
								<div class="search-community d-none d-lg-block">
									<form class style="margin-top: 21px;">
										<div role="group" class="input-group">
											<div class="input-group-prepend">
												<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMSkiIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iNi42MTEiIGN5PSI2LjYxMSIgcj0iNS44NjEiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im0xNS4yNSAxNS4yNS00LjI0My00LjI0MyIvPgogICAgPC9nPgo8L3N2Zz4K" alt="커뮤니티 검색 아이콘" class="search">
											</div>
											<input type="text" placeholder="키워드와 #태그 모두 검색할 수 있어요." autocomplete="off" class="search-input form-control" maxlength="15" id="__BVID__797">
											<div class="input-group-append">
												<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMgMykiPgogICAgICAgICAgICA8Y2lyY2xlIGZpbGw9IiNDNUM1QzUiIGN4PSI5IiBjeT0iOSIgcj0iOSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im02IDYgNi4wMDUgNi4wMDZNMTIuMDA1IDYgNiAxMi4wMDYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=" alt="검색어 삭제 아이콘" class="reset" style="display: none;">
											</div>
										</div>
									</form>
								</div>
								<section class="curation" style="margin-left: 3px; margin-top: 40px;">
									<div class="curation-header">
										<h2 class="sg-text-headline sg-font-bold sg-text-gray-900">지금 가장 뜨거운 숨고픽🔥</h2>
									</div>
									<div dir="ltr" class="slick-slider slick-initialized">
										<button type="button" data-role="none" class="slick-arrow slick-prev slick-disabled" style="display: block;">Previous</button>
										<div class="slick-list" style="margin-left: -9px;">
											<div class="slick-track" style="width: 1020px; opacity: 1; transform: translate3d(0px, 0px, 0px); display: flex;">
												<div tabindex="-1" data-index="0" aria-hidden="false" class="slick-slide slick-active slick-current" style="outline: none; width: 192px; margin: 0 10px 0 0;">
													<div>
														<a href="https://soomgo.com/community/soomgo-life/posts/63db8b3ad1becfebc58891bc-%EC%88%A8%EA%B3%A0%EC%83%9D%ED%99%9C-%EA%B0%80%EC%9D%B4%EB%93%9C%EB%9D%BC%EC%9D%B8---" class style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500 yu">공지사항</p>
																<h3 class="sg-text-subhead2 sg-font-bold sg-text-gray-900 are" style="font-size: 16px;">주니어와 이용자들의 생각 🤝</h3>
																<p class="user-name sg-text-description sg-font-regular sg-text-white"> Soomgo </p>
															</div>
														</a>
													</div>
												</div>
												<div tabindex="-1" data-index="0" aria-hidden="false" class="slick-slide slick-active" style="outline: none; width: 192px; margin: 0 10px 0 0;">
													<div>
														<a href="https://soomgo.com/community/soomgo-life/posts/63db8b3ad1becfebc58891bc-%EC%88%A8%EA%B3%A0%EC%83%9D%ED%99%9C-%EA%B0%80%EC%9D%B4%EB%93%9C%EB%9D%BC%EC%9D%B8---" class style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500 yu">공지사항</p>
																<h3 class="sg-text-subhead2 sg-font-bold sg-text-gray-900 are" style="font-size: 16px;">포인트 50만 캐시와 쿠폰 받으세요🎁</h3>
																<p class="user-name sg-text-description sg-font-regular sg-text-white"> Soomgo </p>
															</div>
														</a>
													</div>
												</div>
												<div tabindex="-1" data-index="0" aria-hidden="false" class="slick-slide slick-active" style="outline: none; width: 192px;">
													<div>
														<a href="https://soomgo.com/community/soomgo-life/posts/63db8b3ad1becfebc58891bc-%EC%88%A8%EA%B3%A0%EC%83%9D%ED%99%9C-%EA%B0%80%EC%9D%B4%EB%93%9C%EB%9D%BC%EC%9D%B8---" class style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500 yu">공지사항</p>
																<h3 class="sg-text-subhead2 sg-font-bold sg-text-gray-900 are" style="font-size: 16px;">💌내가 오늘 주인공이 되어보세요!</h3>
																<p class="user-name sg-text-description sg-font-regular sg-text-white"> Soomgo </p>
															</div>
														</a>
													</div>
												</div>
												<div></div>
												<div></div>
											</div>
										</div>
										<!-- <button type="button" data-role="none" class="slick-arrow slick-next" style="display: block;">Next</button> -->
									</div>
									<div class="mobile-curation-list d-md-none">
										<a></a>
										<a></a>
										<a></a>
										<a></a>
										<a></a>
									</div>
								</section>
								<div class="observer-container d-lg-none" style="height: 54px;">
									<div id="observer-db27803f-bc9f-494a-b9ce-c2082983e8fa"></div>
								</div>
								<section class="service-area-filter all fixed" style="margin-top: 80px;">
									<button type="button" class="btn btn-none chip-btn filter-btn btn-open-popup">
										<span>서비스</span>
									</button>
								</section>
								<article class="community-feed-list">
									<ul class="feed-list">
										<li class="feed-item">
											<a href="http://localhost:8090/joongshin/templates/community-users-wmoon/view-detail.jsp" class>
												<p class="topic-name sg-text-description sg-font-regular sg-text-gray-500">고수찾아요 · 컴퓨터 자격증</p>
												<div class="feed-content service-address-info">
													<div>
														<section class="item-wrapper">
															<h3 class="sg-text-subhead5 sg-font-medium sg-text-gray-900">컴퓨터 자격증 가지고 있는 주니어분들 찾습니다</h3>
															<p class="content sg-text-body2 sg-font-regular sg-text-gray-500">sql이나 Java 자격증 찾습니다 전문가 </p>
														</section>
														<p class="sub-information sg-text-description sg-font-regular sg-text-gray-500">인천/서구</p>
													</div>
												</div>
												<div class="feed-footer">
													<div class="user-interaction">
														<span class="like sg-text-description sg-font-regular sg-text-gray-300">2</span>
														<span class="comment sg-text-description sg-font-regular sg-text-gray-300">1</span>
													</div>
													<span class="sg-text-description sg-font-regular sg-text-gray-300 time">25분 전</span>
												</div>
											</a>
										</li>
										<li></li>
										<li></li>
										<li></li>
										<li></li>
									</ul>
									<ul class="feed-list">
										<li class="feed-item">
											<a href="http://localhost:8090/joongshin/templates/community-users-wmoon/view-detail.jsp" class>
												<p class="topic-name sg-text-description sg-font-regular sg-text-gray-500">고수찾아요 · 컴퓨터 자격증</p>
												<div class="feed-content service-address-info">
													<div>
														<section class="item-wrapper">
															<h3 class="sg-text-subhead5 sg-font-medium sg-text-gray-900">컴퓨터 자격증 가지고 있는 주니어분들 찾습니다</h3>
															<p class="content sg-text-body2 sg-font-regular sg-text-gray-500">sql이나 Java 자격증 찾습니다 전문가 </p>
														</section>
														<p class="sub-information sg-text-description sg-font-regular sg-text-gray-500">인천/서구</p>
													</div>
												</div>
												<div class="feed-footer">
													<div class="user-interaction">
														<span class="like sg-text-description sg-font-regular sg-text-gray-300">2</span>
														<span class="comment sg-text-description sg-font-regular sg-text-gray-300">1</span>
													</div>
													<span class="sg-text-description sg-font-regular sg-text-gray-300 time">25분 전</span>
												</div>
											</a>
										</li>
										<li></li>
										<li></li>
										<li></li>
										<li></li>
									</ul>
									<div></div>
								</article>
							</div>
						</div>
						<a></a>
					</section>
					<div></div>
				</div>
			</div>
		</div>
	</div>
 	<div id="search-service-modal___BV_modal_outer_" class="modal" style="position: absolute; z-index: 1040;">
		<div id="search-service-modal" role="dialog" aria-describedby="search-service-modal___BV_modal_body_" aria-modal="true" class="modal_body fade show search-pro-filter-modal" style="display: block;">
			<div class="modal-dialog modal-md modal-dialog-centered mobile-full-modal">
				<span tabindex="0"></span>
				<div id="search-service-modal___BV_modal_content_" tabindex="-1" class="modal-content">
					<div id="search-service-modal___BV_modal_body_" class="modal-body">
						<div class="tabs" id="__BVID__7018">
							<div>
								<ul role="tablist" class="nav nav-tabs" id="__BVID__7018__BV_tab_controls_">
									<li class="nav-item">
										<a class="nav-link active" id="__BVID__7019___BV_tab_button__">
											서비스
										</a>
									</li>
									<button type="button" class="btn btn-none" style="border: none;">
										<img src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTkgNy44NjlMMTYuNDM0LjQzNGwxLjEzMiAxLjEzMkwxMC4xMyA5bDcuNDM1IDcuNDM0LTEuMTMyIDEuMTMyTDkgMTAuMTNsLTcuNDM0IDcuNDM1LTEuMTMyLTEuMTMyTDcuODcgOSAuNDM0IDEuNTY2IDEuNTY2LjQzNCA5IDcuODd6Ii8+CiAgICA8L2RlZnM+CiAgICA8dXNlIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgeGxpbms6aHJlZj0iI2EiLz4KPC9zdmc+Cg==" alt="모달 닫기">
									</button>
								</ul>
							</div>
							<div class="tab-content" id="__BVID__1133__BV_tab_container_">
								<div role="tabpanel" aria-hidden="false" class="tab-pane active" id="__BVID__1134">
									<div class="search-service-autocomplete">
										<input type="text" placeholder="어떤 분야의 고수를 찾으세요?" autocomplete="off" class="autocomplete-input form-control" id="__BVID__1137">
										<button class="remove-button" style="display: none;"></button>
										<div class="option-group-selectbox">
											<ul class="iv">
												<li class="parent level1">
													 IT 
													 <div class="loading-indicator" style="display: none;">
													 	<div class="indicator-body center" style="width: 14px; height: 14px; border-width: 0.25rem; border-style: solid; border-color: rgb(50, 50, 50) rgba(50, 50, 50, 0.2) rgba(50, 50, 50, 0.2); border-image: initial;"></div>
													 	<p class="p12" style="display: none;"></p>
													 </div>
													 <div class="bottom-border1"></div>
												</li>
											</ul>
											<ul class="iv" style="margin-top: -20px;">
												<li class="parent level1">
													 미용 
													 <div class="loading-indicator" style="display: none;">
													 	<div class="indicator-body center" style="width: 14px; height: 14px; border-width: 0.25rem; border-style: solid; border-color: rgb(50, 50, 50) rgba(50, 50, 50, 0.2) rgba(50, 50, 50, 0.2); border-image: initial;"></div>
													 	<p class="p12" style="display: none;"></p>
													 </div>
													 <div class="bottom-border2"></div>
												</li>
											</ul>
											<ul class="iv" style="margin-top: -20px;">
												<li class="parent level1">
													 기타 
													 <div class="loading-indicator" style="display: none;">
													 	<div class="indicator-body center" style="width: 14px; height: 14px; border-width: 0.25rem; border-style: solid; border-color: rgb(50, 50, 50) rgba(50, 50, 50, 0.2) rgba(50, 50, 50, 0.2); border-image: initial;"></div>
													 	<p class="p12" style="display: none;"></p>
													 </div>
													 <div class="bottom-border2"></div>
												</li>
											</ul>
										</div>
									</div>
								</div>
								<div role="tabpanel" aria-hidden="false" class="tab-pane active"></div>
							</div>
						</div>
					</div>
				</div>
				<span></span>
			</div>
		</div>
	</div>
</body>

<script>
const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const btnOpenPopup = document.querySelector('.btn-open-popup');
const modal2 = document.querySelector('.modal2');
const btnOpenPopup2 = document.querySelector('.btn-open-popup2');

btnOpenPopup.addEventListener('click', () => {
  modal.classList.toggle('show');

  if (modal.classList.contains('show')) {
    body.style.overflow = 'hidden';
  }
});

modal.addEventListener('click', (event) => {
  if (event.target === modal) {
    modal.classList.toggle('show');

    if (!modal.classList.contains('show')) {
      body.style.overflow = 'auto';
    }
  }
});

btnOpenPopup2.addEventListener('click', () => {
	  modal2.classList.toggle('show');

	  if (modal2.classList.contains('show')) {
	    body.style.overflow = 'hidden';
	  }
	});

	modal2.addEventListener('click', (event) => {
	  if (event.target === modal2) {
	    modal2.classList.toggle('show');

	    if (!modal2.classList.contains('show')) {
	      body.style.overflow = 'auto';
	    }
	  }
	});
</script>
</html>