<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,    initial-scale=1.0">
<title>회원 관리 상세 보기</title>
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="card-body  bg-white">
			<div class="col-9 mx-auto">
				<section id="department">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h5><b>회원 상세 보기 </b></h5>
									</div>
									<div class="card-body">
										<table class="table    table-hover">
											<thead class="thead-light">
												<tr class="text-center">
													<th>아이디</th>
													<th>핸드폰 번호</th>
													<th>비밀 번호</th>
													<th>관심 종목</th>
													<th>관심 트랜드</th>
													<th>가입날짜</th>
												</tr>
											</thead>
											<tbody>
												<tr class="text-center">
													<td>${oreurakDTO.id}</td>
													<td>${oreurakDTO.phone}</td>
													<td>${oreurakDTO.cnumber}</td>
													<td>${oreurakDTO.aenent}</td>
													<td>${oreurakDTO.atrend}</td>
													<td>${oreurakDTO.signdate}</td>
												</tr>
											</tbody>
										</table>
										<div class="row">
											<div class="col-md-4">
												<a href="./OreurakSelect"
													class="btn    btn-primary   btn-block"> 회원 목록 </a>
											</div>
											<div class="col-md-4">
												<a href="./OreurakUpdate?id=${oreurakDTO.id}"
													class="btn   btn-warning  btn-block"> 회원 수정 </a>
											</div>
											<div class="col-md-4">
												<a href="./OreurakDelete?id=${oreurakDTO.id}"
													class="btn   btn-danger   btn-block"> 회원 삭제 </a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
</body>
</html>