<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link data-vue-meta="1" rel="icon" type="image/png" sizes="32x32"
	href="https://static.cdn.soomgo.com/static/favicon-32x32.png?webp=1">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<link href="../../static/css/mypage-css-jin/account-delete-modal.css" rel="stylesheet" type="text/css"/>

</head>
<body>
	<div class="swal2-container swal2-center sg-swal swal2-shown"
		style="overflow-y: auto;">
		<div aria-labelledby="swal2-title" aria-describedby="swal2-content"
			class="swal2-popup swal2-modal swal2-show" tabindex="-1"
			role="dialog" aria-live="assertive" aria-modal="true"
			style="width: 320px; display: flex;">
			<div class="swal2-header">
				<ul class="swal2-progress-steps" style="display: none;"></ul>
				<div class="swal2-icon swal2-error" style="display: none;">
					<span class="swal2-x-mark"><span
						class="swal2-x-mark-line-left"></span><span
						class="swal2-x-mark-line-right"></span></span>
				</div>
				<div class="swal2-icon swal2-question" style="display: none;"></div>
				<div class="swal2-icon swal2-warning" style="display: none;"></div>
				<div class="swal2-icon swal2-info" style="display: none;"></div>
				<div class="swal2-icon swal2-success" style="display: none;">
					<div class="swal2-success-circular-line-left"></div>
					<span class="swal2-success-line-tip"></span> <span
						class="swal2-success-line-long"></span>
					<div class="swal2-success-ring"></div>
					<div class="swal2-success-fix"></div>
					<div class="swal2-success-circular-line-right"></div>
				</div>
				<img class="swal2-image" style="display: none;">
				<h2 class="swal2-title" id="swal2-title" style="display: flex;">본인인증</h2>
				<button type="button" class="swal2-close"
					aria-label="Close this dialog" style="display: none;">×</button>
			</div>
			<div class="swal2-content">
				<div id="swal2-content" style="display: block;">안전한 고수님의 활동을
					위해 휴대폰 본인인증이 필요합니다.</div>
				<input class="swal2-input" style="display: none;"><input
					type="file" class="swal2-file" style="display: none;">
				<div class="swal2-range" style="display: none;">
					<input type="range">
					<output></output>
				</div>
				<select class="swal2-select" style="display: none;"></select>
				<div class="swal2-radio" style="display: none;"></div>
				<label for="swal2-checkbox" class="swal2-checkbox"
					style="display: none;"><input type="checkbox"><span
					class="swal2-label"></span></label>
				<textarea class="swal2-textarea" style="display: none;"></textarea>
				<div class="swal2-validation-message" id="swal2-validation-message"></div>
			</div>
			<div class="swal2-actions">
				<button type="button" class="swal2-confirm btn" aria-label=""
					style="display: inline-block;">본인 인증하기</button>
				<button type="button" class="swal2-cancel btn" aria-label=""
					style="display: inline-block;">취소</button>
			</div>
			<div class="swal2-footer" style="display: none;"></div>
		</div>
	</div>
</body>
</html>