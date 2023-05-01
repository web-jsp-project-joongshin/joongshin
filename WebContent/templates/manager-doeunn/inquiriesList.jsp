<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
                <h3>전체 문의목록</h3>
            </div>
            <form class="main-container">
                <section class="top-line">
                    <div class="search">
                        <input placeholder="문의글 검색" name="keyword" value="${keyword}"/>
                        <button type="submit" onlick="" class="search-icon"></button>
                    </div>
                    <select name="select-option" class="select-option" name="type">
                        <option value="all" selected="${type == null ? 'selected' : ''}">전체</option>
                        <option value="waiting" selected="${type == 'waiting' ? 'selected' : ''}">대기</option>
                    </select>
                    <button type="button" class="delete-btn">문의글 삭제</button>
                </section>
                <table border="1" id="content-wrap">
	                    <thead>
	                        <tr>
	                            <th><input type="checkbox" class="check-top"/></th>
	                            <th>문의 번호</th>
	                            <th>제목</th>
	                            <th>내용</th>
	                            <th>답변</th>
	                            <th>작성날짜</th>
	                            <th>상태</th>
	                        </tr>
	                    </thead>
		                    <tr>
		                        <td><input type="checkbox" class="pcheckbox"/></td>
		                        <td>1</td>
		                        <td>제목이 들어갈 자리입니다</td>
		                        <td>내용이 들어갈 자리입니다</td>
		                        <td>2023-04-19</td>
		                        <td class="pending">답변완료</td>
		                    </tr>              
                </table>
            </form>
           <%--  <form action="${pageContext.request.contextPath}/listBoardOk.admin" name="page-form">
		    	<input type="hidden" name="page" value="${page}">
		    	<input type="hidden" name="sort" value="${sort}">
		    	<input type="hidden" name="type" value="${type}">
		    	<input type="hidden" name="keyword" value="${keyword}">
			</form> --%>
        </main>
        <div id="paging-wrap">
             	<c:if test="${prev}">
              	<a href="${startPage - 1}" class="paging paging-move change-page"><img src="/static/image/list/prev.png" width="15px"></a>
             	</c:if>
             	<c:forEach var="i" begin="${startPage}" end="${endPage}">
             		<c:choose>
             			<c:when test="${i eq page}">
                	<a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}"/></a>
             			</c:when>
             			<c:otherwise>
                    <a href="${i}" class="paging change-page"><c:out value="${i}"/></a>
             			</c:otherwise>
             		</c:choose>
             	</c:forEach>
             	<c:if test="${next}">
                  <a href="${endPage + 1}" class="paging paging-move change-page"><img src="/static/image//list/next.png" width="15px"></a>
             	</c:if>
        </div>
   </div>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/inquiries-list.js"></script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/board.js"></script>
<script>
	let boards1 = `${boards1}`;
	let contextPath = `${pageContext.request.contextPath}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/manager-doeunn/list.js"></script>
</html>