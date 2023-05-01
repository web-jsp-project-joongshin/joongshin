<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/request-board-jym/form.css">
    <title>문의</title>
</head>

<body>
    <div></div>
    <header class="header">
        <!-- 홈화면으로 돌아가는 로고 버튼 -->
        <div class="logo">
            <a href="https://soomgo.com/">
                <img src='new_logo.svg'
                    alt="로고">
            </a>
        </div>
        <!-- 게시글 목록으로 돌아가는 링크-->
        <div class="nav-wrapper">
            <span class="icon-menu"></span>
            <nav class="user-nav" id="user-nav">
                <a title="홈" href="/hc/ko">자주묻는질문</a>
            </nav>
        </div>
    </header>


    <main role="main">
        <div class="container-divider"></div>
        <div class="container">
            <nav class="sub-nav">
                <ol class="breadcrumbs">
                    <li title="자주묻는질문 - 숨고 : 숨은고수"><a href="/hc/ko">자주묻는질문 - 숨고 : 숨은고수</a></li>
                    <li title="문의 등록">문의 등록</li>
                </ol>
                <form role="search" class="search" data-search="" action="/hc/ko/search" accept-charset="UTF-8"
                    method="get">
                    <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMSkiIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iNi42MTEiIGN5PSI2LjYxMSIgcj0iNS44NjEiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im0xNS4yNSAxNS4yNS00LjI0My00LjI0MyIvPgogICAgPC9nPgo8L3N2Zz4K" alt="커뮤니티 검색 아이콘" class="search" id="mag">
                    <input name="utf8" type="hidden" value="✓" autocomplete="off">
                    <input type="search" name="query" id="query" placeholder="검색" aria-label="검색">
                </form>
            </nav>

            <h1>문의 등록</h1>
            <div class="form">
                <form id="reqWrite" class="request-form" name="reqWritePage" data-form-type="request"
                    action="${pageContext.request.contextPath}/reqWriteOk.board" accept-charset="UTF-8" method="post">
                    <input name="utf8" type="hidden" value="✓" autocomplete="off">
                    <!-- <input type="hidden" name="authenticity_token" value="hc:requests:client:x4NRfJjWvQZrLaWzqGxUx2akyeWMEdeNqQFX7JVHy6flsg_HUW8VUPyTwxQH_LmdGvkA_fizxIqNaV2L2IQxtA" data-hc-status="ready"> -->
<!--                     이메일 주소 입력 창 -->
                    <div class="form-field string required request_email">
                        <label for="request_email">문의 태그</label>
                        <input type="text" name="reqType" id="request_email"
                            aria-required="true">
                        <div id="request_email_error" class="notification notification-error notification-inline"></div>
                    </div>
                    
                    <!-- 제목 입력  -->
                    <div class="form-field string  required  request_subject">
                        <label id="request_subject_label" for="request_subject">제목</label>
                        <input type="text" name="reqTitle" id="request_subject" maxlength="150" size="150"
                            aria-required="true" aria-labelledby="request_subject_label">
                        <div id="request_subject_error" class="notification notification-error notification-inline"></div>
                    </div>
                    
                    <div class="suggestion-list" data-hc-class="searchbox" data-hc-suggestion-list="true"></div>
                    <!-- 설명 -->
                    <div class="form-field required  request_description">
                        <label id="request_description_label" for="request_description">설명</label>
                        
                        <textarea type="text" name="reqContent" id="request_description" class="request_description" style="border-radius: 4px;"></textarea>
                        
                        <div id="request_description_error" class="notification notification-error notification-inline"></div>
                        <p id="request_description_hint">요청에 관한 세부 정보를 입력하세요.</p>
                    </div>
                    

                    <!-- 첨부파일 -->
                    <!-- <div class="form-field">
                        <label for="request-attachments">첨부 파일</label>
                        <div id="upload-dropzone" class="upload-dropzone">
                            <input type="file" multiple="true" id="request-attachments" data-fileupload="true"
                                data-dropzone="upload-dropzone" data-error="upload-error"
                                data-create-url="/hc/ko/request_uploads" data-name="request[attachments][]"
                                data-pool="request-attachments-pool" data-delete-confirm-msg=""
                                aria-describedby="upload-error">
                            <span>
                                <a>파일 추가</a> 또는 파일을 여기로 드래그
                            </span>
                        </div>

                        <div id="upload-error" class="notification notification-error notification-inline"
                            style="display: none;">
                            <span data-upload-error-message=""></span>
                        </div>

                        <ul id="request-attachments-pool" class="upload-pool" data-template="upload-template"></ul>

                        <script type="text/html" id="upload-template">

                                  <li class="upload-item" data-upload-item>
                                    <a class="upload-link" target="_blank" data-upload-link></a>
                                    <p class="upload-path" data-upload-path></p>
                                    <p class="upload-path" data-upload-size></p>
                                    <p data-upload-issue class="notification notification-alert notification-inline" aria-hidden="true"></p>
                                    <span class="upload-remove" data-upload-remove></span>
                                    <div class="upload-progress" data-upload-progress></div>
                                    <input type="hidden">
                                  </li>
                                  </script>
                    </div> -->
                    <footer><input type="submit" name="commit" value="제출" onclick="goJoin()"></footer>
                </form>
            </div>
        </div>
    </main>

    <!-- / -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="//static.zdassets.com/hc/assets/ko.29849816fa1a05db5228.js"></script>
    <script src="https://soomgohelp.zendesk.com/auth/v2/host/without_iframe.js"
        data-return-to="https://help.soomgo.com/hc/ko/requests/new" data-locale="ko"></script>
	<script src="../../static/js/request-board-jym/form.js"></script>
  
    <script src="//static.zdassets.com/hc/assets/moment-4ef0d82f9fc65c8a28f659aa3430955f.js"></script>
    <script src="//static.zdassets.com/hc/assets/hc_enduser-72ea9c8e0185dd6c21008a1e827304ff.js"></script>


    <!-- <iframe id="_hjSafeContext_74772397" title="_hjSafeContext" tabindex="-1" aria-hidden="true" src="about:blank"
        style="display: none !important; width: 1px !important; height: 1px !important; opacity: 0 !important; pointer-events: none !important;"></iframe> -->
</body>


</html>