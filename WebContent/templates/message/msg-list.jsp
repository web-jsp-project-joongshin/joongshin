<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/css/message-jym/msg-main-page.css">
    <title>chat</title>
</head>
<body>
    <div id="app-body">
        <!-- 채팅페이지 바디 -->
        <div class="chat-list">
            <!-- 해더 부분  -->
            <div class="page-header">
                <div class="container">
                    <section class="page-title">
                        <h3>채팅</h3>
                        <a href="/pro/chats/edit" class="chat-list-edit-button"> 편집 </a>
                    </section>
                    <section class="row">
                        <div class="col-12">
                            <div role="group" class="input-group" id="input-group">
                                <div class="input-group-prepend"><img
                                        src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjNzM3MzczIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMwMSAtMjMzKSB0cmFuc2xhdGUoMjg1IDIyMikgdHJhbnNsYXRlKDE2IDExKSB0cmFuc2xhdGUoMSAxKSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjaXJjbGUgY3g9IjYuNjExIiBjeT0iNi42MTEiIHI9IjUuODYxIi8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0iTTE1LjI1IDE1LjI1TDExLjAwNyAxMS4wMDciLz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=">
                                </div>
                                <div class="input-flex-group">
                                    <input type="search" placeholder="쪽지 상대의 이름 또는 내용으로 검색해보세요." value=""
                                        class="form-search-text-input form-control" id="__BVID__14">
                                </div>
                                <!---->
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="chat-filter-wrapper">
                                <ul class="chat-filter">
                                    <li class="chat-filter-item ${receive ? '' : 'selected'}">
                                    	보낸 채팅                                   	
                                   	</li>
                                    <li class="chat-filter-item ${receive ? 'selected' : ''}"> 
                                    	 받은 채팅
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
<!--          바디  -->
            <div class="page-body">
                <div class="container">
                    <ul class="row"></ul>
                </div>
            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	console.log(`${receive}`);
	let messages = `${messages}`;
	let path = `${pageContext.request.contextPath}`;
</script>
<script src="/static/js/message-jym/msg-list.js"></script>
</html>