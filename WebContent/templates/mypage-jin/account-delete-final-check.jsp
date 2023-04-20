<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link data-vue-meta="1" rel="icon" type="image/png" sizes="32x32"
	href="https://static.cdn.soomgo.com/static/favicon-32x32.png?webp=1">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<link href="../../static/css/mypage-css-jin/account-delete-final-check.css" rel="stylesheet" type="text/css"/>
</head>
<body>
	<div id="app-body">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >계정 탈퇴</h1>
				<section >
					<article >
						<h3 >숨고 탈퇴 전 꼭 확인해 주세요</h3>
						<div  class="check-list">
							<ol >
								<li >탈퇴시 모든 개인정보가 삭제되며, 구매하신 캐시는 소멸되며
									환불되지 않습니다.</li>
								<li >숨고 이용에 불편이 있어 탈퇴를 고민하신다면,
									support@soomgo.com 또는 <span 
									class="color-teal">1599-5319</span>로 문의 바랍니다.
								</li>
								<li >위 내용을 모두 확인하였고, 탈퇴 완료 시 내용에 동의합니다.</li>
							</ol>
						</div>
					</article>
					<article >
						<h3 >탈퇴 사유</h3>
						<ul  data-testid="delete-answer-section"
							class="answer-section">
							<li  class="answer-item"><div
									 class="radio-group">
									<input  id="radio-text-0" type="radio"
										data-testid="delete-reason-radio-1" value="1"><label
										 for="radio-text-0"><span
										 class="radio"></span><span
										 class="text"> 알림이 너무 많이 와요 </span></label>
									
								</div></li>
							<li  class="answer-item"><div
									 class="radio-group">
									<input  id="radio-text-1" type="radio"
										data-testid="delete-reason-radio-2" value="2"><label
										 for="radio-text-1"><span
										 class="radio"></span><span
										 class="text"> 사용하기 어려워요 </span></label>
									
								</div></li>
							<li  class="answer-item"><div
									 class="radio-group">
									<input  id="radio-text-2" type="radio"
										data-testid="delete-reason-radio-3" value="3"><label
										 for="radio-text-2"><span
										 class="radio"></span><span
										 class="text"> 오류가 많아서 불편해요 </span></label>
									
								</div></li>
							<li  class="answer-item"><div
									 class="radio-group">
									<input  id="radio-text-3" type="radio"
										data-testid="delete-reason-radio-4" value="4"><label
										 for="radio-text-3"><span
										 class="radio"></span><span
										 class="text"> 기타 </span></label>
									
								</div></li>
						</ul>
					</article>
					<div  class="validation-wrapper"
						style="display: none;">
						<span  class="validation-text">탈퇴 사유를 선택해주세요.</span>
					</div>
				</section>
				<footer  class="button-group">
					<a  href="./user-mypage.jsp"
						class="btn router-link-active btn-outline-primary" target="_self">취소</a>
					<button  data-testid="delete-complete-btn"
						type="button" class="btn btn-primary">탈퇴 완료</button>
				</footer>
			</main>
		</div>
	</div>
</body>
</html>