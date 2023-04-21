<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../static/css/junior-board/junior-profile.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>권지안 고수의 아동미술 레슨 서비스, 서울 성북구 - 숨고, 숨은고수</title>
</head>

<body>
	<div id="app-body">
		<div class="provider-profile">
			
			<!-- 블러 처리된 헤더 이미지입니다. -->
			<div class="profile-header"
				style="background-image: url(https://dmmj3ljielax6.cloudfront.net/upload/profile/916903d0-2127-40b3-9b9c-04f54881a030.jpg?webp=1);"
			>
				<div class="backdrop"></div>
			</div>

			<div class="container">
			
				<!-- 
					규격 맞추는 div입니다. 
					no-gutters 안쪽에 크게 2가지 div가 있습니다.
					 
					 - profile-section : 왼쪽의 넓은 부분으로, 프로필 정보를 나열해놓은 부분입니다.
					 - aside-section : 오른쪽의 좁은 부분으로, sticky태그가 붙어 header와 함께 움직이는 profile-aside div가 보여지는 공간입니다.
				 -->
				<div class="no-gutters">
				
					<div class="profile-section">
					
						<!-- 프로필 정보를 담는 div입니다. -->
						<div class="profile-body">
							
							<!-- 주니어에 관한 간략한 프로필입니다. -->
							<div class="profile-overview">
								
								<!-- 좌측 상단의 프로필 이미지입니다. -->
								<div class="thumb">
									<div class="junior-profile-picture">
										<div class="is-square" style="background-image: url(https://dmmj3ljielax6.cloudfront.net/upload/profile/916903d0-2127-40b3-9b9c-04f54881a030.jpg?h=320&amp;w=320&amp;webp=1);"></div>
									</div>
								</div>
								
								<div class="info">
									<div class="info-section-header">
										<h1 class="nickname">권지안</h1>
										<button type="button" class="share-button"></button></div>
									<div class="info-section-sub-header">
										<div class="category">아동미술 레슨</div>
										<div class="address">서울 성북구 / 25km 이동가능</div>
									</div>
									<div class="introduce">
										권지안 멘토의 일대일 맞춤
										프로그램 [아동미술 레슨, 소묘/드로잉 레슨]
									</div>
									<div class="detail-info">
										<div class="badges">
											<span class="badge-item">
												<img
													src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik00IDcuNjI1IDYuODggMTEgMTIgNSIgc3Ryb2tlPSIjMkRDMjYxIiBzdHJva2Utd2lkdGg9IjIiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2UtbGluZWpvaW49InJvdW5kIi8+Cjwvc3ZnPgo="
													alt="Self cert"
												> 본인인증 
											</span>
											<!---->
											<!---->
											<span
												title="숨고페이 거래 중 문제 발생 시 최대
														1,000만 원까지 보상받을 수 있어요"
												role="button"
											>
												<span class="soomgopay">
													<img 
														src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHJlY3QgZmlsbD0iIzUwODBGQSIgd2lkdGg9IjEyIiBoZWlnaHQ9IjEyIiByeD0iMyIvPgogICAgICAgIDxwYXRoIGQ9Ik04LjU1MyAyLjQwMkM4LjI1NSAyLjEzNCA3Ljg2OSAyIDcuMzk2IDJjLS42MyAwLTEuMTcuMTg3LTEuNjIuNTZhMi4wMyAyLjAzIDAgMCAwLS43NTYgMS4zNzljLS4wMTUuMTcxLS4wMTIuNTY2LjIxNSAxLjA3LjExNS4yMjYuMzA0LjQ5LjU3Ljc5Mi4zOC40MzUuNjI4Ljc1Ni43NDMuOTY0LjExNS4yMDcuMTcyLjQzNy4xNzIuNjkgMCAuNDAxLS4xNDEuNzQ5LS40MjQgMS4wNDQtLjI4My4yOTUtLjYxNi40NDMtMSAuNDQzLS4zNDYgMC0uNjMzLS4xMTItLjg1OC0uMzM1YTEuMTQ0IDEuMTQ0IDAgMCAxLS4zMzgtLjg0OWMwLS4yMTYuMDY0LS40MzUuMTkzLS42NTYuMTI4LS4yMi4yODctLjM5Mi40NzktLjUxNmwtLjAwMi0uMDAyYS41NTMuNTUzIDAgMCAwIC4yNy0uNDc3YzAtLjMwNC0uMjQtLjU1LS41MzYtLjU1YS41Mi41MiAwIDAgMC0uMjUyLjA2NVY1LjYyYy0uMDkxLjA1NS0uMTgzLjEyMS0uMjc4LjE5OEMzLjMyNCA2LjM0NiAzIDcuMDA0IDMgNy43OTNjMCAuNjQ1LjIwOSAxLjE3NC42MjYgMS41ODcuNDE3LjQxMy45NTEuNjIgMS42MDQuNjIuODQyIDAgMS41MjQtLjMwNyAyLjA0NC0uOTJhMi4zMyAyLjMzIDAgMCAwIC41NzEtMS41NmMwLS42MS0uMjE1LTEuMTg5LS42NDYtMS43MzZsLS4yMjMtLjI3Ni0uMTQ0LS4xODgtLjU0OC0uNzAxYy0uMzAyLS4zOC0uMTc1LS43ODUtLjE3NS0uNzg1LjA1LS4xOTEuMTc0LS4zNjUuMzc0LS41Mi4yNDgtLjE5NC41MjMtLjI5LjgyNS0uMjlhLjguOCAwIDAgMSAuNDY0LjEyYy4xMTYuMDgxLjE3NC4xODguMTc0LjMyIDAgLjI0Ny0uMTUuNDAzLS40NS40NzFsLjAwMS4wMDFhLjUxNi41MTYgMCAwIDAtLjQwNi41MWMwIC4yODcuMjI2LjUyLjUwNS41Mi4wNCAwIC4wNzktLjAwNS4xMTYtLjAxNC4yNC0uMDQzLjQzMy0uMTEuNTc4LS4yMDUuNDczLS4zMDIuNzEtLjczNy43MS0xLjMwNCAwLS40MjYtLjE0OS0uNzczLS40NDctMS4wNDEiIGZpbGw9IiNGRkYiLz4KICAgIDwvZz4KPC9zdmc+Cg==" 
														alt="숨고페이 아이콘"
													>
													<span>숨고페이</span>
												</span>
											</span>
											<!---->
										</div>
										
										<!-- 프로질 정보 믿의 리뷰 별점과 경력을 간략히 보여주는 상자 div입니다. -->
										<div class="statistics-info">
											<!---->
											<div class="statistics-info-item">
												<div class="statistics-info-item-header">
													리뷰 <span class="arrow"></span>
												</div>
												<div class="statistics-info-item-contents">
													<img 
														src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im03LjQ5NiAxLjU5NiAxLjQwNyAyLjc0MiAzLjE0NS40NGMuOTEuMTI3IDEuMjc1IDEuMjA0LjYxNSAxLjgyMmwtMi4yNzYgMi4xMzQuNTM4IDMuMDE1Yy4xNTUuODcyLS43OTcgMS41MzgtMS42MTIgMS4xMjZMNi41IDExLjQ1MmwtMi44MTMgMS40MjNjLS44MTUuNDEyLTEuNzY3LS4yNTQtMS42MTItMS4xMjZsLjUzOC0zLjAxNUwuMzM3IDYuNmMtLjY2LS42MTgtLjI5Ni0xLjY5NS42MTUtMS44MjJsMy4xNDUtLjQ0IDEuNDA3LTIuNzQyQzUuOTEyLjggNy4wODguOCA3LjQ5NiAxLjU5NiIgZmlsbD0iI0ZGQ0UyMSIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo="
													>
													<span class="rate">5.0</span><span class="count">(4)</span>
												</div></div>
											<div class="statistics-info-item">
												<div class="statistics-info-item-header">총 경력</div>
												<div class="statistics-info-item-contents">3년</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- 아래 div는 역할은 모르겠는데 클론코딩 때 있어서 내버려 두었습니다. 앞으로도 종종 있으니 빈 div는 무시해주세요. -->
							<div class="background-block"></div>
							
							<!-- 소 헤더로, 인덱싱이 되어 있습니다. 스크롤 시 헤더와 함께 이동합니다. -->
							<ul class="sticky-nav has-price">
								<li tab-id="about" class="about active">
									<span>고수 정보</span></li>
								<li tab-id="portfolio" class="portfolio">
									<span>포트폴리오</span></li>
								<li tab-id="photos" class="photos">
									<span>사진/동영상</span></li>
								<li tab-id="reviews" class="reviews">
									<span>리뷰 4</span></li>
								<li tab-id="FAQ" class="FAQ">
									<span>질문답변</span></li>
								<li tab-id="community" class="community">
									<span>커뮤니티</span></li>
							</ul>
							
							<!-- 
								observer-container는 여러 가지 정보를 담은 가장 중요한 div입니다. 
								8개의 section으로 나누어져 있지만, 아래 3개는 미사용 예정이므로 삭제될 것 같습니다. 
								 - about : 상세정보 제공
								 - portfolio : 사진, 클릭 시 modal로 상세보기 -> 클릭 시 게시글 상세보기로 대체예정
								 - photos : 사진 및 동영상, 클릭 시 뷰어 modal
								 - reviews
								 - FAQ
								 
							 -->
							<div class="observer-container">
								<section id="about">
								
									<div class="profile-provider-info">
										<div class="profile-provider-info-title">
											<h2>고수 정보</h2>
											<!---->
										</div>
										<ul>
											<li class="business-size">직원수 1명</li>
											<li class="active-time">연락 가능 시간 : 오후
												1시 - 오후 10시</li>
											<li class="payment">숨고페이, 카드결제, 계좌이체
												가능</li>
											<!---->
										</ul>
									</div>
									
									<div class="profile-service-desc">
										<h2>서비스 상세설명</h2>
										<div class="description">
											온 마음을 다해 아이들의 자기표현을 이끌어주고, 일상이 지루하신 분들에게 존재만으로 힐링이 되어드리는 권지안 멘토입니다. 감사합니다♥ 
											
											🔎 경력 
											중국 상해 상해교통대학 중영국제학과 입학 
											영어입시학원 강사 
											한양대학교 주얼리패션디자인과 졸업 
											이탈리아 POLIMODA BAG DESIGN 석사과정 
											국내 핸드백 브랜드 수석 디자이너
											아동미술학원 선생님
											<div class="gradient"></div>
										</div>
										<!---->
									</div>
									
									<div class="profile-service-list">
										<h2>제공 서비스</h2>
										<div class="view">
											<ul>
												<li class="cursor-default">소묘/드로잉 레슨</li>
												<li class="cursor-default">아동미술 레슨</li>
											</ul>
											<!---->
										</div>
									</div>
									
									<div class="profile-career">
										<h2>경력</h2>
										<div class="header">
											<img
												src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Ik0xMi42OCAzYzIuMTMzIDAgMy44OTggMS41NSAzLjg5OCAzLjUxMmwtLjAwMS40OTloNC4yODNjLjMyMSAwIC41ODcuMjQyLjYzMy41NTZsLjAwNy4wOTZ2MTEuNjg1YzAgLjM2LS4yODYuNjUyLS42NC42NTJIMy4xNGEuNjQ2LjY0NiAwIDAgMS0uNjQtLjY1MlY3LjY2M2MwLS4zNi4yODYtLjY1MS42NC0uNjUxbDQuMjgyLS4wMDF2LS40OTljMC0xLjkgMS42NTMtMy40MTIgMy42OTMtMy41MDdMMTEuMzIgM3pNNy45MTQgMTQuODM0SDMuNzc5djMuODYySDIwLjIydi0zLjg2MmgtNC4xMzV2Ljg1M2MwIC4zNi0uMjg2LjY1MS0uNjQuNjUxYS42NDQuNjQ0IDAgMCAxLS42MzItLjU1NWwtLjAwNy0uMDk2LS4wMDEtLjg1M0g5LjE5NHYuODUzYzAgLjM2LS4yODYuNjUxLS42NC42NTFhLjY0NC42NDQgMCAwIDEtLjYzMy0uNTU1bC0uMDA2LS4wOTYtLjAwMS0uODUzek0yMC4yMiA4LjMxNUgzLjc4bC0uMDAxIDUuMjE1aDQuMTM1di0uODUyYzAtLjM2LjI4Ny0uNjUyLjY0LS42NTIuMzIyIDAgLjU4OC4yNDEuNjMzLjU1NmwuMDA3LjA5NnYuODUyaDUuNjExdi0uODUyYzAtLjM2LjI4Ny0uNjUyLjY0LS42NTIuMzIyIDAgLjU4OC4yNDEuNjM0LjU1NmwuMDA2LjA5NnYuODUyaDQuMTM1VjguMzE1em0tNy41NC00LjAxMWgtMS4zNmMtMS40NjUgMC0yLjYxOCAxLjAxMi0yLjYxOCAyLjIwOHYuNWg2LjU5NnYtLjVjMC0xLjE0OC0xLjA2My0yLjEyNy0yLjQ0NC0yLjIwM2wtLjE3NC0uMDA1eiIgZmlsbD0iIzAwQzdBRSIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo="
												alt="career icon"
											>
											<h3 class="title">총 경력 3년</h3>
										</div>
										<div class="profile-career-item-wrap">
											<div class="career-list-item profile">
												<div class="contents">
													<h3 class="header">아동미술학원 선생님</h3>
													<div class="date-info">2022년 10월 -
														2022년 12월 · 3개월</div>
													<!---->
												</div>
												<!---->
											</div>
											<div class="career-list-item profile">
												<div class="contents">
													<h3 class="header">국내 핸드백 브랜드 수석
														디자이너</h3>
													<div class="date-info">2020년 3월 -
														2022년 8월 · 2년 6개월</div>
													<!---->
												</div>
												<!---->
											</div>
											<div class="career-list-item profile">
												<div class="contents">
													<h3 class="header">영어입시학원 보조강사</h3>
													<div class="date-info">2015년 6월 -
														2015년 9월 · 4개월</div>
													<!---->
												</div>
												<!---->
											</div>
										</div>
									</div>
									
									<div class="profile-education">
										<h2>학력</h2>
										<div class="profile-career-item-wrap">
											<div class="education-list-item profile">
												<div class="contents">
													<h3 class="header">POLIMODA</h3>
													<div class="date-info">2019년 1월 - 2019년 9월</div>
													<div class="description">MASTER BAG DESIGN</div>
												</div>
												<div class="sub-area">
													<img
														src="https://static.cdn.soomgo.com/upload/provider/0e0e6559-b8fe-4742-96a1-72796013f32d.jpg?h=50&amp;w=50&amp;webp=1"
														alt="학력"
														class="image expandable"
													>
													<!---->
												</div>
											</div>
											<div class="education-list-item profile">
												<div class="contents">
													<h3 class="header">한양대학교</h3>
													<div class="date-info">2015년 3월 - 2019년 2월</div>
													<div class="description">주얼리패션디자인과</div>
												</div>
												<div class="sub-area">
													<img src="https://static.cdn.soomgo.com/upload/provider/d1d5464e-a85e-4d11-83a3-2d0e8a4a5629.jpg?h=50&amp;w=50&amp;webp=1"
														alt="학력" 
														class="image expandable"
														>
													<!---->
												</div>
											</div>
										</div>
									</div>
									<!---->
								</section>
								
								<section data-observe="portfolio" id="portfolio">
									<div class="profile-portfolio">
										<h2>포트폴리오</h2>
										<ul class="row profile-portfolio-item-wrap">
											<li class="col-3">
												<div title="7세 _ 세계의 산타마을" class="profile-portfolio-item">
													<div class="profile-portfolio-image">
														<img 
															alt="포트폴리오 이미지" 
															src="https://static.cdn.soomgo.com/upload/portfolio/0c82ed49-de4c-4860-8bfc-8eb9f6d029e3.jpg?h=320&amp;w=320"
														>
													</div>
													<div class="profile-portfolio-text-wrap">
														<h3 class="profile-portfolio-title sg-text-white-100 sg-text-subhead5 sg-font-medium sg-text-left">
															7세 _ 세계의 산타마을
														</h3>
														<p class="profile-portfolio-description sg-text-white-100 sg-text-description sg-font-regular sg-text-left">
															아동미술 레슨
														</p>
													</div>
												</div>
											</li>
											<li class="col-3">
												<div title="7세 _ 우리들의 소망나무" class="profile-portfolio-item">
													<div class="profile-portfolio-image">
														<img 
															alt="포트폴리오 이미지"
															src="https://static.cdn.soomgo.com/upload/portfolio/0e68b0e3-342c-41f9-a15e-9523ddbaa5d1.jpg?h=320&w=320"
														>
													</div>
													<div class="profile-portfolio-text-wrap">
														<h3 class="profile-portfolio-title sg-text-white-100 sg-text-subhead5 sg-font-medium sg-text-left">
															7세 _ 우리들의 소망나무
														</h3>
														<p class="profile-portfolio-description sg-text-white-100 sg-text-description sg-font-regular sg-text-left">
															아동미술 레슨
														</p>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</section>
								
								<section data-observe="photos" id="photos">
									<div class="profile-media">
										<h2>사진 및 동영상</h2>
										<div class="image-list-viewer view-list">
											<ul class="row">
												<li>
													<div class="thumbnail" style="background-image: url('https://img.youtube.com/vi/R4UwTEl9MOc/0.jpg');"></div>
												</li>
												<li>
													<div class="thumbnail" style="background-image: url('https://dmmj3ljielax6.cloudfront.net/upload/media/78bd79ca-a30f-4dca-86ba-9818abfc3676.jpg?h=320&w=320');"></div>
												</li>
											</ul>
										</div>
									</div>
								</section>
								
								<section data-observe="reviews" id="reviews">
									<div class="profile-review" id="profile-link">
										<h2>리뷰</h2>
										<div class="profile-review-list">
											<!---->
											<div>
												<div class="summary">
													<div class="avg">5.0</div>
													<div class="info">
														<ul class="star-rate readonly isBig" style="-gap: 0px;">
															<li>
																<img
																	src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg"
																	alt="Star Icon"
																>
															</li>
															<li>
																<img
																	src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg"
																	alt="Star Icon"
																>
															</li>
															<li>
																<img 
																	src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg"
																	alt="Star Icon"
																>
															</li>
															<li>
																<img 
																	src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg"
																	alt="Star Icon"
																>
															</li>
															<li>
																<img
																	src="https://assets.cdn.soomgo.com/icons/icon-common-review-star-small-full.svg"
																	alt="Star Icon"
																>
															</li>
														</ul>
														<div class="review-count">4개 리뷰</div>
													</div>
												</div>
												<hr>
											</div>
											<!---->
											<div class="root-container">
												<div class="overflow-container">
													<ul class="chip-list-container">
														<li class="chip-wrapper selected" role="radio" aria-checked="true">전체</li>
														<li class="chip-wrapper" role="radio">아동미술 레슨</li>
														<li class="chip-wrapper" role="radio">소묘/드로잉 레슨</li>
													</ul>
												</div>
											</div>
											
											<ul class="list-container">
												<li role="checkbox" class="selector-wrapper">
													<img 
														width="20px" height="20px"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTQxOSAtNDU4KSB0cmFuc2xhdGUoMzc1IDI0NykgdHJhbnNsYXRlKDI4IDE5NSkiPgogICAgICAgICAgICA8cmVjdCB3aWR0aD0iMzYzIiBoZWlnaHQ9Ijc2IiB4PSIuNSIgeT0iLjUiIHN0cm9rZT0iI0UxRTFFMSIgcng9IjQiLz4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxNiAxNikgdHJhbnNsYXRlKDEgMSkiPgogICAgICAgICAgICAgICAgICAgIDxyZWN0IHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgZmlsbD0iI0UxRTFFMSIgcng9IjkiLz4KICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNNSA4LjY4OEw3Ljg4IDExLjUgMTMgNi41Ii8+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo="
														alt="체크되지 않음"
													>
													<span class="text">사진 리뷰</span>
												</li>
												<li role="checkbox" class="selector-wrapper">
													<img
														width="20px" height="20px"
														src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTQxOSAtNDU4KSB0cmFuc2xhdGUoMzc1IDI0NykgdHJhbnNsYXRlKDI4IDE5NSkiPgogICAgICAgICAgICA8cmVjdCB3aWR0aD0iMzYzIiBoZWlnaHQ9Ijc2IiB4PSIuNSIgeT0iLjUiIHN0cm9rZT0iI0UxRTFFMSIgcng9IjQiLz4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8ZyB0cmFuc2Zvcm09InRyYW5zbGF0ZSgxNiAxNikgdHJhbnNsYXRlKDEgMSkiPgogICAgICAgICAgICAgICAgICAgIDxyZWN0IHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgZmlsbD0iI0UxRTFFMSIgcng9IjkiLz4KICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNNSA4LjY4OEw3Ljg4IDExLjUgMTMgNi41Ii8+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo="
														alt="체크되지 않음"
													>
													<span class="text">거래인증 리뷰</span>
												</li>
											</ul>
											<!---->
											<div>
												<ul class="review-container">
													<li>
														<article class="profile-review-item">
															<section class="meta">
																<span class="author">김**</span>
																<div class="profile-review-item-badge">
																	<!---->
																</div>
															</section>
															<!---->
															<section class="service-score">
																<p>소묘/드로잉 레슨</p>
																<img 
																	src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTQiIGhlaWdodD0iMTQiIHZpZXdCb3g9IjAgMCAxNCAxNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxwYXRoIGQ9Im03LjQ5NiAxLjU5NiAxLjQwNyAyLjc0MiAzLjE0NS40NGMuOTEuMTI3IDEuMjc1IDEuMjA0LjYxNSAxLjgyMmwtMi4yNzYgMi4xMzQuNTM4IDMuMDE1Yy4xNTUuODcyLS43OTcgMS41MzgtMS42MTIgMS4xMjZMNi41IDExLjQ1MmwtMi44MTMgMS40MjNjLS44MTUuNDEyLTEuNzY3LS4yNTQtMS42MTItMS4xMjZsLjUzOC0zLjAxNUwuMzM3IDYuNmMtLjY2LS42MTgtLjI5Ni0xLjY5NS42MTUtMS44MjJsMy4xNDUtLjQ0IDEuNDA3LTIuNzQyQzUuOTEyLjggNy4wODguOCA3LjQ5NiAxLjU5NiIgZmlsbD0iI0ZGQ0UyMSIgZmlsbC1ydWxlPSJldmVub2RkIi8+Cjwvc3ZnPgo="
																	alt="평점"
																> 5.0
															</section>
															<div class="line-clamp collapsed clamped">
																<div class="line-clamp" style="line-height: 1.57; max-height: 4.71rem;">
																	<p class="review-text">수업시간 내내 편안하고 재미있게 수업 진행하였습니다. 드로잉 레슨은 처음이라 걱정이 앞섰는데 수업진행후 걱정이 싹 사라졌습니다. 배우자고 하는 목표에 맞게 수업커리큘럼을 짜주시고 수업내용도 체계적이고 좋았습니다. 벌써 다음 시간이 기대됩니다.</p>
																</div>
																<button type="button" class="btn collapse-toggle btn-none" style="">
																	<span>더보기</span>
																</button>
															</div>
															<section class="evaluation">
																<div class="badge-wrap">
																	<span class="badge badge-secondary">친절하게 상담해주세요</span>
																	<span class="badge badge-secondary">+8</span>
																</div>
															</section>
															
															<section class="review-footer">
																<div class="left">
																	<span class="date">2023. 03. 22</span>
																	<span  style="display: none;">·</span>
																	<button type="button" class="btn btn-reply" style="display: none;">답변 달기</button>
																</div>
																<!---->
															</section>
															
															<section>
																<article class="profile-comment-item">
																	<section class="comment-aside left">
																		<img
																			src="https://dmmj3ljielax6.cloudfront.net/upload/profile/916903d0-2127-40b3-9b9c-04f54881a030.jpg?webp=1"
																			alt="권지안" 
																			class="profile-image"
																		>
																	</section>
																	<section class="comment-aside right">
																		<section class="meta">
																			<span class="author">권지안</span>
																		</section>
																		<div class="line-clamp collapsed">
																			<div class="line-clamp" style="line-height: 1.57; max-height: 4.71rem;">
																				<p class="review-text">소중한 리뷰 감사드려요!! 덕분에 저도 힐링시간이었습니다 :) 다음주에 뵈어요☺️🩷</p>
																			</div>
																			<button type="button" class="btn collapse-toggle btn-none" style="display: none;">
																				<span>더보기</span>
																			</button>
																		</div>
																		<section class="review-footer">
																			<div class="left">
																				<span class="date">2023. 03. 23</span>
																			</div>
																			<!---->
																		</section>
																	</section>
																</article>
															</section>
														</article>
													</li>
												</ul>
												<!---->
												<div class="profile-more-button">
													<button type="button" class="btn btn-none more collapse">
														<span>리뷰 더보기</span>
													</button>
												</div>
											</div>
										</div>
									</div>
								</section>
								
								<section data-observe="FAQ" id="FAQ">
									<div class="profile-qna">
										<h2>질문답변</h2>
										<ul>
											<li><div class="question">Q. 서비스가 시작되기 전 어떤 절차로 진행하나요?</div>
												<div class="answer">
													<div class="collapsed-text-line collapsed">
														<div class="wrapper" style="height: 96px;">
															<p>"상담수업 진행 후 정규수업 결정 가능"
																<br>
																<br>🎨 아동미술
																<br>노이상담수업은 정규수업과 마찬가지로 '수업'이 진행됩니다. 수업을 통해 아이의 성향, 특징 등을 세부적으로 분석 파악한 후 부모님과 상담을 진행하고 있습니다.
																<br>
																<br>🔎총 90분 소요
																<br>
																<br>🎨성인취미미술
																<br>저희 상담수업은 상담 후 정규수업과 마찬가지로 '수업'이 이루어집니다. '일대일 맞춤 프로그램'으로 진행이 되고 있으며, 고객님의 니즈에 맞춰 수업의 목적과 방향성을 설계해드립니다.
																<br>
																<br>🔎총 90분 소요
															</p>
														</div>
														<div class="collapse-button" style="">
															<!---->
															<div class="view-more-button">
																<span role="button">더보기</span>
																<span role="button" style="display: none;">접기</span>
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</section>
								
								<!-- 빈 섹션입니다. -->
								<section data-observe="market" style="display: none;" id="market"></section>
								
								<!-- 삭제 예정입니다. -->
								<section data-observe="community" style="" id="community">
									<div class="profile-knowhow">
										<h2>고수의 노하우</h2>
										<ul class="row profile-knowhow-item-wrap">
											<li class="col-4">
												<div>
													<div>
														<div title="'시간 가는 줄 모르는 수업' 만드는 고수" class="profile-knowhow-image">
															<img 
																alt="'시간 가는 줄 모르는 수업' 만드는 고수"
																src="https://static.cdn.soomgo.com/upload/talkboard/f075fba9-b4bd-4611-b21b-3dfda78f4c05.jpg?h=320&w=480"
															>
														</div>
														<div class="profile-knowhow-service">소묘/드로잉 레슨</div>
														<div class="profile-knowhow-title">
															<div class="collapsed">
																<div class="line-clamp"style="line-height: 1.5; max-height: 3rem; -webkit-line-clamp: 2;">
																	<h3 >'시간 가는 줄 모르는 수업' 만드는 고수</h3>
																</div>
																<!---->
															</div>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<div class="profile-community">
										<h2>고수의 커뮤니티 활동</h2>
										
										<ul class="profile-community-chips">
											<li class="profile-community-chip-item">
												<button class="sg-chip active">답변</button>
											</li>
											<li class="profile-community-chip-item">
												<button class="sg-chip">게시글</button>
											</li>
										</ul>
										
										<ul class="row profile-community-item-wrap">
											<li class="col">
												<div class="profile-community-item-wrapper">
													<div class="profile-community-item-contents">
														<div class="contents">
															<p class="community-topic">궁금해요</p>
															<div class="community-activity-title collapsed">
																<div class="line-clamp" style="line-height: 1.5; max-height: 1.5rem; -webkit-line-clamp: 1;">
																	<p>아아아아.. 그만큼 깎아줘..야하다니....🥲</p>
																</div>
																<!---->
															</div>
															<div class="community-activity-content collapsed">
																<div class="line-clamp" style="line-height: 1.5; max-height: 1.5rem; -webkit-line-clamp: 1;">
																	<p>고용수</p>
																</div>
																<!---->
															</div>
														</div>
														<!---->
													</div>
													<div class="profile-community-item-info">
														<div class="reactions">
															<span class="like">0</span>
														</div>
														<span class="created-at">2023.03.30</span>
													</div>
												</div>
											</li>
											<li class="col">
												<div class="profile-community-item-wrapper">
													<div class="profile-community-item-contents">
														<div class="contents">
															<p class="community-topic">고수찾아요</p>
															<div class="community-activity-title collapsed">
																<div class="line-clamp" style="line-height: 1.5; max-height: 1.5rem; -webkit-line-clamp: 1;">
																	<p>제가 운전 참 잘하는데 춘천은 좀 많이 머네요.. 아쉬워요.. 🥲</p>
																</div>
																<!---->
															</div>
															<div class="community-activity-content collapsed">
																<div class="line-clamp" style="line-height: 1.5; max-height: 1.5rem; -webkit-line-clamp: 1;">
																	<p>운전연습 도와주실분 구해요</p>
																</div>
																<!---->
															</div>
														</div>
														<!---->
													</div>
													<div class="profile-community-item-info">
														<div class="reactions">
															<span class="like">0</span>
														</div>
														<span class="created-at">2023.03.30</span>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</section>
								
								<!-- 빈 섹션입니다. -->
								<section data-observe="activity" style="display: none;" id="activity"></section>
								<!---->
							</div>
							<!---->
						</div>
					</div>
					
					<!-- 바로 견적을 낼 수 있는 편의성 div입니다. 이 부분은 쪽지 보내기로 대체할 예정입니다. -->
					<div class="aside-section">
						<aside class="user-profile-aside">
							<div class="target-request-banner">
								<p>권지안 고수에게 원하는 서비스의 견적을 받아보세요</p>
							</div>
							<div class="btn-wrapper">
								<button type="button" class="btn grey-btn small btn-primary">
									<img
										src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+SWNvbl9oZWFydDwvdGl0bGU+CiAgICA8ZyBpZD0i8J+UljEwNTct66Gk67CxLe2bhC3rs4Dqsr3rkJwtVUktKOywnO2VnOqzoOyImCkiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLslYTsnbTsvZhfQ1RBLeyVhOydtOy9mC3rs4Dqsr0iIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMy4wMDAwMDAsIC00MzEuMDAwMDAwKSIgZmlsbD0iI0ZGRkZGRiI+CiAgICAgICAgICAgIDxnIGlkPSJJY29uX2hlYXJ0IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4wMDAwMDAsIDQzMS4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0xOS42MTIwMzE4LDUuNjg3OTY4MjIgQzE4LjcyMzc3MDIsNC43OTkyODk1NSAxNy41MTg3Nzg2LDQuMyAxNi4yNjIyOTIsNC4zIEMxNS4wMDU4MDU1LDQuMyAxMy44MDA4MTM4LDQuNzk5Mjg5NTUgMTIuOTEyNTUyMiw1LjY4Nzk2ODIyIEwxMS45OTk3Njk3LDYuNjAwNzUwNzggTDExLjA4Njk4NzEsNS42ODc5NjgyMiBDOS4yMzY5NzY5MywzLjgzNzk1ODA4IDYuMjM3NTE3ODEsMy44Mzc5NTgxIDQuMzg3NTA3NjQsNS42ODc5NjgyNyBDMi41Mzc0OTc0Nyw3LjUzNzk3ODQ0IDIuNTM3NDk3NDUsMTAuNTM3NDM3NiA0LjM4NzUwNzU5LDEyLjM4NzQ0NzggTDUuMzAwMjkwMTUsMTMuMzAwMjMwMyBMMTEuOTk5NzY5NywxOS45OTk3MDk4IEwxOC42OTkyNDkyLDEzLjMwMDIzMDMgTDE5LjYxMjAzMTgsMTIuMzg3NDQ3OCBDMjAuNTAwNzEwNCwxMS40OTkxODYyIDIxLDEwLjI5NDE5NDUgMjEsOS4wMzc3MDc5OSBDMjEsNy43ODEyMjE0NCAyMC41MDA3MTA0LDYuNTc2MjI5ODIgMTkuNjEyMDMxOCw1LjY4Nzk2ODIyIFoiIGlkPSJQYXRoIj48L3BhdGg+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
										alt="고수 찜하기"
									>
								</button>
								<button type="button" class="btn btn-primary">견적 요청</button>
							</div>
							<div data-v-0eef450b="" class="average-response-time">
								평균 <span data-v-0eef450b="" class="time">30분 내</span> 응답하는 고수입니다
							</div>
							<div data-v-0eef450b="" class="v-portal" style="display: none;"></div>
						</aside>
					</div>
				</div>
				
				<div>
					<!---->
					<!---->
				</div>
			</div>

			<div class="v-portal" style="display: none;"></div>
			
			<!-- 하단에 sticky로 붙어있는 고수 찜하기 버튼의 div입니다. 필요가 없다면 삭제 예정입니다. -->
			<div class="pro-bucket-button-wrapper">
				<!---->
				<button type="button" class="btn pro-bucket-btn btn-secondary">
					<img 
						src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+SWNvbl9oZWFydDwvdGl0bGU+CiAgICA8ZyBpZD0i8J+UljEwNTct66Gk67CxLe2bhC3rs4Dqsr3rkJwtVUktKOywnO2VnOqzoOyImCkiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLslYTsnbTsvZhfQ1RBLeyVhOydtOy9mC3rs4Dqsr0iIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMy4wMDAwMDAsIC00MzEuMDAwMDAwKSIgZmlsbD0iI0ZGRkZGRiI+CiAgICAgICAgICAgIDxnIGlkPSJJY29uX2hlYXJ0IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgyMy4wMDAwMDAsIDQzMS4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0xOS42MTIwMzE4LDUuNjg3OTY4MjIgQzE4LjcyMzc3MDIsNC43OTkyODk1NSAxNy41MTg3Nzg2LDQuMyAxNi4yNjIyOTIsNC4zIEMxNS4wMDU4MDU1LDQuMyAxMy44MDA4MTM4LDQuNzk5Mjg5NTUgMTIuOTEyNTUyMiw1LjY4Nzk2ODIyIEwxMS45OTk3Njk3LDYuNjAwNzUwNzggTDExLjA4Njk4NzEsNS42ODc5NjgyMiBDOS4yMzY5NzY5MywzLjgzNzk1ODA4IDYuMjM3NTE3ODEsMy44Mzc5NTgxIDQuMzg3NTA3NjQsNS42ODc5NjgyNyBDMi41Mzc0OTc0Nyw3LjUzNzk3ODQ0IDIuNTM3NDk3NDUsMTAuNTM3NDM3NiA0LjM4NzUwNzU5LDEyLjM4NzQ0NzggTDUuMzAwMjkwMTUsMTMuMzAwMjMwMyBMMTEuOTk5NzY5NywxOS45OTk3MDk4IEwxOC42OTkyNDkyLDEzLjMwMDIzMDMgTDE5LjYxMjAzMTgsMTIuMzg3NDQ3OCBDMjAuNTAwNzEwNCwxMS40OTkxODYyIDIxLDEwLjI5NDE5NDUgMjEsOS4wMzc3MDc5OSBDMjEsNy43ODEyMjE0NCAyMC41MDA3MTA0LDYuNTc2MjI5ODIgMTkuNjEyMDMxOCw1LjY4Nzk2ODIyIFoiIGlkPSJQYXRoIj48L3BhdGg+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
						alt="pro bucket" 
						class="cart-icon"
					>
					<span class="btn-text">찜한 고수</span>
				</button>
			</div>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/junior-board/junior-profile.js"></script>

</html>