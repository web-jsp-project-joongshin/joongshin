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
    <title>메시지 상세보기</title>
</head>

<body>
    <section data-observe="explanation" class="product-explanation aaa bbb" id="explanation">
        <!-- 주니어 상세정보 -->
        <article class="product-provider" id="product-provider">
            <div class="row provider-overview no-gutters">
	            <span class="provider-name">${userName}</span>
                <!-- share -->
                <div class="share-button-wrapper col-auto"><button type="button"
                        class="btn share-button btn-none"></button></div>
            </div>
        </article>
        <article class="product-description">
            <div class="">
                <div class="line-clamp" style="line-height: 1.71;">
                    <p class="description">
                    	
                    </p>
                </div><button type="button" class="btn border-gray collapse-toggle btn-outline-primary btn-block"
                    style="display: none;"> 더 보기
                </button>
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
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	let message = `${message}`;
</script>
<script src="/static/js/message-jym/detail-msg.js"></script>
</html>