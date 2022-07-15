<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 삭제</title>
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
</head>
<body>
	<div class="container">
		<div class="card-body  bg-white">
			<div class="col-9 mx-auto">
				<script type="text/javascript">
					alert("입력하신 ${oreurakDTO.id} 회원을 삭제하였습니다.")
					location.href = "./OreurakSelect"
				</script>
			</div>
		</div>
	</div>

</body>
</html>