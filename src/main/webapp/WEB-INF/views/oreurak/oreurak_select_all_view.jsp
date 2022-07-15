<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 관리</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min_4.5.0.css">
<script src="https://kit.fontawesome.com/d58752461f.js"></script>
<script src="./js/jquery-3.5.1.min.js" type="text/javascript"></script>
<script src="./js/bootstrap.min_4.5.0.js" type="text/javascript"></script>
</head>
<body>
	<div class="container">
		<div class="card-body  bg-white">
			<div class="col-9 mx-auto">
				<fieldset></fieldset>
				<section id="details">
					<div class="container">
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-header">
										<h5>
											<b>회원 목록 </b><span>
												<button type="button" class="btn btn-light float-right"
													onclick="location.href='./login'">
													<i class="fa fa-home" aria-hidden="true"><br> 로그인</i>
												</button>
											</span>
										</h5>

									</div>
									<div class="card-body">
										<table class="table    table-hover">
											<thead class="thead-light">
												<tr class="text-center">
													<th>아이디</th>
													<th>핸드폰</th>
													<th>가입날짜</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="list" items="${list}">
													<tr class="text-center">
														<td>${list.id }</td>
														<td>${list.phone }</td>
														<td>${list.signdate }</td>
														<td><a href="./OreurakSelectDetail?id=${list.id}"
															class="btn   btn-outline-info"> 회원 상세 보기</a></td>
												</c:forEach>
												<c:if test="${empty list }">
													<tr>
														<td colspan="4">등록된 회원이 없습니다.</td>
													</tr>
												</c:if>
											</tbody>
										</table>
										<div>
											<a href="./OreurakInsert"
												class="btn btn-warning btn-block"><b> 회원 입력 </b></a>
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