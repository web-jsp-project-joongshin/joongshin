<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<c:set var="userId" value="${sessionScope.userId}"/>

<c:choose>
  <c:when test="${not empty userId}">
    <jsp:include page="../mainpageSeo/loginHeader.jsp"/>
  </c:when>
  <c:otherwise>
    <jsp:include page="../mainpageSeo/header.jsp"/>
  </c:otherwise>
</c:choose>

<!-- 우람님 글쓰기 페이지 가져옴 -->
	<div id="app-body">
		<div class="community-container container">
			<div class="soomgo-life-container">
				<form class="write-post-container" action="${pageContext.request.contextPath}/myResumeChangeOk.mypage" name="updateResume" method="post" enctype="multipart/form-data">
					<div class="attach-file-wrapper">
						<div class="attach-file-area">
							<div class="add-image-icon"></div>
							<div class="custom-file b-form-file file-input" aria-required="false" aria-invalid="false" id="__BVID__95__BV_file_outer_">
								<input type="file" name="uploadFile" multiple="multiple" class="custom-file-input" id="fileInput" style="z-index: -5;"> 
								<label data-browse="Browse" class="custom-file-label" for="__BVID__95">
									<span class="d-block form-file-text" style="pointer-events: none;">No file chosen</span>
								</label>
							</div>
							<span class="image-count sg-text-body2 sg-font-regular"></span>
						</div>
						
					</div>
					<div id="preview"></div>
					<div class="editor-body-container is-bottom-margin">
						<div class="editor-body-wrapper">
							<div class="divider-wrapper">
								<hr class="hr-divider">
							</div>
							<div class="service-region-wrapper">
								<div class="category-select-box">
									<label for="experience">경력:</label>
									<select id="experience" id="userCareerYears", name="userCareerYears">
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
									<textarea name="userResume" id="userResume" class="editor-contents-textarea"><c:out value="${resume.userResume}" /></textarea>
								</span>
								
							</div>
						</div>
					</div>
					<div class="submit-btn-wrapper">
						<button class="submit-btn">수정하기</button>	
					</div>
				</form>
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
	const $experience = $('#experience');
	const $fileInput = $('#fileInput');
	const $preview = $('#preview');
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
	
	$experience.val(`${resume.userCareerYears}`).prop("selected", true);
	
	
    // 카메라 아이콘 클릭 시 파일 업로드 창 열기
    $(".add-image-icon").click(function() {
	    $fileInput.click();
    });
    
	$(document).ready(function() {
		  // 파일 선택 시 미리보기
		  $fileInput.on('change', function() {
		    $preview.empty();
		    var files = $(this)[0].files;
		    for (var i = 0; i < files.length; i++) {
		      var file = files[i];
		      var reader = new FileReader();
		      reader.onload = function(e) {
		        var img = $("<img>");
		        img.attr("src", e.target.result);
		        $preview.append(img);
		      }
		      reader.readAsDataURL(file);
		    }
		})
	});
</script>
</html>