<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>비밀번호 찾기</title>
</head>
<link href="../../static/css/singupcss-hsw/basic.css" rel="stylesheet">
<body>
	<div>
		<div class="find">
			<h2>비밀번호 찾기</h2>
			<div class="card">
				<form>
					<div class="form-row">
						<div id="email" class="col-12">
							<fieldset class="form-group">
								<legend class="legen-text">가입한 이메일 주소를 입력해주세요</legend>
								<div>
									<input name="email" type="email"
										placeholder="example@joongsin.com" maxlength="30"
										class="inputclass">
									<div class="col-14">
										<small class="notice">가입하신 이메일 주소를 입력해주시면 <br>새로운 비밀번호를 설정 가능한 링크를 보내드립니다.</small> 
									</div>
									<!-- 입력창 마우스로 클릭시 등장하게 스크립트 작성 -->
								</div>
							</fieldset>
						</div>
						<div id="sendEmail" class="col-12">
							<button type="submit" class="btn-signup">
								<span class="btntext">이메일 전송하기</span>
							</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>