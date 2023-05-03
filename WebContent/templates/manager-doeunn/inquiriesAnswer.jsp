<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
						<li onclick="location.href='/listJuniorOk.junior'">주니어 게시판</li>
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
                <h3>1:1 문의 답변 등록하기</h3>
            </div>
            <form class="main-container" action="${pageContext.request.contextPath}/updateOk.admin?boardId=${boardId}" name="update" method="post">
                <div class="line">
                    <h4>회원 번호</h4>
                    <div class="item-box">
                        <div class="info-box">${boardId}</div>
                    </div>
                </div>
                <div class="line">
                    <h4>질문 등록일</h4>
                    <div class="item-box">
                        <div class="info-box">${boardRegisterDate}</div>
                    </div>
                </div>
                <div class="line">
                    <h4>질문</h4>
                    <div class="item-box">
                        <div class="info-box long-info">${boardContent}</div>
                    </div>
                </div>
                <hr>
                <div class="line">
                    <h4>답변</h4>
                    <div class="item-box">
                        <textarea class="answer-box" name="answer"></textarea>
                    </div>
                </div>
                <div class="line">
                    <button class="answer-btn" type="submit">답변 완료</button>
                </div>
            </form>
        </main>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/board.js"></script>
<script>
	const boardId = `${boardId}`;
	const boardContent = `${boardContent}`;
	const boardRegisterDate = `${boardRegisterDate}`;
	let boards1 = `${boards1}`;
	console.log(boardId);
	console.log(boardContent);
	console.log(boards1);
</script>
<script src="../../static/js/manager-doeunn/inquiries-answer.js"></script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/list.js"></script>
</html>