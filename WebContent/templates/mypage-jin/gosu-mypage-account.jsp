<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">


<link href="../../static/css/mypage-css-jin/profile-change-modal.css"
	rel="stylesheet" type="text/css" />
<link href="../../static/css/mypage-css-jin/account-delete-modal.css"
	rel="stylesheet" type="text/css" />
<link href="../../static/css/mypage-css-jin/user-mypage-account.css"
	rel="stylesheet" type="text/css" />

</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>
<!-- 일반 유저 계정설정에서 이력서만 추가됨 -->
	<div id="app-body">
		<div class="container container-md">
			<main class="account-info-container">
				<h1>계정 설정</h1>
				<div class="profile-image" id="modal_btn">
					<div class="user-profile-picture h-100">
						<div data-name="image" class="btn"
							data-src="https://dmmj3ljielax6.cloudfront.netNone?h=320&amp;w=320"
							lazy="error"
							style="background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNzIiIGhlaWdodD0iNzIiIHZpZXdCb3g9IjAgMCA3MiA3MiI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTAgMGg3MnY3MkgweiIvPgogICAgICAgIDxwYXRoIGlkPSJjIiBkPSJNMCAwaDcydjcySDB6Ii8+CiAgICA8L2RlZnM+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxtYXNrIGlkPSJiIiBmaWxsPSIjZmZmIj4KICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYSIvPgogICAgICAgIDwvbWFzaz4KICAgICAgICA8ZyBtYXNrPSJ1cmwoI2IpIj4KICAgICAgICAgICAgPG1hc2sgaWQ9ImQiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYyIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDx1c2UgZmlsbD0iI0YyRjJGMiIgeGxpbms6aHJlZj0iI2MiLz4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI0UxRTFFMSIgZD0iTTcwLjY3NyA2Ny4wMzJjLS45NTEtMi44NDQtMi42NzQtNS43MTItNS4yMTUtNy4zODEtNC44OS0zLjIzNi0xMC41ODctNC45NjItMTYuMDk1LTYuODEtMS4zMjktLjQ2NS0yLjY4LS45Ny0zLjg5My0xLjY5LTEuMDg1LS42NDMtMS40OTItMS45Ni0xLjc0My0zLjExNy0uMTEyLS42MTItLjE4LTEuMjQtLjIxNS0xLjg1NyAzLjk5NC01LjQ0OCA2LjY0NC0xNC4zNCA2LjY0NC0yMS42M0M1MC4xNiAxMy4xNzIgNDMuNzEyIDEwIDM1Ljc2IDEwYy03Ljk1NCAwLTE0LjQgMy4xNjYtMTQuNCAxNC41NDMgMCA3LjU1MSAyLjg0IDE2LjgxNCA3LjA3NSAyMi4xOTUtLjAzOS40MjQtLjA5Ljg1LS4xNjYgMS4yNzItLjI1MiAxLjE1Ny0uNjU5IDIuNDUtMS43NDIgMy4wOTItMS4yMTYuNzItMi41NjYgMS4xNzctMy44OTUgMS42NC01LjUwOSAxLjg0OS0xMS4yMDYgMy40NzgtMTYuMDk0IDYuNzE0LTIuNTQyIDEuNjctNC4yNjQgNC43MzItNS4yMTQgNy41NzZDLjM0NiA2OS45ODItLjA1NCA3My42MzguMDA2IDc2LjZoNzEuOTg4Yy4wNi0yLjk2Mi0uMzQtNi42MTctMS4zMTctOS41Njh6IiBtYXNrPSJ1cmwoI2QpIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K&quot;);"></div>
					</div>
					<img data-v-13e78340=""
						src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIzMiIgaGVpZ2h0PSIzMiIgdmlld0JveD0iMCAwIDMyIDMyIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTYwMyAtMjg2KSB0cmFuc2xhdGUoNTM1IDIxOCkgdHJhbnNsYXRlKDY4IDY4KSB0cmFuc2xhdGUoMSAxKSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjaXJjbGUgY3g9IjE1IiBjeT0iMTUiIHI9IjE1IiBmaWxsPSIjRkZGIiBzdHJva2U9IiNGMkYyRjIiIHN0cm9rZS13aWR0aD0iMS41Ii8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwxOCAwIDE4IDE4IDAgMTh6IiBvcGFjaXR5PSIuNCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoNiA2KSIvPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZmlsbD0iI0I1QjVCNSIgZmlsbC1ydWxlPSJub256ZXJvIiBkPSJNMTEuNCAybDEuNDY0IDEuNTU2SDE1LjRjLjg4IDAgMS42LjcgMS42IDEuNTU1djkuMzMzQzE3IDE1LjMgMTYuMjggMTYgMTUuNCAxNkgyLjZjLS44OCAwLTEuNi0uNy0xLjYtMS41NTZWNS4xMTFjMC0uODU1LjcyLTEuNTU1IDEuNi0xLjU1NWgyLjUzNkw2LjYgMmg0Ljh6TTkgN2MtMS42NTYgMC0zIDEuMzQ0LTMgM3MxLjM0NCAzIDMgMyAzLTEuMzQ0IDMtMy0xLjM0NC0zLTMtM3oiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDYgNikiLz4KICAgICAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
						class="camera-icon">
				</div>




				<!-- 이미지 변경 모달 -->
				<div id="__BVID__420___BV_modal_outer_" class="modal"
					style="position: absolute; z-index: 1040;">
					<div id="__BVID__420" role="dialog"
						aria-labelledby="__BVID__420___BV_modal_title_"
						aria-describedby="__BVID__420___BV_modal_body_"
						class="modal fade show" aria-modal="true" style="display: block;">
						<div
							class="modal-dialog modal-md modal-dialog-centered modal-select-profile-image">
							<span tabindex="0"></span>
							<div id="__BVID__420___BV_modal_content_" tabindex="-1"
								class="modal-content">
								<div class="profile-image">
									<div class="user-profile-picture h-100">
										<div data-name="image" class="image-container"
											data-src="https://dmmj3ljielax6.cloudfront.netNone?h=320&amp;w=320"
											lazy="error"
											style="background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNzIiIGhlaWdodD0iNzIiIHZpZXdCb3g9IjAgMCA3MiA3MiI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTAgMGg3MnY3MkgweiIvPgogICAgICAgIDxwYXRoIGlkPSJjIiBkPSJNMCAwaDcydjcySDB6Ii8+CiAgICA8L2RlZnM+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxtYXNrIGlkPSJiIiBmaWxsPSIjZmZmIj4KICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYSIvPgogICAgICAgIDwvbWFzaz4KICAgICAgICA8ZyBtYXNrPSJ1cmwoI2IpIj4KICAgICAgICAgICAgPG1hc2sgaWQ9ImQiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYyIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDx1c2UgZmlsbD0iI0YyRjJGMiIgeGxpbms6aHJlZj0iI2MiLz4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI0UxRTFFMSIgZD0iTTcwLjY3NyA2Ny4wMzJjLS45NTEtMi44NDQtMi42NzQtNS43MTItNS4yMTUtNy4zODEtNC44OS0zLjIzNi0xMC41ODctNC45NjItMTYuMDk1LTYuODEtMS4zMjktLjQ2NS0yLjY4LS45Ny0zLjg5My0xLjY5LTEuMDg1LS42NDMtMS40OTItMS45Ni0xLjc0My0zLjExNy0uMTEyLS42MTItLjE4LTEuMjQtLjIxNS0xLjg1NyAzLjk5NC01LjQ0OCA2LjY0NC0xNC4zNCA2LjY0NC0yMS42M0M1MC4xNiAxMy4xNzIgNDMuNzEyIDEwIDM1Ljc2IDEwYy03Ljk1NCAwLTE0LjQgMy4xNjYtMTQuNCAxNC41NDMgMCA3LjU1MSAyLjg0IDE2LjgxNCA3LjA3NSAyMi4xOTUtLjAzOS40MjQtLjA5Ljg1LS4xNjYgMS4yNzItLjI1MiAxLjE1Ny0uNjU5IDIuNDUtMS43NDIgMy4wOTItMS4yMTYuNzItMi41NjYgMS4xNzctMy44OTUgMS42NC01LjUwOSAxLjg0OS0xMS4yMDYgMy40NzgtMTYuMDk0IDYuNzE0LTIuNTQyIDEuNjctNC4yNjQgNC43MzItNS4yMTQgNy41NzZDLjM0NiA2OS45ODItLjA1NCA3My42MzguMDA2IDc2LjZoNzEuOTg4Yy4wNi0yLjk2Mi0uMzQtNi42MTctMS4zMTctOS41Njh6IiBtYXNrPSJ1cmwoI2QpIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K&quot;);"></div>
									</div>

								</div>
								<div id="__BVID__420___BV_modal_body_" class="modal-body">
									<button type="button"
										class="btn file-input btn-primary btn-block">
										사진 등록하기
										<div class="custom-file b-form-file file"
											id="__BVID__424__BV_file_outer_">
											<input type="file" accept="jpg,jpeg,png,gif,bmp,jpeg2000"
												class="custom-file-input" id="__BVID__424"
												style="z-index: -5;"> <label data-browse="Browse"
												class="custom-file-label" for="__BVID__424"> <span
												class="d-block form-file-text" style="pointer-events: none;">No
													file chosen</span></label>
										</div>
									</button>
									<button type="button" onclick="defaultImageBtn()"
										class="btn btn-primary btn-block">기본 이미지로 등록</button>
									<div class="close"
										style="margin-top: 15px; margin-left: 105px;">취소</div>
								</div>

							</div>
							<span tabindex="0"></span>
						</div>
					</div>
					<div id="__BVID__420___BV_modal_backdrop_" class="modal-backdrop"></div>
				</div>





				<section>

					<ul class="account-info">
						<div class="item">
							<a href="./name-change.jsp" class="item-container"><div
									class="item">
									<div class="item-title">이름</div>
									<div class="item-info">kimjin</div>
								</div>
								<div>
									<img
										src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div></a>
							</li> <a href="./email-change.jsp" class="item-container"><div
									class="item">
									<div class="item-title">이메일</div>
									<div class="item-info">
										<span>kimjin9822@naver.com</span>
									</div>
								</div>
								<div>
									<img
										src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div></a> <a href="./password-change.jsp" class="item-container"><div
									class="item">
									<div class="item-title">비밀번호</div>
									<div class="item-info">•••••••</div>
								</div>
								<div>

									<img
										src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
								</div></a>
					</ul>
		<ul data-testid="resume-account" class="resume-account">
						<a href="./resume-change.jsp" class="item-container">
							<div data-testid="resume-account-text" class="item">이력서 수정</div>
							<div>
								<img
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</a>


						<a href="./account-delete-final-check.jsp" class="item-container">
							<div data-testid="delete-account-text" class="item">계정 탈퇴</div>
							<div>
								<img
									src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</a>

					</ul>


				</section>

			</main>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>


