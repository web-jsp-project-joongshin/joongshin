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


<link href="../../static/css/mypage-css-jin/mypage-main.css" rel="stylesheet" type="text/css" />

<body>
<%@ include file="../mainpageSeo/header.jsp" %>

	<div id="app-body" style="padding: 30px">
		<div class="container container-md">
			<div class="mypage-container">
				<h1 class="mypage-title">마이페이지</h1>
				<div class="profile-container underline">
					<a href="${pageContext.request.contextPath}/myAccountOk.mypage?userId=${userId}" class=""><div class="thumb">
							<div class="user-profile-picture h-100">
								<div data-name="image" class="is-square"
									data-src="https://dmmj3ljielax6.cloudfront.netNone?h=320&amp;w=320"
									lazy="error"
									style="background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNzIiIGhlaWdodD0iNzIiIHZpZXdCb3g9IjAgMCA3MiA3MiI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTAgMGg3MnY3MkgweiIvPgogICAgICAgIDxwYXRoIGlkPSJjIiBkPSJNMCAwaDcydjcySDB6Ii8+CiAgICA8L2RlZnM+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxtYXNrIGlkPSJiIiBmaWxsPSIjZmZmIj4KICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYSIvPgogICAgICAgIDwvbWFzaz4KICAgICAgICA8ZyBtYXNrPSJ1cmwoI2IpIj4KICAgICAgICAgICAgPG1hc2sgaWQ9ImQiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYyIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDx1c2UgZmlsbD0iI0YyRjJGMiIgeGxpbms6aHJlZj0iI2MiLz4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI0UxRTFFMSIgZD0iTTcwLjY3NyA2Ny4wMzJjLS45NTEtMi44NDQtMi42NzQtNS43MTItNS4yMTUtNy4zODEtNC44OS0zLjIzNi0xMC41ODctNC45NjItMTYuMDk1LTYuODEtMS4zMjktLjQ2NS0yLjY4LS45Ny0zLjg5My0xLjY5LTEuMDg1LS42NDMtMS40OTItMS45Ni0xLjc0My0zLjExNy0uMTEyLS42MTItLjE4LTEuMjQtLjIxNS0xLjg1NyAzLjk5NC01LjQ0OCA2LjY0NC0xNC4zNCA2LjY0NC0yMS42M0M1MC4xNiAxMy4xNzIgNDMuNzEyIDEwIDM1Ljc2IDEwYy03Ljk1NCAwLTE0LjQgMy4xNjYtMTQuNCAxNC41NDMgMCA3LjU1MSAyLjg0IDE2LjgxNCA3LjA3NSAyMi4xOTUtLjAzOS40MjQtLjA5Ljg1LS4xNjYgMS4yNzItLjI1MiAxLjE1Ny0uNjU5IDIuNDUtMS43NDIgMy4wOTItMS4yMTYuNzItMi41NjYgMS4xNzctMy44OTUgMS42NC01LjUwOSAxLjg0OS0xMS4yMDYgMy40NzgtMTYuMDk0IDYuNzE0LTIuNTQyIDEuNjctNC4yNjQgNC43MzItNS4yMTQgNy41NzZDLjM0NiA2OS45ODItLjA1NCA3My42MzguMDA2IDc2LjZoNzEuOTg4Yy4wNi0yLjk2Mi0uMzQtNi42MTctMS4zMTctOS41Njh6IiBtYXNrPSJ1cmwoI2QpIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K&quot;);"></div>
								</div>
							</div>
						<div class="user-info">
							<div class="user-name">
								<span class="name-length"></span><span class="user-type"></span>
							</div>
							<div class="user-id">
								<span class="id-length"></span>
							</div>
						</div>
						<div class="account-setting">
							<button type="button"
								class="btn btn-account-setting btn-secondary">계정설정</button>
						</div></a>
				</div>
				<ul class="underline" style="font-weight: 900; font-size: 1.3rem;">
					<li class="main-menu">커뮤니티 <a role="button"> </a>
					</li>
					<li class="sub-menu-container soomgo-life-activities">
						<a href="${pageContext.request.contextPath}/myBoardListOk.mypage?userId=${userId}" class="sub-menu-list">
							<div class="sub-content">
								<div class="sub-menu">
									<span class="sub-menu-title">숨고생활 작성글</span>
								</div>
							</div>
							<div class="arrow1">
								<span class="right-arrow1"><img
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg"></span>
							</div>
						</a>
					</li>
					<li class="sub-menu-container soomgo-life-activities">
						<a href="${pageContext.request.contextPath}/msg-list" class="sub-menu-list">
							<div class="sub-content">
								<div class="sub-menu">
									<span class="sub-menu-title">숨고생활 쪽지</span>
								</div>
							</div>
							<div class="arrow1">
								<span class="right-arrow1"><img
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg"></span>
							</div>
						</a>
					</li>
				</ul>
			</div>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	const userId = `${userId}`;
	const userType = `${userType}`
	const userInfo = JSON.parse(`${userInfo}`);
	const $userTypeText = $('span.user-type');
	const $userNameText = $('span.name-length');
	const $userEmailText = $('span.id-length');
	console.log(userInfo);

	$userTypeText.prop("innerText", userType == 0 ? '고객님' : '고수님');
	$userNameText.prop("innerText", userInfo.username);
	$userEmailText.prop("innerText", userInfo.userEmail);
</script>
<script src="${pageContext.request.contextPath}/static/js/mypage-jin/mypage-main.js"></script>
</html>