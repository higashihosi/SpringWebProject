<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,    initial-scale=1.0">
<title>회원 정보 수정</title>
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
<link rel="stylesheet" type="text/css"
	href="./css/bootstrap.min_4.5.0.css">
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
<script src="./js/oreurak_validity.js" type="text/javascript"></script>

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
										<h5><b>회원 수정</b></h5>
									</div>
									<div class="card-body">
										<form method="post" id="oreurak">
											<fieldset>
												<div class="form-group   row">
													<label for="id" class="ml-sm-3    col-form-label">
														회원 아이디 </label>
													<div class="ml-sm-3">
														<input type="text" name="id" id="id"
															class="form-control    form-control-sm"
															value="${param.id}" disabled="disabled">
													</div>
												</div>
												<div class="form-group   row">
													<label for="phone" class="ml-sm-3    col-form-label">
														핸드폰 번호 </label>
													<div class="ml-sm-3">
														<input type="text" name="phone" id="phone"
															class="form-control    form-control-sm"
															value="${oreurakDTO.phone}">
													</div>
												</div>
												<div class="form-group   row">
													<label for="cnumber" class="ml-sm-3    col-form-label">
														비밀 번호 </label>
													<div class="ml-sm-3">
														<input type="text" name="cnumber" id="cnumber"
															class="form-control    form-control-sm"
															value="${oreurakDTO.cnumber }">
													</div>
												</div>
												<div class="form-group   row">
													<label for="aenent" class="ml-sm-3    col-form-label">
														관심 종목 </label>
													<div class="ml-sm-3">
														<input type="text" name="aenent" id="aenent"
															class="form-control    form-control-sm"
															value="${oreurakDTO.aenent}">
													</div>
												</div>
												<div class="form-group   row">
													<label for="atrend" class="ml-sm-3    col-form-label">
														관심 트랜드 </label>
													<div class="ml-sm-3">
														<input type="text" name="atrend" id="atrend"
															class="form-control    form-control-sm"
															value="${oreurakDTO.atrend}">
													</div>
												</div>
												<div class="form-group   row">
													<label for="signdate" class="ml-sm-3    col-form-label">
														가입날짜 </label>
													<div class="ml-sm-3">
														<input type="text" name="signdate" id="signdate"
															class="form-control    form-control-sm"
															value="${oreurakDTO.signdate }" readonly>
													</div>
												</div>
												<div class="form-group">
													<button type="submit" class="btn    btn-secondary">
														등록</button>
													<button type="reset" class="btn    btn-secondary">취소
													</button>
												</div>
											</fieldset>
										</form>
										<div class="row">
											<div class="col-md-4">
												<a href="./OreurakSelect"
													class="btn    btn-primary   btn-block"> 회원 목록 </a>
											</div>
											<div class="col-md-4">
												<a href="./OreurakInsert"
													class="btn    btn-success   btn-block"> 회원 입력 </a>
											</div>
											<div class="col-md-4">
												<a href="./OreurakDelete?id=${param.id }%>"
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