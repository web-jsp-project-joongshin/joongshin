<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../static/css/message-jym/sent-msg.css">
    <title>메시지 상세보기</title>
</head>

<body>
    <section data-observe="explanation" class="product-explanation aaa bbb" id="explanation">
        <!-- 주니어 상세정보 -->
        <article class="product-provider" id="product-provider">
            <div class="row provider-overview no-gutters">
                <div class="col-auto"><img
                        src="https://static.cdn.soomgo.com/upload/profile/0f699422-721b-4850-8645-c72c568dff0f.png?h=160&amp;w=160"
                        alt="Joy" class="provider-profile"></div>
                <div class="col">
	                <span class="provider-name">${message.userName}</span>
                </div>
                <!-- export 버튼 -->
                <div class="share-button-wrapper col-auto"><button type="button"
                        class="btn share-button btn-none"></button></div>
            </div>
            <!---->
            <div class="row provider-process-type no-gutters"><span class="col-auto">작업방식</span><span
                    class="col-auto">비대면</span></div>
        </article>
        <article class="product-description">
            <div class="">
                <div class="line-clamp" style="line-height: 1.71;">
                    <p class="description">
						${message.messageContents}
                    </p>
                </div><button type="button" class="btn border-gray collapse-toggle btn-outline-primary btn-block"
                    style="display: none;"> 더 보기
                </button>
            </div>
        </article>
        <article class="product-description-images">
            <div class="height-clamp hide-less" style="--hc-gradient-height:120px; --hc-height:464px;">
                <div><img src="https://static.cdn.soomgo.com/upload/market/b483d451-f647-46f7-91c3-fb157362de1c.jpg"
                        alt="상품 이미지" class="img-fluid w-100"
                        data-exthumbimage="https://static.cdn.soomgo.com/upload/market/b483d451-f647-46f7-91c3-fb157362de1c.jpg?h=160&amp;w=160"
                        data-src="https://static.cdn.soomgo.com/upload/market/b483d451-f647-46f7-91c3-fb157362de1c.jpg"
                        role="button"><img
                        src="https://static.cdn.soomgo.com/upload/market/549796bb-8311-4669-9701-b6b5ed593daf.jpg"
                        alt="상품 이미지" class="img-fluid w-100"
                        data-exthumbimage="https://static.cdn.soomgo.com/upload/market/549796bb-8311-4669-9701-b6b5ed593daf.jpg?h=160&amp;w=160"
                        data-src="https://static.cdn.soomgo.com/upload/market/549796bb-8311-4669-9701-b6b5ed593daf.jpg"
                        role="button"><img
                        src="data:image/svg+xml;charset=UTF-8,%3Csvg%20width%3D%221%22%20height%3D%221%22%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20%25%7Bw%7D%20%25%7Bh%7D%22%20preserveAspectRatio%3D%22none%22%3E%3Crect%20width%3D%22100%25%22%20height%3D%22100%25%22%20style%3D%22fill%3A%23f8f8f8%3B%22%3E%3C%2Frect%3E%3C%2Fsvg%3E"
                        alt="상품 이미지" width="1" height="1" class="img-fluid w-100"
                        data-exthumbimage="https://static.cdn.soomgo.com/upload/market/6a20536b-9219-4cf9-9027-7c8658b1467b.jpg?h=160&amp;w=160"
                        data-src="https://static.cdn.soomgo.com/upload/market/6a20536b-9219-4cf9-9027-7c8658b1467b.jpg"
                        role="button"></div>

            </div>
        </article>
    </section>
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
	const message = `${message}`;
</script>
<script src="../../static/js/message-jym/detail-msg.js"></script>
</html>