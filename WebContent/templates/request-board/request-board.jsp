<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../static/css/request-board-jym/request-board.css">
    <title>숨고</title>
</head>

<body>
    <div id="app" class="webp" data-is-loaded="true">
        <!-- 헤더 부분 -->
        <header id="app-header" class="global-header">
            <div class="global-naviation-bar">
                <section class="d-none d-lg-block d-xl-block">
                    <div class="desktop-header">
                        <!-- 왼쪽 해더 부분, 서비스요청/고수찾기/마켓/커뮤니티 -->
                        <div class="left-section">
                            <div class="logo">
                                <a href="/?from=logo" class="router-link-active">
                                    <img src="https://assets.cdn.soomgo.com/icons/icon-navi-logo.svg" alt="숨고, 숨은고수">
                                </a>
                            </div>
                            <nav>
                                <ul class="nav-list">
                                    <li class="nav-item left-section-item">
                                        <a href="/category-home?from=web_gnb" class="gnb-link"><span>서비스요청</span></a>
                                    </li>
                                    <li class="nav-item left-section-item"><a href="/search/pro?from=web_gnb"
                                            class="gnb-link"><span>고수찾기</span></a>
                                    </li>
                                    <li class="nav-item left-section-item"><a href="/ip/products" class="gnb-link"><span
                                                data-v-5f10666f="">마켓</span></a></li>
                                    <li class="nav-item left-section-item"><a
                                            href="/community/soomgo-life/?from=web_gnb"
                                            class="gnb-link router-link-active"><span>커뮤니티</span></a>
                                    </li>
                                </ul>
                            </nav>
                        </div>

                        <div class="right-section">
                            <!-- 오른쪽 해더 받은요청/바로견적/채팅/프로필 텍스트 -->
                            <nav>
                                <ul class="nav-list">
                                    <li class="nav-item right-section-item show-dot"><a
                                            href="/requests/received?from=gnb" class="gnb-link"><span>받은요청</span></a>
                                        <!---->
                                    </li>
                                    <li class="nav-item right-section-item"><a href="/auto-quote/"
                                            class="gnb-link"><span>바로견적</span></a>
                                        <!---->
                                    </li>
                                    <li class="nav-item right-section-item"><a href="../../templates/message/msg-main-page.jsp"
                                            class="gnb-link"><span>채팅</span></a>
                                        <span class="badge badge-count badge-danger"> 45 </span>
                                    </li>
                                    <li class="nav-item right-section-item"><a href="/profile"
                                            class="gnb-link"><span>프로필</span></a>
                                        <!---->
                                    </li>
                                </ul>
                            </nav>
                            <!---->

                            <!-- 알림 버튼 -->
                            <div class="notification-counter notification-counter right-section-item">
                                <button type="button" class="btn btn-clear btn-none">
                                    <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+OEUwOTAwNEYtQTVEOC00Mzk0LTk0M0UtRDczM0VEOENGOTA5PC90aXRsZT4KICAgIDxnIGlkPSJbaGVyZV0tU29vbWdvLUhvbWUiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSLsm7nqs7XthrUvaGVhZGVyIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTg0My4wMDAwMDAsIC0xNjk2LjAwMDAwMCkiPgogICAgICAgICAgICA8ZyBpZD0ibmF2aWdhdGlvbi93ZWIvbmF2aWdhdGlvbl9wcm92aWRlciIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoODc3LjAwMDAwMCwgMTY3Mi4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxnIGlkPSJpY29uX25hdmlfbm90aWZpY2F0aW9ucyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoOTY2LjAwMDAwMCwgMjQuMDAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9InBhdGgiIHg9IjAiIHk9IjAiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCI+PC9yZWN0PgogICAgICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cC0yIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSg0LjAwMDAwMCwgMy4wMDAwMDApIiBzdHJva2U9IiMyRDJEMkQiIHN0cm9rZS13aWR0aD0iMS41Ij4KICAgICAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTUsMTQuNSBDNSwxNi4xNTY4NTQyIDYuMzQzMTQ1NzUsMTcuNSA4LDE3LjUgQzkuNjU2ODU0MjUsMTcuNSAxMSwxNi4xNTY4NTQyIDExLDE0LjUiIGlkPSJQYXRoIj48L3BhdGg+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik0yLDYgQzIsMi42ODYyOTE1IDQuNjg2MjkxNSw2LjA4NzE4Mzc2ZS0xNiA4LDAgQzExLjMxMzcwODUsLTYuMDg3MTgzNzZlLTE2IDE0LDIuNjg2MjkxNSAxNCw2IEwxNCwxMCBMMTYsMTQgTDAsMTQgTDIsMTAgTDIsNiBaIiBpZD0iQ29tYmluZWQtU2hhcGUiIHN0cm9rZS1saW5lam9pbj0icm91bmQiPjwvcGF0aD4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
                                        alt="알림" class="alarm-image"></button>
                                <!---->
                            </div>
                            <!-- 유저 프로필 정보 버튼 -->
                            <div class="usermenu user-menu right-section-item">
                                <div class="usermenu-button">
                                    <div class="user-profile-picture">
                                        <!-- 유저의 프로필사진 -->
                                        <div data-name="image"
                                            data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile/1bb032e0-80c1-4d77-b09e-8ef19fd0031d.png?h=320&amp;w=320&amp;webp=1"
                                            lazy="loaded"
                                            style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile/1bb032e0-80c1-4d77-b09e-8ef19fd0031d.png?h=320&amp;w=320&amp;webp=1&quot;);">
                                        </div>
                                    </div>
                                    <!-- 화살표 이미지 -->
                                    <img
                                        src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTIiIGhlaWdodD0iMTIiIHZpZXdCb3g9IjAgMCAxMiAxMiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgxMnYxMkgweiIvPgogICAgICAgIDxwYXRoIHN0cm9rZT0iIzg4OCIgc3Ryb2tlLXdpZHRoPSIxLjIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0iTTEwIDQgNiA4IDIgNCIvPgogICAgPC9nPgo8L3N2Zz4K">
                                </div>

                                <!-- drop-down (더보기)-->
                                <div class="usermenu-dropdown" style="display: none;">
                                    <div data-name="user-info">
                                        <h4 data-name="name">문지영 고수님</h4>
                                        <a href="/profile#id_profile_review" class="" data-name="review">
                                            <div class="new-review-average">
                                                <span>
                                                    <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSIwIDAgMTYgMTYiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8IS0tIEdlbmVyYXRvcjogc2tldGNodG9vbCA1Mi4zICg2NzI5NykgLSBodHRwOi8vd3d3LmJvaGVtaWFuY29kaW5nLmNvbS9za2V0Y2ggLS0+CiAgICA8dGl0bGU+QTFEREExN0YtMzc1OS00OTUwLUE3QzEtOUYxMkE4NzdERTE1PC90aXRsZT4KICAgIDxkZXNjPkNyZWF0ZWQgd2l0aCBza2V0Y2h0b29sLjwvZGVzYz4KICAgIDxnIGlkPSJ3ZWIvYXBwL2NvbWJpbmUvcHJvLXByb2ZpbGUiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCI+CiAgICAgICAgPGcgaWQ9IlByb1Byb2ZpbGUvTW9iaWxlV2ViL1B1YmxpYyIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTExMi4wMDAwMDAsIC0yNTcuMDAwMDAwKSIgZmlsbD0iI0ZGRDQzQiIgc3Ryb2tlPSIjRkZENDNCIiBzdHJva2Utd2lkdGg9IjAuNSI+CiAgICAgICAgICAgIDxnIGlkPSJHcm91cC0xMC1Db3B5LTIiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDExMi4wMDAwMDAsIDI1MS4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cC0yLUNvcHkiPgogICAgICAgICAgICAgICAgICAgIDxwb2x5Z29uIGlkPSJpY29uLXN0YXIiIHBvaW50cz0iOCA2IDEwLjQ3MiAxMS4wMDggMTYgMTEuODE2IDEyIDE1LjcxMiAxMi45NDQgMjEuMjE2IDggMTguNjE2IDMuMDU2IDIxLjIxNiA0IDE1LjcxMiAwIDExLjgxNiA1LjUyOCAxMS4wMDgiPjwvcG9seWdvbj4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+"
                                                        alt="평점 아이콘" class="star-icon"> 평점 5.0
                                                </span>
                                                <span " class=" bulkhead"></span>
                                                <span>리뷰 1</span>
                                            </div>
                                        </a>
                                    </div>
                                    <ul data-name="usermenu-control">
                                        <li class="row">
                                            <div class="col">프로필 관리</div>
                                        </li>
                                        <li class="row" style="display: none;">
                                            <div class="col">받은 견적</div>
                                        </li>
                                        <li class="row">
                                            <div class="col">마이페이지 <span class="new-feature-badge"></span></div>
                                        </li>
                                    </ul>
                                    <div data-name="user-type-control"><button type="button"
                                            class="btn btn-secondary btn-sm"><img
                                                src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMyIgaGVpZ2h0PSIxMSI+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJldmVub2RkIiBzdHJva2U9IiMzMjMyMzIiIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgc3Ryb2tlLXdpZHRoPSIxLjIiPjxwYXRoIGQ9Ik0xMiAxLjV2M0g5bS04IDV2LTNoMyIvPjxwYXRoIGQ9Ik0yLjI1NSA0QTQuNSA0LjUgMCAwIDEgOS42OCAyLjMyTDEyIDQuNW0tMTEgMmwyLjMyIDIuMThBNC41IDQuNSAwIDAgMCAxMC43NDUgNyIvPjwvZz48L3N2Zz4=">고객전환</button>
                                    </div>
                                    <div class="logout"><button type="button"
                                            class="btn btn-secondary btn-sm">로그아웃</button></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </header>

        <!-- 바디 -->
        <div id="app-body">
            <div id="container">
                <div id="joongshin-container">
                    <section id="questions" class="questions">

                        <!-- 바디 페이지 헤더 부분 -->
                        <div class="observer-container">
                            <section class="questions-header" id="questions-header">
                                <h1 class="questions-title">문의 게시판</h1>
                                <div>
                                    <div class="write-button-desktop">
                                        <div class="dropdown b-dropdown btn-group">
                                            <!----><button type="button"
                                                class="btn dropdown-toggle btn-primary" style="cursor: pointer;"
                                                onClick="location.href='form.jsp'">글쓰기</button>
                                        </div>
                                    </div>
                                </div>

                            </section>
                        </div>

                        <!-- 카테고리, 지워질 부분 -->
