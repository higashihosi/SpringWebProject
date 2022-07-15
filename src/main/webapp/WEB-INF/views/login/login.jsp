<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/common2.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/oreurak_validity.js" type="text/javascript"></script>
<script src="https://kit.fontawesome.com/d58752461f.js"></script>
</head>
<body class="text-center">

	<div id="contentsArea">
		<div class="login">


			<img align="middle" src="img/oreurak.png" alt="oreurak"
				width="100" height="100">
			<h1 align="center">투자는 즐겁게</h1>
			<div>
				<h5 align="center">포트폴리오로 내 투자 체크하고</h5>
			</div>
			<h5 align="center">커뮤니티에서 함께 공부해요!</h5>
			<div></div>
			<h1></h1>

		<h2 align="left">ID를 입력해주세요</h2>
		<div>
			<h5 align="left">ID 통해 가입/로그인을 진행합니다.</h5>
		</div>
			<form id="oreurak" action="login" method="post">
			<p>

				<input type="text" name="id" id="id"
					placeholder="id를 입력해 주세요">
			</p>
			<p>
				<input type="password" name="cnumber" id="cnumber" maxlength="4"
					placeholder="비밀번호(4자리)를 입력해 주세요">
			</p>

			<div>
				<button type="submit" id="login" class="btn btn-warning btn-block">로그인</button>
								<h1></h1>
								<span>
					<button type="button" class="btn btn-light"
						onclick="location.href='./OreurakInsert'">
						<i class="fa fa-home" aria-hidden="true"> 회원가입</i>
					</button>
				</span> 
				<p class="mt-5 mb-3 text-muted">&copy; 2022</p>

			</div>
		</form>
		</div>
	</div>
	
</body>
</html>