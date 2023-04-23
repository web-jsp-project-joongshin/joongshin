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
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
	
	
<link href="../../static/css/mypage-css-jin/account-delete-final-check.css" rel="stylesheet" type="text/css" />
<link href="../../static/css/mypage-css-jin/header-footer.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>

	<div id="app-body">
		<div class="container container-md">
			<main class="account-info-container">
				<h1>계정 탈퇴</h1>
				<section>
					<article>
						<h3>숨고 탈퇴 전 꼭 확인해 주세요</h3>
						<div class="check-list">
							<ol>
								<li>탈퇴시 모든 개인정보가 삭제되며, 구매하신 캐시는 소멸되며 환불되지 않습니다.</li>
								<li>숨고 이용에 불편이 있어 탈퇴를 고민하신다면, support@soomgo.com 또는 <span
									class="color-teal">1599-5319</span>로 문의 바랍니다.
								</li>
								<li>위 내용을 모두 확인하였고, 탈퇴 완료 시 내용에 동의합니다.</li>
							</ol>
						</div>
					</article>

					<article>
						<h3>탈퇴 사유</h3>
						<ul data-testid="delete-answer-section" class="answer-section">
							<li class="answer-item" style="border: 0px;"><div class="radio-group">
									<div id="nav">
										<label class="check"
										for="radio-text-0"><input type="radio" name="radio-button" id="radio-button-1">
										<span class="text"> 알림이 너무 많이 와요 </span></label>
									<div id="hidden-div-1" class="description-wrapper" style="display: none;">
										<span data-v-30a01857="">너무 많은 알림을 받는다면, <span
											class="color-teal">알림설정</span>에서 알림 제한 시간을 정할 수 있어요.
										</span>
									</div>
								</div></li>
							<li class="answer-item menu" style="border: 0px;"><div class="radio-group">
										<label class="check" for="radio-text-0"><input type="radio" name="radio-button" id="radio-button-2">
										<span class="radio"></span><span class="text"> 사용하기 어려워요 </span></label>
									<div id="hidden-div-2" class="description-wrapper" style="display: none;">
										<span data-v-30a01857="">어떤 부분에서 사용이 어려우신가요?<br> 
										<span class="color-teal">고객센터
										</span>에 문의해주시면 자세하게 알려드릴게요.
										</span>
									</div>
								</div></li>
							<li class="answer-item menu" style="border: 0px;"><div class="radio-group">
										<label class="check"
										for="radio-text-0"><input type="radio" name="radio-button" id="radio-button-3">
											</span><span class="text"> 오류가 많아서 불편해요 </span></label>
									<div id="hidden-div-3" class="description-wrapper" style="display: none;">
										<span data-v-30a01857="">불편사항을 <span class="color-teal">고객센터
										</span>에 알려주시면 최대한 빨리 해결해드릴게요.
										</span>
									</div>
								</div></li>
							<li class="answer-item menu" style="border: 0px;"><div class="radio-group">
									<label class="check"
										for="radio-text-0"><input type="radio" name="radio-button" id="radio-button-4">
											<span class="radio"></span><span
										class="text"> 기타 </span></label>
									<div id="hidden-div-4" class="description-wrapper" style="display: none;">
										<textarea data-v-30a01857="" name="accountDeleteReason"
											placeholder="떠나게 되어 아쉽네요. 이유를 자세히 알려주실 수 있나요?" rows="2"
											wrap="soft" class="textarea form-control"
											data-testid="account-delete-reason"
											data-vv-validate-on="blur" maxlength="500"
											aria-invalid="false" id="__BVID__423"></textarea>
										<div data-v-30a01857="" class="description-wrapper"
											style="display: none;">
											<span data-v-30a01857="" class="validation-text"></span>
										</div>
										<div data-v-30a01857="" class="textarea-length">
										</div>
									</div>
								</div></li>
						</ul>
					</article>
					<div class="validation-wrapper" style="display: none;">
						<span class="validation-text">탈퇴 사유를 선택해주세요.</span>
					</div>
				</section>
				<footer class="button-group">
					<a href="javascript:history.go(-1)"
						class="btn router-link-active btn-outline-primary" target="_self" style="color: #6FB6C0;" >취소</a>
					<button data-testid="delete-complete-btn" type="button"
						class="btn btn-primary">탈퇴 완료</button>
				</footer>
			</main>
		</div>
	</div>

</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script src="../../static/js/mypage-js-jin/account-delete-check-radio-button.js"></script>

<jsp:include page="../mainpageSeo/footer.jsp"/>
</html>