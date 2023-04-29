<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="../../static/image/logo/logo.png" rel="shortcut icon" type="image/x-icon">
<title>중고신입 이력서 수정 페이지</title>
<!--폰트 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">


<link href="../../static/css/mypage-css-jin/resume-change.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<%@ include file="../mainpageSeo/header.jsp" %>
<!-- 우람님 글쓰기 페이지 가져옴 -->
	<div id="app-body">
		<div class="community-container container">
			<div class="soomgo-life-container">
				<section class="write-post-container">
					<div class="attach-file-wrapper">
						<div class="attach-file-area">
							<div class="add-image-icon"></div>
							<div class="custom-file b-form-file file-input" aria-required="false" aria-invalid="false" id="__BVID__95__BV_file_outer_">
								<input type="file" name="uploadFile" multiple="multiple" class="custom-file-input" id="__BVID__95" style="z-index: -5;"> 
								<label data-browse="Browse" class="custom-file-label" for="__BVID__95">
									<span class="d-block form-file-text" style="pointer-events: none;">No file chosen</span>
								</label>
							</div>
							<span class="image-count sg-text-body2 sg-font-regular"></span>
						</div>
					</div>
					<div class="editor-body-container is-bottom-margin">
						<div class="editor-body-wrapper">
							<div class="divider-wrapper">
								<hr class="hr-divider">
							</div>
							<div class="service-region-wrapper">
								<div class="category-select-box">
									<label for="experience">경력:</label>
									<select id="experience">
										<option value="0">0년</option>
										<option value="1">1년</option>
										<option value="2">2년</option>
										<option value="3">3년 이상</option>
									</select>
								</div>
							</div>
							<div class="divider-wrapper">
								<hr class="hr-divider">
							</div>
							<div class="divider-wrapper">
								<hr class="hr-divider">
							</div>
							<div class="editor-contents">
								<span class="sg-text-body2 sg-font-regular sg-text-gray-900">
									<textarea name="post-content" class="editor-contents-textarea"></textarea>
								</span>
								<span class="editor-contents-textarea-placeholder sg-text-body2 sg-font-regular sg-text-gray-500">
									고객이 궁금해하는 요청 서비스 정보나 고수님의 전문성을 보여주는 글을 작성해 보세요.
									글을 통해 고수님의 지정요청을 높일 수 있어요!
									주제에 맞지 않는 글이나 커뮤니티 이용정책에 위배되어 일정 수 이상 신고를 받는 경우 글이 숨김 및 삭제될 수 있습니다.
								</span>
							</div>
						</div>
					</div>
					<div class="submit-btn-wrapper">
						<button type="button" class="submit-btn">수정하기</button>	
					</div>
				</section>
			</div>
		</div>
	</div>

</body>
<jsp:include page="../mainpageSeo/footer.jsp"/>
<script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
<script>
	const $textArea = $("textarea");
	const $placeholder = $(".editor-contents-textarea-placeholder");
	const $imageCount = $('.image-count');
	var count = 0;
	
	$(document).ready(function() {
		$textArea.on('input', function() {
			if($textArea.val()) {
				$placeholder.css('display', 'none');
			} else {
				$placeholder.css('display', 'inline-block');
			}
		});
	});
	
	$imageCount.prop('innerText', count+"/5");
	
	
</script>
</html>