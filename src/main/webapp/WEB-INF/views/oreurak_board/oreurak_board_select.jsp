<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오르락 게시판</title>
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="https://kit.fontawesome.com/d58752461f.js"></script>

<script type="text/javascript">
	function a() {
		alert("준비중입니다.");
	}
	function question() {
		alert("질문 사항은 02-1111-1111 에 연락해 주세요")
	}
</script>
</head>

</head>
<body>
	<div class="container">
		<div class="card-body  bg-white">
			<div class="col-9 mx-auto">
				<fieldset></fieldset>
				<span>
					<button type="button" class="btn btn-light"
						onclick="location.href='./login'">
						<i class="fa fa-home" aria-hidden="true"></i>
					</button>
				</span> 
				<span>
					<button type="button" class="btn btn-light"
						onclick="location.href='./OreurakSelect'">
						<i class="fa-solid fa-users" aria-hidden="true"></i>
					</button>
				</span>
				<span>
					<button type="button" class="btn btn-light float-right"
						onclick="question()">
						<i class="fa fa-question-circle" aria-hidden="true"></i>
					</button>
				</span> <img align="middle" src="./img/oreurak_board.png" alt="oreurakboard">
				<div class="card-body  bg-white">
					<fieldset>
						<div class="row text-center" style="width: 100%">

							<div style="width: 40%; float: none; margin: 0 auto">
								<h5 class="font-weight-bold">
									국내, 미국주식, 코인, 금 등 <br> 투자 자산을 등록하고
								</h5>
							</div>
						</div>
						<div class="card-body"></div>
					</fieldset>
				</div>
			</div>
		</div>
	</div>

	<fieldset>
		<div class="container">
			<div class="card-body  bg-white">
				<div class="col-9 mx-auto">

					<button type="submit" id="register"
						class="btn btn-warning btn-block">+보유 종목 추가하기</button>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="card-body  bg-white">
				<div class="col-9 mx-auto">
					<span>
						<button type="button" class="btn btn-light" onclick="a()">
							<i class="fa fa-pie-chart" aria-hidden="true"> <br> 내 자산
							</i>
						</button>
					</span> <span>
						<button type="button" class="btn btn-light " onclick="a()">
							<i class="fa fa-list-alt" aria-hidden="true"> <br> 피드
							</i>
						</button>
					</span> <span>
						<button type="button" class="btn btn-light float-right"
							onclick="a()">
							<i class="fa fa-commenting" aria-hidden="true"> <br> 채팅
							</i>
						</button>
					</span> <span>
						<button type="button" class="btn btn-light float-right"
							onclick="a()">
							<i class="fa fa-star-o" aria-hidden="true"> <br> 관심 종목
							</i>
						</button>
					</span>
				</div>
			</div>
		</div>
	</fieldset>
</body>

</html>