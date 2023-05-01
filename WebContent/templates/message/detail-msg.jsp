<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="/static/css/message-jym/sent-msg.css">
    <link rel="stylesheet" type="text/css" href="/static/css/junior-board/modal.css">
    <title>메시지 상세보기</title>
</head>

<body>
	<%@ include file="../mainpageSeo/loginHeader.jsp" %>
    <section data-observe="explanation" class="product-explanation aaa bbb" id="explanation">
        <!-- 주니어 상세정보 -->
        <article class="product-provider" id="product-provider">
            <div class="row provider-overview no-gutters">
            	<div class="profile col-auto">
					<div class="user-profile-picture">
						<div style="background-image: url(/WEB-INF/upload/user/`${userProfileImage}`);">
						</div>
					</div>
				</div>
	            <span class="provider-name">${userName}</span>
                <!-- reply -->
               	<button type="button" class="h-btn pro-signup-h-btn right-section-item h-btn-primary h-btn-primary2 reply">
					<span>답장</span>
				</button>
            </div>
        </article>
        <article class="product-description">
            <div class="">
                <div class="line-clamp" style="line-height: 1.71;">
                    <p class="description">
                    	
                    </p>
                </div>
            </div>
        </article>
        <article class="product-description-images">
            <div class="height-clamp hide-less" style="--hc-gradient-height:120px; --hc-height:464px;">
                <div>
                <!-- imgs -->
                </div>
            </div>
        </article>
    </section>
    <%@ include file="../mainpageSeo/footer.jsp" %>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	let message = `${message}`;
</script>
<script src="/static/js/message-jym/detail-msg.js"></script>
</html>