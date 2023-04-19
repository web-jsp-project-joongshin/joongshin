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
	padding-left: 0!important;
	position: fixed;
    top: 0;
    left: 0;
    z-index: 1050;
    display: none;
    width: 100%;
    height: 100%;
    overflow: hidden;
    outline: 0;
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

</style>
</head>
<body>
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
								<button type="button" class="btn btn-none chip-btn filter-btn">
									<span>서비스</span>
								</button>
								<button type="button" class="btn btn-none chip-btn filter-btn">
									<span>지역</span>
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
 	<!-- <div id="modal search-service-modal___BV_modal_outer_" style="position: absolute; z-index: 1040;">
		<div role="dialog" aria-describedby="search-service-modal___BV_modal_body_" aria-modal="true" class="modal fade show search-pro-filter-modal" style="display: block;">
			<div class="modal-dialog modal-md modal-dialog-centered mobile-full-modal"></div>
		</div>
	</div> -->
</body>
<script>

</script>
</html>