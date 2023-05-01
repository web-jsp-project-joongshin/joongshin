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
	<!-- modal -->
	<!--<div class="modal-dialog modal-sm modal-dialog-centered">
		<span tabindex="0"></span>
			<div id="__BVID__149___BV_modal_content_" class="modal-content">
				<header id="__BVID__149___BV_modal_header_" class="modal-header">
					<h5 id="__BVID__149___BV_modal_title_" class="modal-title">공유하기</h5>
					<button type="button" aria-label="Close" class="close">×</button>
				</header>
				<div id="__BVID__149___BV_modal_body_" class="modal-body">
					<ul class="social-share-buttons list-inline">
						<li class="list-inline-item">
							<button title="링크 복사"
								type="button" class="btn btn-link url">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iI0ZGRiIgZmlsbC1ydWxlPSJub256ZXJvIj4KICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICA8Zz4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTQuMjI0IDEyYzAtMS42NDIgMS4zMzQtMi45NzYgMi45NzYtMi45NzZoMy44NFY3LjJINy4yYy0yLjY1IDAtNC44IDIuMTUtNC44IDQuOHMyLjE1IDQuOCA0LjggNC44aDMuODR2LTEuODI0SDcuMmMtMS42NDIgMC0yLjk3Ni0xLjMzNC0yLjk3Ni0yLjk3NnptMy45MzYuOTZoNy42OHYtMS45Mkg4LjE2djEuOTJ6TTE2LjggNy4yaC0zLjg0djEuODI0aDMuODRjMS42NDIgMCAyLjk3NiAxLjMzNCAyLjk3NiAyLjk3NnMtMS4zMzQgMi45NzYtMi45NzYgMi45NzZoLTMuODRWMTYuOGgzLjg0YzIuNjUgMCA0LjgtMi4xNSA0LjgtNC44cy0yLjE1LTQuOC00LjgtNC44eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTQ4OS4wMDAwMDAsIC02MDMuMDAwMDAwKSB0cmFuc2xhdGUoNDQ1LjAwMDAwMCwgNDg3LjAwMDAwMCkgdHJhbnNsYXRlKDM2LjAwMDAwMCwgMTA4LjAwMDAwMCkgdHJhbnNsYXRlKDguMDAwMDAwLCA4LjAwMDAwMCkgdHJhbnNsYXRlKDEyLjAwMDAwMCwgMTIuMDAwMDAwKSByb3RhdGUoLTQ1LjAwMDAwMCkgdHJhbnNsYXRlKC0xMi4wMDAwMDAsIC0xMi4wMDAwMDApIi8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
									alt="링크 복사 공유">
							</button>
						</li>
						<li class="list-inline-item">
							<button title="카카오톡 공유"
								type="button" class="btn btn-link kakao">
								<img
									src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgZmlsbD0iIzA1MDEwMSI+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTEyIDRjLTQuOTcgMC05IDMuMTMtOSA2Ljk4OSAwIDIuNCAxLjU1OCA0LjUxNiAzLjkzMiA1Ljc3NWwtLjk5OSAzLjY2N2MtLjA4OC4zMjQuMjguNTgyLjU2NC4zOTRsNC4zNzYtMi45MDRjLjM3LjAzNi43NDUuMDU3IDEuMTI3LjA1NyA0Ljk3IDAgOS0zLjEzIDktNi45OSAwLTMuODU5LTQuMDMtNi45ODgtOS02Ljk4OCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTY1Ny4wMDAwMDAsIC02MDMuMDAwMDAwKSB0cmFuc2xhdGUoNDQ1LjAwMDAwMCwgNDg3LjAwMDAwMCkgdHJhbnNsYXRlKDM2LjAwMDAwMCwgMTA4LjAwMDAwMCkgdHJhbnNsYXRlKDE2OC4wMDAwMDAsIDAuMDAwMDAwKSB0cmFuc2xhdGUoOC4wMDAwMDAsIDguMDAwMDAwKSIvPgogICAgICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
									alt="카카오톡 공유 공유">
							</button>
						</li>
					</ul>
				</div>
				
			</div>
		<span tabindex="0"></span>
	</div>-->
	<!-- modal end -->
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