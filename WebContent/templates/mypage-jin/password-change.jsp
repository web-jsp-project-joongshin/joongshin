<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link data-vue-meta="1" rel="icon" type="image/png" sizes="32x32"
	href="https://static.cdn.soomgo.com/static/favicon-32x32.png?webp=1">
<title>숨고:숨은고수 - 800만명이 선택한 전국민 생활 솔루션</title>
<link href="../../static/css/mypage-css-jin/password-change.css" rel="stylesheet" type="text/css"/>

</head>
<body>
	<div id="app-body">
		<div class="container container-md">
			<main  class="account-info-container">
				<h1 >비밀번호 변경</h1>
				<div  
					class="sign-container secondary lg" style="display: none;">
					<div  class="header">
						<div  class="title">
							<img 
								src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyMCIgaGVpZ2h0PSIyMCIgdmlld0JveD0iMCAwIDIwIDIwIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPGc+CiAgICAgICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEwyMCAwIDIwIDIwIDAgMjB6IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzIgLTMwMSkgdHJhbnNsYXRlKDE2IDI4MSkgdHJhbnNsYXRlKDE2IDIwKSIvPgogICAgICAgICAgICAgICAgICAgIDxwYXRoIGZpbGw9IiMzMjMyMzIiIGZpbGwtcnVsZT0ibm9uemVybyIgZD0iTTEwIDJjLTQuNDE2IDAtOCAzLjU4NC04IDhzMy41ODQgOCA4IDggOC0zLjU4NCA4LTgtMy41ODQtOC04LTh6bS44IDEySDkuMlY5LjJoMS42VjE0em0wLTYuNEg5LjJWNmgxLjZ2MS42eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMyIC0zMDEpIHRyYW5zbGF0ZSgxNiAyODEpIHRyYW5zbGF0ZSgxNiAyMCkiLz4KICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
								alt="secondary"><span ></span>
						</div>
						
					</div>
					
				</div>
				<div   class="form-row">
					<div  class="margin-bottom-24 col-12">
						<fieldset  class="form-group current-password"
							id="__BVID__422">
							<legend tabindex="-1"
								class="bv-no-focus-ring col-form-label pt-0"
								id="__BVID__422__BV_label_">기존 비밀번호</legend>
							<div>
								<div  role="group"
									class="input-group current-password">
									
									<input  name="currentPassword"
										type="password" placeholder="현재 비밀번호를 입력해주세요"
										autocomplete="off" class="form-control is-invalid"
										autocapitalize="off" spellcheck="false"
										data-vv-validate-on="blur" aria-invalid="true"
										id="__BVID__423">
									<button  type="button"
										class="btn btn-secondary">표시</button>
									
								</div>
								<div  class="invalid-feedback">비밀번호를 입력해주세요.</div>
								
								
								
							</div>
						</fieldset>
					</div>
					<div  class="margin-bottm-8 col-12">
						<fieldset  class="form-group" id="__BVID__424">
							<legend tabindex="-1"
								class="bv-no-focus-ring col-form-label pt-0"
								id="__BVID__424__BV_label_">새로운 비밀번호</legend>
							<div>
								<input  name="password" type="password"
									placeholder="영문+숫자 조합 8자리 이상 입력해주세요" autocomplete="off"
									class="form-control is-valid" autocapitalize="off"
									spellcheck="false" data-vv-validate-on="blur"
									aria-invalid="true" id="__BVID__425" aria-required="true">
								<div  class="invalid-feedback"></div>
								
								
								
							</div>
						</fieldset>
					</div>
					<div  class="margin-bottm-8 col-12">
						<fieldset  class="form-group" id="__BVID__426">
							<legend tabindex="-1"
								class="bv-no-focus-ring col-form-label pt-0"
								id="__BVID__426__BV_label_">새로운 비밀번호 확인</legend>
							<div>
								<input  name="newPasswordConfirm"
									type="password" placeholder="비밀번호를 한번 더 입력해주세요"
									autocomplete="off" class="form-control is-valid"
									autocapitalize="off" spellcheck="false" aria-invalid="true"
									id="__BVID__427" aria-required="true">
								<div  class="invalid-feedback"></div>
								
								
								
							</div>
						</fieldset>
					</div>
				</div>
				<footer  class="button-group">
					<a  href="./user-mypage.jsp"
						class="btn btn-cancel btn-active btn-outline-secondary"
						target="_self">취소</a>
					<button  type="button" class="btn btn-primary">변경
						완료</button>
				</footer>
			</main>
		</div>
	</div>
</body>
</html>