<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<!-- 프로필 모달 이미지 변경-->
<script type="text/javascript">
//Modal을 가져옵니다.
var modals = document.getElementsByClassName("modal");
// Modal을 띄우는 클래스 이름을 가져옵니다.
var btns = document.getElementsByClassName("btn");
// Modal을 닫는 close 클래스를 가져옵니다.
var spanes = document.getElementsByClassName("close");
var funcs = [];
 
// Modal을 띄우고 닫는 클릭 이벤트를 정의한 함수
function Modal(num) {
  return function() {
    // 해당 클래스의 내용을 클릭하면 Modal을 띄웁니다.
    btns[num].onclick =  function() {
        modals[num].style.display = "block";
        console.log(num);
    };
 
    // <span> 태그(X 버튼)를 클릭하면 Modal이 닫습니다.
    spanes[num].onclick = function() {
        modals[num].style.display = "none";
    };
  };
}
 
// 원하는 Modal 수만큼 Modal 함수를 호출해서 funcs 함수에 정의합니다.
for(var i = 0; i < btns.length; i++) {
  funcs[i] = Modal(i);
}
 
// 원하는 Modal 수만큼 funcs 함수를 호출합니다.
for(var j = 0; j < btns.length; j++) {
  funcs[j]();
}
 
// Modal 영역 밖을 클릭하면 Modal을 닫습니다.
window.onclick = function(event) {
  if (event.target.className == "modal") {
      event.target.style.display = "none";
  }
};

	</script>
</html>