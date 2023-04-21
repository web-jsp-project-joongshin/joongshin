<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../../static/css/message-jym/msg-main-page.css">
    <title>chat</title>
</head>

<body>

    <div id="app-body">
        <!-- 채팅페이지 바디 -->
        <div class="chat-list">
            <!-- 해더 부분  -->
            <div class="page-header">
                <div class="container">
                    <section class="page-title">
                        <h3>채팅</h3>
                        <a href="/pro/chats/edit" class="chat-list-edit-button"> 편집 </a>
                    </section>
                    <section class="row">
                        <div class="col-12">
                            <div role="group" class="input-group" id="input-group">
                                <div class="input-group-prepend"><img
                                        src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxOCIgaGVpZ2h0PSIxOCIgdmlld0JveD0iMCAwIDE4IDE4Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgc3Ryb2tlPSIjNzM3MzczIiBzdHJva2Utd2lkdGg9IjEuNSI+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPGcgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMwMSAtMjMzKSB0cmFuc2xhdGUoMjg1IDIyMikgdHJhbnNsYXRlKDE2IDExKSB0cmFuc2xhdGUoMSAxKSI+CiAgICAgICAgICAgICAgICAgICAgICAgIDxjaXJjbGUgY3g9IjYuNjExIiBjeT0iNi42MTEiIHI9IjUuODYxIi8+CiAgICAgICAgICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZS1saW5lY2FwPSJyb3VuZCIgc3Ryb2tlLWxpbmVqb2luPSJyb3VuZCIgZD0iTTE1LjI1IDE1LjI1TDExLjAwNyAxMS4wMDciLz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPgo=">
                                </div>
                                <div class="input-flex-group">
                                    <input type="search" placeholder="이름과 서비스를 검색하세요" value=""
                                        class="form-search-text-input form-control" id="__BVID__14">
                                </div>
                                <!---->
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="chat-filter-wrapper">
                                <ul class="chat-filter">
                                    <li class="chat-filter-item selected" onClick="location.href='msg-main-page.jsp'"> 보낸 채팅 </li>
                                    <li class="chat-filter-item" onClick="location.href='received-msg-main.jsp'"> 받은 채팅 </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
