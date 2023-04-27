<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 로고 -->
<link href="../../static/image/logo/logo.png" rel="shortcut icon"
	type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="../../static/css/mainpageSeo/hf.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<meta charset="UTF-8">

<body class="home">
	<div class="h__cov-progress"
		style="background-color: rgb(0, 199, 174); opacity: 0; position: fixed; top: 0px; left: 0px; width: 0%; height: 2px; transition: opacity 0.6s ease 0s;"></div>
	<header id="app-header" class="h_global-header" data-v-50506024="">
		<div  data-v-50506024=""
			class="h-global-navigation-bar">
			<!-- 섹션태그때문에 이미지가 나오지 않아서 없애버렸어요 -->
			<div  class="h-desktop-header">
				<div  class="left-section" style="display: flex;">
					<div  class="logo" style="margin: auto;">
						<a  href="${pageContext.request.contextPath}/listOk.board" class=""> <img
							 src="../../static/image/logo/JOONGSHIN.svg"
							alt="숨고, 숨은고수">
						</a>
					</div>
						<ul class="nav-list" style="margin-right: 20px;">
							<li  class="nav-item left-section-item"><a href="${pageContext.request.contextPath}/templates/community-users-wmoon/community-main.jsp">
								<span>커뮤니티</span></li></a>
							<li class="nav-item left-section-item"><a
								href="${pageContext.request.contextPath}/templates/request-board/request-board.jsp">
								<span >문의 게시판</span></a></li>
						</ul>
				</div>
				<!--  					 로고,문자열 네개까지 ↑ -->
				
				<div  class="search-container center-section">
					<div  
						class="h-service-searcher-desktop">
						<form action="${pageContext.request.contextPath}/listOk.board"
							class="global-search-bar" name="search-form">
							<div data-v-668330c4="" role="group" class="h-input-group">
								<div data-v-668330c4="" class="h-input-group-prepend"
									style="margin: auto;">
									<div>
										<select name="type">
											<option value="board_title&board_content">전체</option>
											<option value="board_title">제목</option>
											<option value="board_content">내용</option>
										</select>
									</div>
									<button type="submit" onclick="" style="border: 0px">
										<img src="../../static/image/icons/search.png"
											style="width: 20px;" />
									</button>
								</div>
								<input name="keyword" type="text" placeholder="어떤 서비스가 필요하세요?"
									autocomplete="off" class="h-form-control" id="__BVID__142">

							</div>
						</form>
					</div>
				</div>
				<!-- 로그인 회원가입 고수가입 전↑ -->






				<div  class="right-section" style="display: flex; margin-left: 20px;">
					<nav >
						<ul  class="nav-list">
						<form action="${pageContext.request.contextPath}/listOk.board"
							class="message1" name="message" style="font-size: 17px; margin: auto;">
							<li  class="nav-item right-section-item"><span 
									>채팅</span>
							<!----></li>
							</form>
							<form action="${pageContext.request.contextPath}/listOk.board"
							class="mypage1" name="search-form" style="margin: auto 10px;">
							<li  class="nav-item right-section-item" ><a
								 href="/profile" class="gnb-link"><span style="font-size: 17px;"
									>마이페이지</span></a>
							<!----></li>
							</form>
							<li  class="nav-item right-section-item">
							<a href="${pageContext.request.contextPath}/logout.user"><span style="font-size: 17px;"
									>로그아웃</span></a>
							<!----></li>
						</ul>
					</nav>
					
					
						
							
						</div>
					</div>
				</div>

			</div>
			<!-- 헤더 전체 div 닫는부분 -->
			<!-- 없애버린 세션 태그 닫는자리 -->
		</div>
	</header>
	<!-- 헤더 끝 -->
	</div>
</body>
</html>

