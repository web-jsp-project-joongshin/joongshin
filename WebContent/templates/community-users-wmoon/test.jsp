<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.service-area-filter .chip-btn {
	margin-right: 0.5rem;
    padding: 0.5rem 1rem;
    height: 2.375rem;
    font-size: .875rem;
    border-radius: 19px;
    display: inline-flex;
    align-items: center;
    height: 1.875rem;
    padding: 0.25rem 0.75rem;
    border: 0.0625rem solid #e1e1e1;
    border-radius: 15px;
    color: #2d2d2d;
    font-size: .75rem;
    margin-right: 0.375rem;
}

[type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
    cursor: pointer;
}
.btn {
    font-weight: 500;
    transition: opacity .2s ease-in-out;
}
.btn {
    display: inline-block;
    font-weight: 400;
    color: #323232;
    text-align: center;
    vertical-align: middle;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: transparent;
    border: 0.0625rem solid transparent;
    padding: 0.6875rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
[type=button], [type=reset], [type=submit], button {
    -webkit-appearance: button;
}
button, select {
    text-transform: none;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    margin: 0;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
button {
    border-radius: 0;
}
* {
    word-break: break-word;
}
*, :after, :before {
    box-sizing: border-box;
}
button {
    appearance: auto;
    writing-mode: horizontal-tb !important;
    font-style: ;
    font-variant-ligatures: ;
    font-variant-caps: ;
    font-variant-numeric: ;
    font-variant-east-asian: ;
    font-variant-alternates: ;
    font-weight: ;
    font-stretch: ;
    font-size: ;
    font-family: ;
    font-optical-sizing: ;
    font-kerning: ;
    font-feature-settings: ;
    font-variation-settings: ;
    text-rendering: auto;
    color: buttontext;
    letter-spacing: normal;
    word-spacing: normal;
    line-height: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: center;
    align-items: flex-start;
    cursor: default;
    box-sizing: border-box;
    background-color: buttonface;
    margin: 0em;
    padding: 1px 6px;
    border-width: 2px;
    border-style: outset;
    border-color: buttonborder;
    border-image: initial;
}
#app {
    -webkit-text-size-adjust: 100%;
    -moz-text-size-adjust: 100%;
    text-size-adjust: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    opacity: 0;
    min-height: 100%;
}
body {
    margin: 0;
    font-family: Noto Sans KR,Malgun Gothic,-apple-system,Segoe UI,Roboto,Noto Sans,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol,Noto Color Emoji;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #323232;
    text-align: left;
    background-color: #fff;
}

html {
    font-family: sans-serif;
    line-height: 1.15;
    -webkit-text-size-adjust: 100%;
    -webkit-tap-highlight-color: rgba(0,0,0,0);
}
*, :after, :before {
    box-sizing: border-box;
}
.service-area-filter .filter-btn[data-v-130d9011]:after {
    content: "";
    background-image: url(data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjAiIGhlaWdodD0iMjAiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZD0iTTMuNjY2IDhhLjcwOC43MDggMCAwMS45MjktMS4wNjRsLjA3My4wNjMgNS4zMzEgNS4zMzMgNS4zMzMtNS4zMzNhLjcwOC43MDggMCAwMS45My0uMDYzbC4wNzIuMDYzYS43MDguNzA4IDAgMDEuMDY0LjkzTDE2LjMzNCA4bC01LjgzMyA1LjgzM2EuNzA4LjcwOCAwIDAxLS45My4wNjRsLS4wNzItLjA2NEwzLjY2NiA4eiIgZmlsbD0iIzg4OCIgZmlsbC1ydWxlPSJldmVub2RkIi8+PC9zdmc+);
    background-size: contain;
    width: 1rem;
    height: 1rem;
    margin-left: 0.25rem;
}
*, :after, :before {
    box-sizing: border-box;
}



.modal-open .modal {
	overflow-x: hidden;
    overflow-y: auto;
}

.modal {
     position: absolute;
     top: 0;
     left: 0;

     width: 100%;
     height: 100%;

     display: none;

     background-color: rgba(0, 0, 0, 0.4);
}

.modal.show {
     display: block;
}

.modal_body {
     position: absolute;
     top: 50%;
     left: 50%;

     width: 400px;
     height: 600px;

     padding: 40px;

     text-align: center;

     background-color: rgb(255, 255, 255);
     border-radius: 10px;
     box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

     transform: translateX(-50%) translateY(-50%);
}


.fade {
	transition: opacity .15s linear;
}

.modal .modal-dialog.modal-dialog-centered {
	min-height: 100%;
    flex-direction: column;
    justify-content: center;
}

.modal.show .modal-dialog {
	transform: none;
	transition: transform .3s ease-out;
}

.modal .modal-dialog {
	margin: auto;
    max-width: 26.25rem;
}

.modal-dialog-centered {
	display: flex;
    align-items: center;
}

.modal-dialog {
	position: relative;
    width: auto;
    margin: 0.5rem;
    pointer-events: none;
}

.modal .modal-content, .modal .modal-header {
	border-radius: 0;
    border: none;
}

.modal-content {
	position: relative;
    display: flex;
    flex-direction: column;
    width: 100%;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 0.0625rem solid rgba(0,0,0,.2);
    border-radius: 0.3rem;
    outline: 0;
}

.search-pro-filter-modal .modal-body {
	padding: 0;
}

.modal-body {
	position: relative;
    flex: 1 1 auto;
}

.search-pro-filter-modal .tabs .nav-tabs {
	border: none;
    position: fixed;
    z-index: 1;
    height: 3.75rem;
    padding: 0.625rem 1rem;
    background-color: #fff;
}

.nav {
	display: flex;
    flex-wrap: wrap;
   	margin-bottom: 0;
    list-style: none;
}

dl, ol, ul {
	margin-top: 0;
}

.search-pro-filter-modal .tabs .nav-item:first-child {
	margin-right: 0.875rem;
}

.nav-tabs .nav-item {
	margin-bottom: -0.0625rem;
}

ul li {
	list-style: none;
}

.search-pro-filter-modal .tabs .nav-link.active {
	color: #00c7ae;
}

.search-pro-filter-modal .tabs .nav-link {
	border: none;
    outline-style: none;
    font-weight: 500;
    line-height: 1.75;
    letter-spacing: -.01688rem;
    padding: 0.375rem;
    position: relative;
}

.nav-link {
	text-decoration: none;
}

/*여기까지 일단 복사했음*/
.search-pro-filter-modal .tabs .nav-link.active:before {
	content: "";
    position: absolute;
    height: 0.125rem;
    background-color: #00c7ae;
    left: 0.375rem;
    right: 0.375rem;
    bottom: 0.125rem;
    width: calc(100% - 0.75rem);
}

*, :after, :before {
	box-sizing: border-box;
}

.search-pro-filter-modal .tabs .nav-tabs {
	margin-top: -292px;
    margin-left: -38px;
}


</style>
</head>
<body>
   <section class="service-area-filter all fixed" style="margin-top: 80px;">
		<button type="button" class="btn btn-none chip-btn filter-btn btn-open-popup">
			<span>서비스</span>
		</button>								
		<button type="button" class="btn btn-none chip-btn filter-btn">
			<span>지역</span>
		</button>
	</section>
		
	<div id="search-service-modal___BV_modal_outer_" class="modal" style="position: absolute; z-index: 1040;">
		<div id="search-service-modal" role="dialog" aria-describedby="search-service-modal___BV_modal_body_" aria-modal="true" class="modal modal_body fade show search-pro-filter-modal" style="display: block;">
			<div class="modal-dialog modal-md modal-dialog-centered mobile-full-modal">
				<span tabindex="0"></span>
				<div id="search-service-modal___BV_modal_content_" tabindex="-1" class="modal-content">
					<div id="search-service-modal___BV_modal_body_" class="modal-body">
						<div class="tabs" id="__BVID__7018">
							<div>
								<ul role="tablist" class="nav nav-tabs" id="__BVID__7018__BV_tab_controls_">
									<li class="nav-item">
										<a class="nav-link active" id="__BVID__7019___BV_tab_button__">
											서비스
										</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" id="__BVID__7019___BV_tab_button__">
											지역
										</a>
									</li>
									<button class="btn btn-none"></button>
								</ul>
							</div>
							<div></div>
						</div>
					</div>
				</div>
				<span></span>
			</div>
		</div>
		<!-- <div class="modal">
	      <div class="modal_body">Modal</div>
	    </div> -->
	</div>
	
</body>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script>
const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const btnOpenPopup = document.querySelector('.btn-open-popup');

btnOpenPopup.addEventListener('click', () => {
  modal.classList.toggle('show');

  if (modal.classList.contains('show')) {
    body.style.overflow = 'hidden';
  }
});

modal.addEventListener('click', (event) => {
  if (event.target === modal) {
    modal.classList.toggle('show');

    if (!modal.classList.contains('show')) {
      body.style.overflow = 'auto';
    }
  }
});
</script>
</html>