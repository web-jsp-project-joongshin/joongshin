<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지-사용자게시판목록</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/user-board-list.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>
	<div class="wrap">
		<header class="navi-bar">
			<div class="logo"></div>
			<div class="navi-container">
				<!-- navi-box 하나가 큰 카테고리 하나에 해당합니다-->
				<section class="navi-box">
					<div class="flex-line">
						<div class="icon board-icon"></div>
						<div class="navi-title">커뮤니티 관리</div>
						<div class="arrow"></div>
					</div>
					<ul class="board-list list">
						<li onclick="location.href='userBoardList.jsp'">이용자 게시판</li>
						<li onclick="location.href='juniorBoardList.jsp'">주니어 게시판</li>
					</ul>
				</section>

				<section class="navi-box">
					<div class="flex-line">
						<div class="icon message-icon"></div>
						<div class="navi-title">문의 관리</div>
						<div class="arrow"></div>
					</div>
					<ul class="inquiries-list list">
						<li onclick="location.href='inquiriesList.jsp'">전체 문의목록</li>
					</ul>
				</section>
			</div>
		</header>
		<main>
			<div class="main-title-box">
				<h3>이용자 게시판</h3>
			</div>
			<form class="main-container">
				<section class="top-line">
					<div class="search">
						<div class="search-icon"></div>
						<input placeholder="게시글 검색" name="search"/>
					</div>
					<button type="button" class="delete-btn">게시물 삭제</button>
				</section>
				<table border="1">
                    <thead>
                        <tr>
                            <th><input type="checkbox" class="check-top"/></th>
                            <th>게시물 번호</th>
                            <th>제목</th>
                            <th>내용</th>
                            <th>작성날짜</th>
                            <th>회원번호</th>
                        </tr>
                    </thead>
                    <tr>
                        <td><input type="checkbox" class="checkbox"/></td>
                        <td>1</td>
                        <td>제목이 들어갈 자리입니다</td>
                        <td>내용이 들어갈 자리입니다</td>
                        <td>2023-04-19</td>
                        <td>21</td>
                    </tr>
                    <tr>
                        <td><input type="checkbox" class="checkbox"/></td>
                        <td>2</td>
                        <td>제목이 들어갈 자리입니다</td>
                        <td>내용이 들어갈 자리입니다</td>
                        <td>2023-04-19</td>
                        <td>21</td>
                    </tr>
                </table>
			</form>
		</main>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/user-board-list.js"></script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/board.js"></script>
<script>
	let users = `${users}`;
	let contextPath = `${pageContext.request.contextPath}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/user-list.js"></script>
</html>