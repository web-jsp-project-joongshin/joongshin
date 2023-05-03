<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자페이지-이용자게시글 상세</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/user-board-detail.css">
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
                        <li onclick="location.href='/listUserOk.admin'">이용자 게시판</li>
						<li onclick="location.href='/listJuniorOk.admin'">주니어 게시판</li>
                    </ul>
               </section>

               <section class="navi-box">
                    <div class="flex-line">
                        <div class="icon message-icon"></div>
                        <div class="navi-title">문의 관리</div>
                        <div class="arrow"></div>
                    </div>
                    <ul class="inquiries-list list">
                        <li onclick="location.href='/listBoardOk.admin'">전체 문의목록</li>
                    </ul>
               </section>
            </div>
        </header>
        <main>
            <div class="main-title-box">
                <h4 onclick="location.href='/listUserOk.admin'">← 목록 화면으로 돌아가기</h3>
            </div>
            <div class="main-container">
                <section class="content">
                   <div class="line">
                    <div class="box title">제목</div>
                    <div class="box item">${boardTitle}</div>
                   </div>
                   <div class="line">
                    <div class="box title">작성자</div>
                    <div class="box item">${userName}</div>
                   </div>
                   <div class="line">
                    <div class="box title">작성날짜</div>
                    <div class="box item">${boardRegisterDate}</div>
                   </div>
                   <div class="line">
                    <div class="box title">내용</div>
                    <div class="box item">${boardContent}</div>
                   </div>
                   <div class="line">
                    <button class="button go-to-post-btn" onclick="location.href='/listUserOk.admin'">해당 게시물 페이지로 이동하기</button>
                   </div>
                   <div class="line">
                    <button class="button remove-btn" onclick="location.href='/deleteBoard.admin?boardId=${boardId}'">삭제하기</button>
                   </div>
                </section>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
const board
<script src="../../static/js/manager-doeunn/user-board-detail.js"></script>
</html>