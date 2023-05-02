<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/request-board-jym/request-board.css">
<link
	href="${pageContext.request.contextPath}/static/image/logo/logo.png"
	rel="shortcut icon" type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/mainpageSeo/hf.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/mainpageSeo/hf.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
	
<title>숨고</title>
</head>

<body>
	<form action="">
		<div id="app" class="webp" data-is-loaded="true">
		<%@ include file="../mainpageSeo/header.jsp" %>
			<!-- 헤더 부분 -->
			<!-- 바디 -->
			<div id="app-body">
				<div id="container">
					<div id="joongshin-container">
						<section id="questions" class="questions">

							<!-- 바디 페이지 헤더 부분 -->
							<div class="observer-container">
								<section class="questions-header" id="questions-header">
									<h1 class="questions-title">문의 게시판</h1>
									<div>
										<div class="write-button-desktop">
											<div class="dropdown b-dropdown btn-group">
												<!---->
												<button type="button"
													class="btn dropdown-toggle btn-primary"
													style="cursor: pointer;"
													onClick="location.href='${pageContext.request.contextPath}/reqWrite.board'">글쓰기</button>
											</div>
										</div>
									</div>

								</section>
							</div>
							<!-- 본문 리스트 -->
							<div class="questions-content-layout">
								<!-- 문의 게시판 내부 검색창 -->
								<!-- <div class="search-questions d-none">
									<form class="search-form">
										 <div role="group" class="input-group">
											<div class="input-group-prepend">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMSkiIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iNi42MTEiIGN5PSI2LjYxMSIgcj0iNS44NjEiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im0xNS4yNSAxNS4yNS00LjI0My00LjI0MyIvPgogICAgPC9nPgo8L3N2Zz4K"
													alt="커뮤니티 검색 아이콘" class="search">
											</div>
											<input type="text" placeholder="키워드와 #태그 모두 검색할 수 있어요."
												autocomplete="off" class="search-input form-control"
												maxlength="15" id="__BVID__4795" name="searchKeyword">  
											<div class="input-group-append">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMgMykiPgogICAgICAgICAgICA8Y2lyY2xlIGZpbGw9IiNDNUM1QzUiIGN4PSI5IiBjeT0iOSIgcj0iOSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im02IDYgNi4wMDUgNi4wMDZNMTIuMDA1IDYgNiAxMi4wMDYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo="
													alt="검색어 삭제 아이콘" class="reset" style="display: none;">
											</div>
										</div>  
									</form>
								</div> -->	
								<!-- 베너 '지금 가장 뜨거운 숨고픽' -->
								<!-- <section class="curation">
									<div class="curation-header">
										<h2 class="sg-text-headline sg-font-bold sg-text-gray-900">지금
											가장 뜨거운 숨고픽🔥</h2>
										<span class="curation-page">1/2</span>
									</div>
									배너
									<div class="slick-slider">
										<button type="button" data-role="none"
											class="slick-arrow slick-prev slick-disabled"
											style="display: block;">Previous</button>
										<div class="slick-list">
											<div class="slick-track"
												style="width: 1020px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
												<div tabindex="-1" data-index="0"
													class="slick-slide slick-active slick-current"
													style="outline: none; width: 204px;">
													<div>
														<a
															href="/community/soomgo-life/posts/63db8b3ad1becfebc58891bc-%EC%88%A8%EA%B3%A0%EC%83%9D%ED%99%9C-%EA%B0%80%EC%9D%B4%EB%93%9C%EB%9D%BC%EC%9D%B8---?from=curation"
															class="" data-testid="curation-item" tabindex="-1"
															style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
																	공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
																	숨고생활 가이드라인 🤝</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">
																	Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<div tabindex="-1" data-index="1" aria-hidden="false"
													class="slick-slide slick-active"
													style="outline: none; width: 204px;">
													<div>
														<a
															href="/community/soomgo-life/posts/641a7cbf3696545a889f3bc5-%EC%88%A8%EA%B3%A0-50%EB%A7%8C-%EC%BA%90%EC%8B%9C%EC%99%80-%EC%BF%A0%ED%8F%B0-%EB%B0%9B%EC%9C%BC%EC%84%B8%EC%9A%94--?from=curation"
															class="" data-testid="curation-item" tabindex="-1"
															style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
																	공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
																	숨고 50만 캐시와 쿠폰 받으세요🎁</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">
																	Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<div tabindex="-1" data-index="2" aria-hidden="false"
													class="slick-slide slick-active"
													style="outline: none; width: 204px;">
													<div>
														<a
															href="/community/soomgo-life/posts/643384c0505cb9f47887cdc0---%EC%88%A8%EA%B3%A0-%EC%9D%B8%ED%84%B0%EB%B7%B0-%EC%A3%BC%EC%9D%B8%EA%B3%B5%EC%9D%B4-%EB%90%98%EC%96%B4%EB%B3%B4%EC%84%B8%EC%9A%94-?from=curation"
															class="" data-testid="curation-item" tabindex="-1"
															style="width: 100%; display: inline-block;">
															<div class="curation-item admin-post">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
																	공지사항</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
																	💌숨고 인터뷰 주인공이 되어보세요!</h3>
																<p
																	class="user-name sg-text-description sg-font-regular sg-text-white">
																	Soomgo</p>
															</div>
														</a>
													</div>
												</div>
												<div tabindex="-1" data-index="3" aria-hidden="true"
													class="slick-slide" style="outline: none; width: 204px;">
													<div>
														<a
															href="/community/soomgo-life/posts/643982c1a982a333f790f526-%EC%9A%B4%EC%A0%84%EC%97%B0%EC%88%98-%EA%B3%A0%EC%88%98%EB%8B%98-%EC%B0%BE%EC%95%84%EC%9A%94--?from=curation"
															class="" data-testid="curation-item" tabindex="-1"
															style="width: 100%; display: inline-block;">
															<div class="curation-item">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
																	고수찾아요</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
																	운전연수 고수님 찾아요😊</h3>
																<div class="react-items">
																	<p
																		class="view sg-text-description sg-font-regular sg-text-gray-300">
																		297</p>
																	<p
																		class="comment sg-text-description sg-font-regular sg-text-gray-300">
																		8</p>
																</div>
															</div>
														</a>
													</div>
												</div>
												<div tabindex="-1" data-index="4" aria-hidden="true"
													class="slick-slide" style="outline: none; width: 204px;">
													<div>
														<a
															href="/community/soomgo-life/posts/643a44cbf22d78d3e3cce226-%EC%88%A0-%EA%B0%90%EC%A0%95%EA%B0%80%EC%9D%98%EB%A2%B0?from=curation"
															class="" data-testid="curation-item" tabindex="-1"
															style="width: 100%; display: inline-block;">
															<div class="curation-item">
																<p
																	class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
																	얼마예요</p>
																<h3
																	class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
																	술 감정가의뢰</h3>
																<div class="react-items">
																	<p
																		class="view sg-text-description sg-font-regular sg-text-gray-300">
																		314</p>
																	<p
																		class="comment sg-text-description sg-font-regular sg-text-gray-300">
																		17</p>
																</div>
															</div>
														</a>
													</div>
												</div>
											</div>
										</div>
										<button type="button" data-role="none"
											class="slick-arrow slick-next" style="display: block;">Next</button>
									</div>
								</section>
 -->
								<!-- 서비스/지역 필터 -->
								<section class="service-area-filter all fixed">
									<button type="button" class="btn btn-none chip-btn filter-btn">
										<a class="sort"><span data-v-130d9011="">내가 쓴 글</span></a>
									</button>
