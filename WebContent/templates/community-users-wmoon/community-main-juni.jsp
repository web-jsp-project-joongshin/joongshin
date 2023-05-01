<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>중신:주니어의 스펙업사이트 </title>
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" href="../../static/css/users-wmoon/community-main.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
<%@ include file="../mainpageSeo/loginHeader.jsp" %>
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
<button aria-haspopup="true" aria-expanded="false" type="button" class="btn dropdown-toggle btn-primary" id="__BVID__785__BV_toggle_" onclick="location.href='${pageContext.request.contextPath}/comuwrite.board'">글쓰기</button>									
										</div>
									</div>
								</div>
							</section>
						</div>
						<ul class="category">
							<li class="sg-text-body2 sg-font-regular lg:sg-text-body1 lg:sg-font-regular sg-text-gray-400">
								<a href='${pageContext.request.contextPath}/comulistOk.board'" class="link-text "> 이용자 게시글 </a>
							</li>
							<li class="sg-text-subhead4 sg-font-bold lg:sg-text-subhead2 lg:sg-font-bold sg-text-gray-900 selected">
								<a href='${pageContext.request.contextPath}/comujunilistOk.board'" class="link-text router-link-active"> 주니어 게시글 </a>
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
								
								
								

								<article class="community-feed-list">
									<ul class="feed-list">
										
										<li></li>
								
									</ul>
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
	<%@ include file="../mainpageSeo/footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script src="https://rawgit.com/jackmoore/autosize/master/dist/autosize.min.js"></script>
<script>
let boards = `${boards}`;
console.log(boards);
let contextPath = `${pageContext.request.contextPath}`;

let $form = $("form[name='page-form']");
$("a.change-page").on("click", function(e){
	e.preventDefault();
	$form.find("input[name='page']").val($(this).attr("href"));
	$form.submit();
});
</script>
<!-- <script src="../../static/js/community-wmoon/modal.js"></script>-->
<script src="${pageContext.request.contextPath}/static/js/mainpageSeo/board.js"></script>
<script src="${pageContext.request.contextPath}/static/js/community-wmoon/board-list.js"></script>
</html>