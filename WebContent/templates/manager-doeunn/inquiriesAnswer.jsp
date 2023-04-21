<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>관라지페이지-문의답변</title>
<link rel="stylesheet" href="../../static/css/manager-doeunn/inquiries-answer.css">
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
                <h3>1:1 문의 답변 등록하기</h3>
            </div>
            <form class="main-container">
                <div class="line">
                    <h4>회원 번호</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>질문 등록일</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>질문</h4>
                    <div class="item-box">
                        <div class="info-box long-info"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>답변 여부</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>최근 답변일</h4>
                    <div class="item-box">
                        <div class="info-box"></div>
                    </div>
                </div>
                <div class="line">
                    <h4>답변</h4>
                    <div class="item-box">
                        <textarea class="answer-box" name="answer"></textarea>
                    </div>
                </div>
                <div class="line">
                    <button class="answer-btn">답변 완료</button>
                </div>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/manager-doeunn/inquiries-answer.js"></script>
</html>