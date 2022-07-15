<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 입력</title>
<link rel="shortcut icon" href="./img/oreurak.png" type="image/x-icon">
<c:forEach var="list" items="${list }">
	<c:if test="${list.id==oreurakDTO.id}">
		<script type="text/javascript">
			alert("입력하신 ${oreurakDTO.id}의 회원 번호가 존재합니다. 다시입력하세요");
			location.href = "./OreurakInsert"
		</script>
	</c:if>
</c:forEach>
</head>
<body>
	<script type="text/javascript">
		alert("입력하신 ${oreurakDTO.id}의 회원 번호를 등록하였습니다.")
		location.href = "./OreurakSelect"
	</script>
</body>
</html>