<!-- 									<button type="button" class="btn btn-none chip-btn filter-btn"
										data-v-130d9011="">
										<span data-v-130d9011="">지역</span>
									</button>
 -->								
 								</section>
								<!-- 피드 (게시글 목록) -->
								<article class="questions-feed-list">
									<ul class="feed-list" id="content-wrap">
										<!-- <li class="feed-item">
												<a href="" class="" data-testid="soomgo-life-feed-item">
														<p class="topic-name">태그 들어갈 내용</p>
														<div class="feed-content service-address-info">
															<div>
																<section class="item-wrapper">
																	<h3>문의 글 제목</h3>
																	<p class="content">본문 내용</p>
																</section>
																<p>지역정보</p>
															</div>
															<img alt="Resized_temp_1668128590947.1130780476_126927628503406.jpg" data-src="https://static.cdn.soomgo.com/upload/media/aaa72ebc-fa5a-485c-9047-b364d82f4e33.jpg?h=80&amp;w=80&amp;webp=1" src="https://static.cdn.soomgo.com/upload/media/aaa72ebc-fa5a-485c-9047-b364d82f4e33.jpg?h=80&amp;w=80&amp;webp=1" lazy="loaded">
															이미지 추가 할 내용
														</div>
														<div class="feed-footer">
															<div class="user-interaction">
																<span class="like sg-text-description sg-font-regular sg-text-gray-300">추천 수</span>
																<span class="comment sg-text-description sg-font-regular sg-text-gray-300">댓글 수</span>
															</div>
															<span class="sg-text-description sg-font-regular sg-text-gray-300">작성 시간 ex) 00분전</span>
														</div>
													</a>
												</li> -->
									</ul>
								</article>
							</div>
					</div>
					<a id="top-btn" role="button" aria-label="위로 가기 버튼" class="top-btn"
						style="display: none;"><img
						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEgyNFYyNEgweiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyMy4wMDAwMDAsIC02ODAuMDAwMDAwKSB0cmFuc2xhdGUoMzExLjAwMDAwMCwgNjY4LjAwMDAwMCkgdHJhbnNsYXRlKDEyLjAwMDAwMCwgMTIuMDAwMDAwKSIvPgogICAgICAgICAgICAgICAgICAgIDxnIHN0cm9rZT0iI0I1QjVCNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik03IDBMNyAxNSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyMy4wMDAwMDAsIC02ODAuMDAwMDAwKSB0cmFuc2xhdGUoMzExLjAwMDAwMCwgNjY4LjAwMDAwMCkgdHJhbnNsYXRlKDEyLjAwMDAwMCwgMTIuMDAwMDAwKSB0cmFuc2xhdGUoNS4wMDAwMDAsIDQuNTAwMDAwKSIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2UtbGluZWpvaW49InJvdW5kIiBkPSJNMCA3TDcgMCAxNCA3IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIzLjAwMDAwMCwgLTY4MC4wMDAwMDApIHRyYW5zbGF0ZSgzMTEuMDAwMDAwLCA2NjguMDAwMDAwKSB0cmFuc2xhdGUoMTIuMDAwMDAwLCAxMi4wMDAwMDApIHRyYW5zbGF0ZSg1LjAwMDAwMCwgNC41MDAwMDApIi8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
						alt="위로 가기"></a>
					</section>

					<!-- 글 상세보기에서 링크 이동할 부분 -->
					<div class="v-portal" style="display: none;"></div>

				</div>
			</div>
		</div>
		<div id="app-sticky" class="portal-target"></div>
		<div id="app-body"></div>
		<nav id="app-footer" class="footer-container"></nav>
		<div class="portal-target"></div>
		</div>
	</form>
	<%@ include file="../mainpageSeo/footer.jsp" %>
</body>
<!-- <script src="/static/js/request-board-js/main-board.js"></script> -->
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	let boards = `${boards}`;
	console.log(boards);
</script>
<script type ="text/javascript" src="${pageContext.request.contextPath}/static/js/request-board-jym/timer.js"></script>
<script type ="text/javascript" src="${pageContext.request.contextPath}/static/js/request-board-jym/addBoard.js"></script>
</html>