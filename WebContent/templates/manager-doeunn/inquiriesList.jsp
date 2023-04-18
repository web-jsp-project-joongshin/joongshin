<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관리자페이지-문의목록</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/inquiries-list.css">
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
                        <li onclick="location.href='userBoard.jsp'">이용자 게시판</li>
						<li onclick="location.href='juniorBoard.jsp'">주니어 게시판</li>
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
                        <input placeholder="문의글 검색"/>
                    </div>
                    <select name="select-option" class="select-option">
                        <option value="all">전체</option>
                        <option value="waiting">대기</option>
                    </select>
                    <button type="button" class="delete-btn">문의글 삭제</button>
                </section>
                <section class="content">
                    <div class="content-line top">
                        <input type="checkbox" name="check-top" id="check-top" size="20" style="width: 30px; text-align: center;"/>
                        <div style="width: 80px; text-align: center;">문의 번호</div>
                        <div style="width: 250px; text-align: center;">제목</div>
                        <div style="width: 300px; text-align: center;">내용</div>
                        <div>작성날짜</div>
                        <div>답변날짜</div>
                        <div>상태</div>
                    </div>
                </section>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/inquiries-list.js"></script>
</html>