<!--                         <ul class="category">
                            <li id="lifestyle"
                                class="sg-text-subhead4 sg-font-bold lg:sg-text-subhead2 lg:sg-font-bold sg-text-gray-900 selected"
                                data-v-6e81a396="" data-v-433a6418=""><a href="/community/soomgo-life/"
                                    class="link-text router-link-active" data-v-6e81a396=""> 숨고생활 </a></li>
                            <li
                                class="sg-text-body2 sg-font-regular lg:sg-text-body1 lg:sg-font-regular sg-text-gray-400">
                                <a data-v-6e81a396="" href="/community/pro-knowhow/" class="link-text"> 고수의 노하우 </a>
                            </li>
                        </ul>
 -->
                        <div class="questions-layout">

                            <!-- 컨텐트 카테고리 -->
                            <!-- <div id="joongshin-topic-layout">
                                <div id="observer-container">
                                    <section class="topic-filter-section">
                                        <ul class="topic">
                                            <li class="selected fixed"><a href="/community/soomgo-life/all"
                                                    class="topic-link-item router-link-active">
                                                    <div class="icon-wrapper"><img
                                                            src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/634d181f-f6cc-470c-9a1a-cfed6d9c909a.png"
                                                            alt="전체"></div><span class="pointed">전체</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/provider-square"
                                                    class="topic-link-item">
                                                    <div class="icon-wrapper">
                                                        <img src="https://static.cdn.soomgo.com/upload/community/19a869e5-4f37-4732-bddf-588f98137170.png"
                                                            alt="고수광장">
                                                    </div>
                                                    <span class="not-pointed">고수광장</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/qna"
                                                    class="topic-link-item">
                                                    <div class="icon-wrapper"><img
                                                            src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/f1e39209-9357-4412-b962-99a9d62e6cc5.png"
                                                            alt="궁금해요"></div><span class="not-pointed">궁금해요</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/how-much"
                                                    class="topic-link-item">
                                                    <div class="icon-wrapper"><img
                                                            src="https://d2xc1tuir9mfs4.cloudfront.net/upload/community/a283e912-b56e-4310-8fa1-2c619bd0332d.png"
                                                            alt="얼마예요"></div><span class="not-pointed">얼마예요</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/find-provider"
                                                    class="topic-link-item" data-testid="topic-item">
                                                    <div class="icon-wrapper"><img
                                                            src="https://d2xc1tuir9mfs4.cloudfront.net/upload/profile/b3326101-bf1e-4004-8fa1-b5a0724f9e62.png"
                                                            alt="고수찾아요"></div><span class="not-pointed">고수찾아요</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/together"
                                                    class="topic-link-item" data-testid="topic-item">
                                                    <div class="icon-wrapper"><img
                                                            src="https://d2xc1tuir9mfs4.cloudfront.net/upload/profile/ea04ebe5-4787-4b56-99a7-308c6310d972.png"
                                                            alt="함께해요"></div><span class="not-pointed">함께해요</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/provider-news"
                                                    class="topic-link-item" data-testid="topic-item">
                                                    <div class="icon-wrapper"><img
                                                            src="https://d2xc1tuir9mfs4.cloudfront.net/upload/profile/8dbafccb-92f6-4be2-b50c-a4eade43585f.png"
                                                            alt="고수소식"></div><span class="not-pointed">고수소식</span>
                                                </a>
                                            </li>
                                            <li class="fixed"><a href="/community/soomgo-life/soomgo-story"
                                                    class="topic-link-item" data-testid="topic-item">
                                                    <div class="icon-wrapper"><img
                                                            src="https://static.cdn.soomgo.com/upload/community/edf5376e-573c-4eac-8f2f-8608a004089b.png"
                                                            alt="숨고이야기"></div><span class="not-pointed">숨고이야기</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </section>
                                </div>
                            </div>
 -->
                            <!-- 본문 리스트 -->
                            <div class="questions-content-layout">
                                <!-- 문의 게시판 내부 검색창 -->
                                <div class="search-questions d-none">
                                    <form class="search-form">
                                        <div role="group" class="input-group">
                                            <!---->
                                            <div class="input-group-prepend"><img
                                                    src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTgiIGhlaWdodD0iMTgiIHZpZXdCb3g9IjAgMCAxOCAxOCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDEgMSkiIHN0cm9rZT0iI0M1QzVDNSIgc3Ryb2tlLXdpZHRoPSIxLjUiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBjeD0iNi42MTEiIGN5PSI2LjYxMSIgcj0iNS44NjEiLz4KICAgICAgICA8cGF0aCBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im0xNS4yNSAxNS4yNS00LjI0My00LjI0MyIvPgogICAgPC9nPgo8L3N2Zz4K"
                                                    alt="커뮤니티 검색 아이콘" class="search">
                                            </div>
                                            <input type="text" placeholder="키워드와 #태그 모두 검색할 수 있어요." autocomplete="off"
                                                class="search-input form-control" maxlength="15" id="__BVID__4795">
                                            <div class="input-group-append"><img
                                                    src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDMgMykiPgogICAgICAgICAgICA8Y2lyY2xlIGZpbGw9IiNDNUM1QzUiIGN4PSI5IiBjeT0iOSIgcj0iOSIvPgogICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNGRkYiIHN0cm9rZS13aWR0aD0iMS41IiBzdHJva2UtbGluZWNhcD0icm91bmQiIHN0cm9rZS1saW5lam9pbj0icm91bmQiIGQ9Im02IDYgNi4wMDUgNi4wMDZNMTIuMDA1IDYgNiAxMi4wMDYiLz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo="
                                                    alt="검색어 삭제 아이콘" class="reset" style="display: none;">
                                            </div>
                                            <!---->
                                        </div>
                                    </form>
                                </div>
                                <!-- 베너 '지금 가장 뜨거운 숨고픽' -->
                                <section class="curation">
                                    <div class="curation-header">
                                        <h2 class="sg-text-headline sg-font-bold sg-text-gray-900">지금 가장 뜨거운 숨고픽🔥</h2>
                                        <span class="curation-page">1/2</span>
                                    </div>
                                    <!-- 배너 -->
                                    <div class="slick-slider">
                                        <button type="button" data-role="none"
                                            class="slick-arrow slick-prev slick-disabled"
                                            style="display: block;">Previous</button>
                                        <div class="slick-list">
                                            <div class="slick-track"
                                                style="width: 1020px; opacity: 1; transform: translate3d(0px, 0px, 0px);">
                                                <div tabindex="-1" data-index="0"
                                                    class="slick-slide slick-active slick-current"
                                                    style="outline: none; width: 204px;">
                                                    <div><a href="/community/soomgo-life/posts/63db8b3ad1becfebc58891bc-%EC%88%A8%EA%B3%A0%EC%83%9D%ED%99%9C-%EA%B0%80%EC%9D%B4%EB%93%9C%EB%9D%BC%EC%9D%B8---?from=curation"
                                                            class="" data-testid="curation-item" tabindex="-1"
                                                            style="width: 100%; display: inline-block;">
                                                            <div class="curation-item admin-post">
                                                                <p
                                                                    class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
                                                                    공지사항</p>
                                                                <h3
                                                                    class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
                                                                    숨고생활 가이드라인 🤝</h3>
                                                                <p
                                                                    class="user-name sg-text-description sg-font-regular sg-text-white">
                                                                    Soomgo </p>
                                                            </div>
                                                        </a></div>
                                                </div>
                                                <div tabindex="-1" data-index="1" aria-hidden="false"
                                                    class="slick-slide slick-active"
                                                    style="outline: none; width: 204px;">
                                                    <div><a href="/community/soomgo-life/posts/641a7cbf3696545a889f3bc5-%EC%88%A8%EA%B3%A0-50%EB%A7%8C-%EC%BA%90%EC%8B%9C%EC%99%80-%EC%BF%A0%ED%8F%B0-%EB%B0%9B%EC%9C%BC%EC%84%B8%EC%9A%94--?from=curation"
                                                            class="" data-testid="curation-item" tabindex="-1"
                                                            style="width: 100%; display: inline-block;">
                                                            <div class="curation-item admin-post">
                                                                <p
                                                                    class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
                                                                    공지사항</p>
                                                                <h3
                                                                    class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
                                                                    숨고 50만 캐시와 쿠폰
                                                                    받으세요🎁</h3>
                                                                <p
                                                                    class="user-name sg-text-description sg-font-regular sg-text-white">
                                                                    Soomgo </p>
                                                            </div>
                                                        </a></div>
                                                </div>
                                                <div tabindex="-1" data-index="2" aria-hidden="false"
                                                    class="slick-slide slick-active"
                                                    style="outline: none; width: 204px;">
                                                    <div><a href="/community/soomgo-life/posts/643384c0505cb9f47887cdc0---%EC%88%A8%EA%B3%A0-%EC%9D%B8%ED%84%B0%EB%B7%B0-%EC%A3%BC%EC%9D%B8%EA%B3%B5%EC%9D%B4-%EB%90%98%EC%96%B4%EB%B3%B4%EC%84%B8%EC%9A%94-?from=curation"
                                                            class="" data-testid="curation-item" tabindex="-1"
                                                            style="width: 100%; display: inline-block;">
                                                            <div class="curation-item admin-post">
                                                                <p
                                                                    class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
                                                                    공지사항</p>
                                                                <h3
                                                                    class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
                                                                    💌숨고 인터뷰 주인공이
                                                                    되어보세요!</h3>
                                                                <p
                                                                    class="user-name sg-text-description sg-font-regular sg-text-white">
                                                                    Soomgo </p>
                                                            </div>
                                                        </a></div>
                                                </div>
                                                <div tabindex="-1" data-index="3" aria-hidden="true" class="slick-slide"
                                                    style="outline: none; width: 204px;">
                                                    <div><a href="/community/soomgo-life/posts/643982c1a982a333f790f526-%EC%9A%B4%EC%A0%84%EC%97%B0%EC%88%98-%EA%B3%A0%EC%88%98%EB%8B%98-%EC%B0%BE%EC%95%84%EC%9A%94--?from=curation"
                                                            class="" data-testid="curation-item" tabindex="-1"
                                                            style="width: 100%; display: inline-block;">
                                                            <div class="curation-item">
                                                                <p
                                                                    class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
                                                                    고수찾아요</p>
                                                                <h3
                                                                    class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
                                                                    운전연수 고수님 찾아요😊
                                                                </h3>
                                                                <div class="react-items">
                                                                    <p
                                                                        class="view sg-text-description sg-font-regular sg-text-gray-300">
                                                                        297
                                                                    </p>
                                                                    <p
                                                                        class="comment sg-text-description sg-font-regular sg-text-gray-300">
                                                                        8
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </a></div>
                                                </div>
                                                <div tabindex="-1" data-index="4" aria-hidden="true" class="slick-slide"
                                                    style="outline: none; width: 204px;">
                                                    <div><a
                                                            href="/community/soomgo-life/posts/643a44cbf22d78d3e3cce226-%EC%88%A0-%EA%B0%90%EC%A0%95%EA%B0%80%EC%9D%98%EB%A2%B0?from=curation"
                                                            class="" data-testid="curation-item" tabindex="-1"
                                                            style="width: 100%; display: inline-block;">
                                                            <div class="curation-item">
                                                                <p
                                                                    class="topic sg-text-subhead7 sg-font-medium sg-text-gray-500">
                                                                    얼마예요</p>
                                                                <h3
                                                                    class="sg-text-subhead2 sg-font-bold sg-text-gray-900">
                                                                    술 감정가의뢰</h3>
                                                                <div class="react-items">
                                                                    <p
                                                                        class="view sg-text-description sg-font-regular sg-text-gray-300">
                                                                        314
                                                                    </p>
                                                                    <p
                                                                        class="comment sg-text-description sg-font-regular sg-text-gray-300">
                                                                        17</p>
                                                                </div>
                                                            </div>
                                                        </a></div>
                                                </div>
                                            </div>
                                        </div>
                                        <button type="button" data-role="none" class="slick-arrow slick-next"
                                            style="display: block;">Next</button>
                                    </div>
                                </section>

                                <!-- 서비스/지역 필터 -->
                                <section class="service-area-filter all fixed">
                                    <!----><button type="button" class="btn btn-none chip-btn filter-btn"><span
                                            data-v-130d9011="">서비스</span></button><button type="button"
                                        class="btn btn-none chip-btn filter-btn" data-v-130d9011=""><span
                                            data-v-130d9011="">지역</span></button>
                                </section>

                                <!-- 피드 (게시글 목록) -->
                                <article class="questions-feed-list">
                                    <ul class="feed-list">
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b6049f22d78d3e3cce377-%EB%B0%94%EB%8B%A5%EC%9E%AC-%EA%B2%AC%EC%A0%81-%EB%B0%9B%EB%8A%94-%EB%B0%A9%EB%B2%95(%ED%83%80%EC%9D%BC--%EB%A7%88%EB%A3%A8%EB%93%B1)"
                                                class="" data-testid="soomgo-life-feed-item">
                                                <p class="topic-name">함께해요 · 타일 시공</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3>
                                                                바닥재 견적 받는 방법(타일,
                                                                마루등)</h3>
                                                            <p class="content">
                                                                안녕하세요 신개념
                                                                천연대리석마루 및 포세린타일 제조 및 시공 업체 이지테크입니다. 오늘은 바닥재 및 벽마감재중 타일이나
                                                                마루의 가견적 및실견적을 받는 방법에 대해 설명드리겠습니다.
                                                                1. 치수가 나와있는 캐드 도면(관리사무소 또는 설계사무실)을 준비한다. 2... </p>
                                                        </section>
                                                        <p>전국</p>
                                                    </div><img
                                                        alt="Resized_temp_1668128590947.1130780476_126927628503406.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/aaa72ebc-fa5a-485c-9047-b364d82f4e33.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="https://static.cdn.soomgo.com/upload/media/aaa72ebc-fa5a-485c-9047-b364d82f4e33.jpg?h=80&amp;w=80&amp;webp=1"
                                                        lazy="loaded">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">1</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">0</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">
                                                        4분 전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b5c50f22d78d3e3cce36a-%EC%A3%BC%EB%B0%A9-%EC%84%A0%EB%B0%98%EC%9E%A5-%EC%83%81%EB%B6%80%EC%9E%A5-%EC%9E%A5%EA%B3%B5%EC%82%AC-%EC%86%8C%EA%B7%9C%EB%AA%A8%EC%9D%B8%ED%85%8C%EB%A6%AC%EC%96%B4">
                                                <p class="topic-name">
                                                    얼마예요 · 가구 리폼</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3>
                                                                주방 선반장 상부장 장공사
                                                                소규모인테리어</h3>
                                                            <p class="content">
                                                                사진과 깉이 선반장
                                                                일부 변경 시공하고 싶습니다. 콘센트 증설 포함 냉장고장이나 식세기장으로 주방 장 공사 하시는 쪽에
                                                                견적및 문의드리고 싶습니다. </p>
                                                        </section>
                                                        <p>세종 전체</p>
                                                    </div><img alt="4A670BEE-6EAE-4316-994C-2A65821CB4A5.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/a84f6323-6477-4631-8c91-bb38a70805a7.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="https://static.cdn.soomgo.com/upload/media/a84f6323-6477-4631-8c91-bb38a70805a7.jpg?h=80&amp;w=80&amp;webp=1"
                                                        lazy="loaded">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">1</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">21분전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b5296505cb9f47887d908-%EC%88%A8%EA%B3%A0%EA%B2%AC%EC%A0%81"
                                                class="" data-testid="soomgo-life-feed-item">
                                                <p class="topic-name">
                                                    함께해요 · 이사/입주 청소 업체</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3>숨고견적</h3>
                                                            <p
                                                                class="content sg-text-body2 sg-font-regular sg-text-gray-500">
                                                                휴 다들견적만받고
                                                                대답은없네요 ㅜㅜ </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            경북 전체</p>
                                                    </div>
                                                    <!---->
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">8</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">1시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b4c75a982a333f790f6d1-%EC%9D%B4%EB%9F%B0-led%EB%93%B1%EC%9D%80-%EA%B5%90%EC%B2%B4%EA%B0%80-%EC%89%BD%EB%82%98%EC%9A%94-">
                                                <p class="topic-name">
                                                    궁금해요 · 전기 배선 설치 및 수리</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3>
                                                                이런 led등은 교체가
                                                                쉽나요?</h3>
                                                            <p class="content">
                                                                led 모듈인데
                                                                고장나서 깜박거리고 안 켜지는데 비용 최소화해서 고치려면 어떻게 해야할까요? 추가 답변 감사합니다.
                                                                교체해보려고 뜯었습니다 일단 세번째사진 저 제품 사면 맞을까요?
                                                                또 방에 전선만 있는 상황인데 일단 냅둬도 상관없을까요? </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            전북/군산시</p>
                                                    </div><img alt="1e8e2690-3fed-49bf-bee4-58b8179e2fe1.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/f3ca62f4-8362-4cd3-b4eb-dc8eaa771ea7.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                        lazy="loading">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">12</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">1시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b498e505cb9f47887d8f2-%EC%B2%9C%EC%A0%95-%EB%8B%A4%EC%8B%9C-%EB%8C%80%EC%A3%BC%EC%8B%A4-%EB%AA%A9%EC%88%98%EB%B6%84-%EA%B5%AC%ED%95%A9%EB%8B%88%EB%8B%A4--%EC%9E%91%EC%9D%80-%EB%B0%A9-%ED%95%98%EB%82%98">
                                                <p data-testid="soomgo-life-topic-name" class="topic-name">
                                                    고수찾아요 · 아파트 인테리어</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3>
                                                                천정 다시 대주실 목수분
                                                                구합니다. 작은 방 하나</h3>
                                                            <p class="content">
                                                                해주실 수 있는
                                                                목수분 구해요 </p>
                                                        </section>
                                                        <p class="sub-information">
                                                            경남/창원시 마산합포구</p>
                                                    </div><img alt="45cbb952-be02-47c1-9c66-7c8a7601e7ab.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/33016ed5-32e8-4615-9088-c2f0a91fb2e4.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                        lazy="loading">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">6</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">1시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b401ea982a333f790f6c0-%EC%B6%94%EA%B0%80%EA%B2%AC%EC%A0%81">
                                                <p
                                                    class="topic-name sg-text-description sg-font-regular sg-text-gray-500">
                                                    얼마예요 · 원룸/소형 이사</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3
                                                                class="sg-text-subhead5 sg-font-medium sg-text-gray-900">
                                                                추가견적</h3>
                                                            <p
                                                                class="content sg-text-body2 sg-font-regular sg-text-gray-500">
                                                                처음 견적가 보다
                                                                추가비용이 별도로있는지 확인하시고 진행하세요 </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            울산 전체</p>
                                                    </div>
                                                    <!---->
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">6</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">2시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b3edd505cb9f47887d8ee-%EC%8B%B1%ED%81%AC%EB%8C%80-%EC%B2%A0%EA%B1%B0-%EB%AC%B8%EC%9D%98%EB%93%9C%EB%A6%BD%EB%8B%88%EB%8B%A4-">
                                                <p
                                                    class="topic-name sg-text-description sg-font-regular sg-text-gray-500">
                                                    궁금해요 · 폐기물 처리</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3
                                                                class="sg-text-subhead5 sg-font-medium sg-text-gray-900">
                                                                싱크대 철거 문의드립니다.
                                                            </h3>
                                                            <p
                                                                class="content sg-text-body2 sg-font-regular sg-text-gray-500">
                                                                안녕하세요 ! 해당
                                                                싱크대 철거 밑 폐기물처리 견적이 얼마나 나올까요..? 무겁진 않아서 한분만 오셔서 운반차량까지 저와
                                                                같이 운반하시면 될 것 같습니다. 배수관 분리 밑 싱크대 철거,
                                                                폐기처리 인데 어쩌면 고수분 이동시간이 더 나올지도 모르겠네요..^^;; </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            서울/성북구</p>
                                                    </div><img alt="5A3E6157-D3D4-4FA5-8AF7-BF43A9F3EFAC.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/5638a827-b691-4401-a721-a4bb0ec57008.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                        lazy="loading">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">14</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">2시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b3c31505cb9f47887d8ea-%EA%B2%BD%EB%A0%A5-10%EB%85%84-%EC%9D%B4%EC%83%81%EC%9D%98-%ED%8A%B8%EB%A0%88%EC%9D%B4%EB%84%88%EC%99%80-%ED%8C%8C%ED%8A%B8%EB%84%88%EC%9A%B4%EB%8F%99-%ED%95%98%EA%B8%B0">
                                                <p data-testid="soomgo-life-topic-name"
                                                    class="topic-name sg-text-description sg-font-regular sg-text-gray-500">
                                                    함께해요 · 퍼스널트레이닝(PT)</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3
                                                                class="sg-text-subhead5 sg-font-medium sg-text-gray-900">
                                                                경력 10년 이상의 트레이너와
                                                                파트너운동 하기</h3>
                                                            <p
                                                                class="content sg-text-body2 sg-font-regular sg-text-gray-500">
                                                                프리랜서로 트레이너
                                                                하고 있는데 오후 세시에 같이 운동 하면서 배울 분 모집 합니다 시간: 두시간 가격: 3만원 장소:
                                                                서울 구로구 구로중앙로 134 2층 함서짐 특이사항: 본인이
                                                                운동을 얼마나 같이 할 지를 보고 회원권 구매. 개인 운동을 따로 하는곳이라 회... </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            서울/구로구</p>
                                                    </div><img alt="5D3039E8-D0DB-4D78-8FB8-E91553860B00.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/dd6d3925-ef96-4088-9e5b-f7ac9275ee1f.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                        lazy="loading">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">1</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">3</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">2시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item"><a
                                                href="/community/soomgo-life/posts/643b328e505cb9f47887d8e3-(6000%EC%9B%90-)-%EA%B0%95%EC%95%84%EC%A7%80-%EC%82%B0%EC%B1%85-%EC%A0%9C%EA%B3%B5%ED%95%B4%EB%93%9C%EB%A6%BD%EB%8B%88%EB%8B%A4">
                                                <p
                                                    class="topic-name sg-text-description sg-font-regular sg-text-gray-500">
                                                    고수소식 · 반려견 산책</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3
                                                                class="sg-text-subhead5 sg-font-medium sg-text-gray-900">
                                                                (6000원~) 강아지 산책
                                                                제공해드립니다</h3>
                                                            <p
                                                                class="content sg-text-body2 sg-font-regular sg-text-gray-500">
                                                                강아지 산책
                                                                제공해드립니다. 광진구 화양동, 구의동, 자양동, 군자동, 중곡동 등의 경우, 소형견 40분당
                                                                6~7000원, 중형견 40분당 11000원, 대형견 40분당
                                                                15000원입니다. 세부위치에 따라 가격대 조정될 수 있습니다. (지역이 매우 가깝고 소형견일 ...
                                                            </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            서울/광진구</p>
                                                    </div><img alt="407e5cc2-3344-4253-aaf1-c2d7e910cce8.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/a1f99ca8-e72d-4722-b449-4e00988b79a5.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                        lazy="loading">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">2</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">4</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">3시간
                                                        전</span>
                                                </div>
                                            </a></li>
                                        <li class="feed-item">
                                            <a
                                                href="/community/soomgo-life/posts/643b2537505cb9f47887d8dd-%EC%95%88%EB%B0%A9%EA%B3%BC-%EB%B2%A0%EB%9E%80%EB%8B%A4-%EC%82%AC%EC%9D%B4%EB%AC%B8-%EC%9C%A0%EB%A6%AC%EA%B9%A8%EC%A7%84%EA%B1%B0-%EC%88%98%EB%A6%AC-%EA%B0%80%EB%8A%A5%ED%95%A0%EA%B9%8C%EC%9A%94">
                                                <p
                                                    class="topic-name sg-text-description sg-font-regular sg-text-gray-500">
                                                    고수찾아요 · 샷시 설치 및 수리</p>
                                                <div class="feed-content service-address-info">
                                                    <div>
                                                        <section class="item-wrapper">
                                                            <h3
                                                                class="sg-text-subhead5 sg-font-medium sg-text-gray-900">
                                                                안방과 베란다 사이문
                                                                유리깨진거 수리 가능할까요</h3>
                                                            <p
                                                                class="content sg-text-body2 sg-font-regular sg-text-gray-500">
                                                                안방과 베란다
                                                                사이문이 깨졌는데 수리비용이 얼마나 나올까요? </p>
                                                        </section>
                                                        <p
                                                            class="sub-information sg-text-description sg-font-regular sg-text-gray-500">
                                                            서울/서초구</p>
                                                    </div><img alt="E789A737-4981-4B6C-A659-EE0E0E2E5C1C.jpg"
                                                        data-src="https://static.cdn.soomgo.com/upload/media/369b64ce-160b-420c-9ed0-7994127e6dcb.jpg?h=80&amp;w=80&amp;webp=1"
                                                        src="data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7"
                                                        lazy="loading">
                                                </div>
                                                <div class="feed-footer">
                                                    <div class="user-interaction"><span
                                                            class="like sg-text-description sg-font-regular sg-text-gray-300">0</span><span
                                                            class="comment sg-text-description sg-font-regular sg-text-gray-300">7</span>
                                                    </div><span
                                                        class="sg-text-description sg-font-regular sg-text-gray-300">4시간
                                                        전</span>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>

                                </article>
                            </div>

                        </div>
                        <a id="top-btn" role="button" aria-label="위로 가기 버튼" class="top-btn" style="display: none;"><img
                                src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEgyNFYyNEgweiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyMy4wMDAwMDAsIC02ODAuMDAwMDAwKSB0cmFuc2xhdGUoMzExLjAwMDAwMCwgNjY4LjAwMDAwMCkgdHJhbnNsYXRlKDEyLjAwMDAwMCwgMTIuMDAwMDAwKSIvPgogICAgICAgICAgICAgICAgICAgIDxnIHN0cm9rZT0iI0I1QjVCNSIgc3Ryb2tlLWxpbmVjYXA9InJvdW5kIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIGQ9Ik03IDBMNyAxNSIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyMy4wMDAwMDAsIC02ODAuMDAwMDAwKSB0cmFuc2xhdGUoMzExLjAwMDAwMCwgNjY4LjAwMDAwMCkgdHJhbnNsYXRlKDEyLjAwMDAwMCwgMTIuMDAwMDAwKSB0cmFuc2xhdGUoNS4wMDAwMDAsIDQuNTAwMDAwKSIvPgogICAgICAgICAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2UtbGluZWpvaW49InJvdW5kIiBkPSJNMCA3TDcgMCAxNCA3IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIzLjAwMDAwMCwgLTY4MC4wMDAwMDApIHRyYW5zbGF0ZSgzMTEuMDAwMDAwLCA2NjguMDAwMDAwKSB0cmFuc2xhdGUoMTIuMDAwMDAwLCAxMi4wMDAwMDApIHRyYW5zbGF0ZSg1LjAwMDAwMCwgNC41MDAwMDApIi8+CiAgICAgICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICAgICAgPC9nPgogICAgICAgICAgICA8L2c+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
                                alt="위로 가기"></a>
                    </section>

                    <!-- 글 상세보기에서 링크 이동할 부분 -->
                    <div class="v-portal" style="display: none;"></div>

                </div>
            </div>
        </div>
        <div id="app-sticky" class="portal-target"></div>
        <div id="app-body"></div>
        <nav id="app-footer" class="footer-container"></nav>
        <div class="portal-target"></div>
    </div>

</body>

</html>