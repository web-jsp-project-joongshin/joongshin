<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">

<link href="../../static/css/mypage-css-jin/board-list.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<c:set var="userId" value="${sessionScope.userId}"/>

<c:choose>
  <c:when test="${not empty userId}">
    <jsp:include page="../mainpageSeo/loginHeader.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="../mainpageSeo/header.jsp"/>
  </c:otherwise>
</c:choose>

	<div id="app-body">
		<div  class="my-page-community-activity-container">
			<div  
				class="community-activity-container">
				<section  class="community-title-section">
					<h1  class="community-activity-title">숨고생활 작성글/댓글</h1>
				</section>
				<ul class="tab-list">
					<li class="tab router-link-exact-active router-link-active sg-text-subhead4 sg-font-bold sg-text-gray-900 selected">
						작성 글</li>
					<li class="tab sg-text-body2 sg-font-regular sg-text-gray-400">
					<a href="${pageContext.request.contextPath}/myCommentListOk.mypage" style="text-decoration: none; color: #2e2e2e; font-weight: 700;">
						작성 댓글</a></li>
				</ul>
				<article class="pro-knowhow-list">
						
							<li class="pro-knowhow-list-item">
								<section class="item-wrapper">
									<ul class="board-box">
									</ul>
								</section>		
							</li>
					
						<article class="pro-knowhow-list">
						<ul class="comment-box">
						</ul>
						<div id="paging-wrap">
						<c:if test="${prev}">
							<a href="${pageContext.request.contextPath}/myBoardListtOk.mypage?page=${startPage - 1}" class="paging paging-move"><img src="/static/image/prev.png" width="15px"></a>
						</c:if>
						<c:forEach var="i" begin="${startPage}" end="${endPage}">
                		<c:choose>
                			<c:when test="${i eq page}">
			                	<a href="javascript:void(0)" class="paging paging-checked"><c:out value="${i}"/></a>
                			</c:when>
                			<c:otherwise>
			                    <a href="${pageContext.request.contextPath}/myBoardListtOk.mypage?page=${i}" class="paging"><c:out value="${i}"/></a>
                			</c:otherwise>
                		</c:choose>
                	</c:forEach>
                	<c:if test="${next}">
						<a href="${pageContext.request.contextPath}/myBoardListtOk.mypage?page=${endPage + 1}" class="paging paging-move"><img src="/static/image/next.png" width="15px"></a>
					</c:if>
						</div>
						<div></div>
					</article>
						<div></div>
					</article>
				</section>
			</div>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	const myBoardList = JSON.parse(`${myBoardList}`);
	const contextPath = `${pageContext.request.contextPath}`;
</script>
<script src="${pageContext.request.contextPath}/static/js/mypage-js-jin/board-list.js"></script>
</html>