<!-- 			바디  -->
            <div class="page-body">
                <div class="container">
                    <ul class="row">

                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">
                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class=""
                                                data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile/ac7c3550-e6e3-4337-8cc2-fd7539ab25c6.jpg?h=320&amp;w=320"
                                                lazy="loaded"
                                                style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile/ac7c3550-e6e3-4337-8cc2-fd7539ab25c6.jpg?h=320&amp;w=320&quot;);">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> 김은미 </h5>
                                            <!---->
                                            <!---->
                                        </div>
                                        <div class="pro-info">수학 과외<span class="divider">|</span>서울 광진구 자양3동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 김은미 님이 채팅방을 나갔습니다.
                                        <!---->
                                    </p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class><label>시간 당</label> 30,000원
                                            <!---->
                                        </p>
                                    </div>
                                    <div class="updated-at">
                                        <p>2022. 07. 25</p>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">
                                    <!---->
                                    <!---->
                                    <!---->
                                    <!---->
                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class=""
                                                data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile/bc6ad578-4802-47a9-8b73-98d9d192a595.jpg?h=320&amp;w=320"
                                                lazy="loaded"
                                                style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile/bc6ad578-4802-47a9-8b73-98d9d192a595.jpg?h=320&amp;w=320&quot;);">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> 김송주 </h5>
                                            <!---->
                                            <!---->
                                        </div>
                                        <div class="pro-info">영어 과외<span class="divider">|</span>서울 강남구 일원동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 김송주 님이 채팅방을 나갔습니다.
                                        <!---->
                                    </p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class=""><label>총</label> 40,000원
                                            <!---->
                                        </p>
                                    </div>
                                    <div class="updated-at">
                                        <p>2022. 07. 31</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">

                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class="">
                                                <p>B</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> BY </h5>
                                            <!---->
                                            <!---->
                                        </div>
                                        <div class="pro-info">과학 과외<span class="divider">|</span>서울 강남구 대치동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 정보영 님이 채팅방을 나갔습니다.
                                        <!---->
                                    </p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class=""><label>시간 당</label> 45,000원
                                            <!---->
                                        </p>
                                    </div>
                                    <div data-v-784b78ce="" class="updated-at">
                                        <p>2022. 06. 09</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">

                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class=""
                                                data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile/eefc6dbd-a203-44e5-b35d-307794965506.jpg?h=320&amp;w=320"
                                                lazy="loaded"
                                                style="background-image: url(&quot;https://dmmj3ljielax6.cloudfront.net/upload/profile/eefc6dbd-a203-44e5-b35d-307794965506.jpg?h=320&amp;w=320&quot;);">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> 레이첼 </h5>
                                            <!---->
                                            <!---->
                                        </div>
                                        <div class="pro-info">SAT 과외<span class="divider">|</span>서울 강남구 세곡동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 고객님이 견적을 조회하였습니다 <span class="badge unread-count badge-danger">1</span></p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class=""><label>총</label> 40,000원
                                            <!---->
                                        </p>
                                    </div>
                                    <div class="updated-at">
                                        <p>2022. 04. 19</p>
                                    </div>
                                </div>
                            </div>
                        </li>

                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">

                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class="">
                                                <p>정</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> 정지윤 </h5>
                                            <!---->
                                            <!---->
                                        </div>
                                        <div class="pro-info">SAT 과외<span class="divider">|</span>서울 강남구 삼성동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 온라인으로 가능하세요! :)
                                        <!---->
                                    </p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class=""><label>시간 당</label> 55,000원
                                            <!---->
                                        </p>
                                    </div>
                                    <div class="updated-at">
                                        <p>2021. 08. 05</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">

                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class="">
                                                <p>김</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> 김의령 </h5>
                                            <!---->
                                            <!---->
                                        </div>
                                        <div class="pro-info">영어 과외<span class="divider">|</span>서울 강남구 청담동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 고객님이 견적을 조회하였습니다</p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class=""><label>시간 당</label> 40,000원</p>
                                    </div>
                                    <div class="updated-at">
                                        <p>2021. 08. 05</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li data-name="chat-list" class="col-12">
                            <div class="chat-item">
                                <div class="badge-list">

                                </div>
                                <section class="row user-info align-items-start">
                                    <div class="profile col-auto">
                                        <div class="user-profile-picture">
                                            <div data-name="image" class=""
                                                data-src="https://dmmj3ljielax6.cloudfront.net/upload/profile/1bd740cc-def9-455d-a284-9f9dbec6f46f.jpg?h=320&amp;w=320"
                                                lazy="loading"
                                                style="background-image: url(&quot;data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iNzIiIGhlaWdodD0iNzIiIHZpZXdCb3g9IjAgMCA3MiA3MiI+CiAgICA8ZGVmcz4KICAgICAgICA8cGF0aCBpZD0iYSIgZD0iTTAgMGg3MnY3MkgweiIvPgogICAgICAgIDxwYXRoIGlkPSJjIiBkPSJNMCAwaDcydjcySDB6Ii8+CiAgICA8L2RlZnM+CiAgICA8ZyBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxtYXNrIGlkPSJiIiBmaWxsPSIjZmZmIj4KICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYSIvPgogICAgICAgIDwvbWFzaz4KICAgICAgICA8ZyBtYXNrPSJ1cmwoI2IpIj4KICAgICAgICAgICAgPG1hc2sgaWQ9ImQiIGZpbGw9IiNmZmYiPgogICAgICAgICAgICAgICAgPHVzZSB4bGluazpocmVmPSIjYyIvPgogICAgICAgICAgICA8L21hc2s+CiAgICAgICAgICAgIDx1c2UgZmlsbD0iI0YyRjJGMiIgeGxpbms6aHJlZj0iI2MiLz4KICAgICAgICAgICAgPHBhdGggZmlsbD0iI0UxRTFFMSIgZD0iTTcwLjY3NyA2Ny4wMzJjLS45NTEtMi44NDQtMi42NzQtNS43MTItNS4yMTUtNy4zODEtNC44OS0zLjIzNi0xMC41ODctNC45NjItMTYuMDk1LTYuODEtMS4zMjktLjQ2NS0yLjY4LS45Ny0zLjg5My0xLjY5LTEuMDg1LS42NDMtMS40OTItMS45Ni0xLjc0My0zLjExNy0uMTEyLS42MTItLjE4LTEuMjQtLjIxNS0xLjg1NyAzLjk5NC01LjQ0OCA2LjY0NC0xNC4zNCA2LjY0NC0yMS42M0M1MC4xNiAxMy4xNzIgNDMuNzEyIDEwIDM1Ljc2IDEwYy03Ljk1NCAwLTE0LjQgMy4xNjYtMTQuNCAxNC41NDMgMCA3LjU1MSAyLjg0IDE2LjgxNCA3LjA3NSAyMi4xOTUtLjAzOS40MjQtLjA5Ljg1LS4xNjYgMS4yNzItLjI1MiAxLjE1Ny0uNjU5IDIuNDUtMS43NDIgMy4wOTItMS4yMTYuNzItMi41NjYgMS4xNzctMy44OTUgMS42NC01LjUwOSAxLjg0OS0xMS4yMDYgMy40NzgtMTYuMDk0IDYuNzE0LTIuNTQyIDEuNjctNC4yNjQgNC43MzItNS4yMTQgNy41NzZDLjM0NiA2OS45ODItLjA1NCA3My42MzguMDA2IDc2LjZoNzEuOTg4Yy4wNi0yLjk2Mi0uMzQtNi42MTctMS4zMTctOS41Njh6IiBtYXNrPSJ1cmwoI2QpIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K&quot;);">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="service-info col">
                                        <div class="pro-status">
                                            <h5> 신영옥 </h5><span
                                                class="badge hire-pro-badge hired-badge badge-primary badge-pill">
                                                고용
                                            </span>
                                            <!---->
                                        </div>
                                        <div class="pro-info">수학 과외<span class="divider">|</span>서울 송파구
                                            마천1동 </div>
                                    </div>
                                </section>
                                <div class="row last-message">
                                    <p> 또 언제부터 수업이 가능하신지요...??
                                        <!---->
                                    </p>
                                </div>
                                <div class="divider"></div>
                                <div class="row quote-info">
                                    <div class="price"><span class="price-icon"></span>
                                        <p class=""><label>총</label> 35,000원
                                            <!---->
                                        </p>
                                    </div>
                                    <div class="updated-at">
                                        <p>2021. 08. 05</p>
                                    </div>
                                </div>
                            </div>
                        </li>





                    </ul>
                </div>
            </div>
        </div>
    </div>

</body>

</html>