$(function() {
	
	$("#oreurak")
	.submit(
			function() {
				var phonNumberCheck = (/^01[0179][0-9]{7,8}$/);
				var emailCheck = (/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
				var date = /[0-9]{4}-(0?[1-9]|1[012])-(0?[1-9]|[12][0-9]|3[01])/;


				if (!$("#id").val()) {
					alert("아이디를 입력하세요");
					$("#id").focus();
					return false;
				}
				if ($("#phone").val()=="") {
					alert("핸드폰번호를 입력하세요.");
					$("#phone").focus();
					return false;
				}
//				if (!phonNumberCheck.test($("#phone").val())) {
//					alert("잘못된 형식입니다.ex)01012345678");
//					$("#phone").focus();
//					return false;
//				}
				if ($("#cnumber").val()=="") {
					alert("인증번호를 입력하세요.");
					$("#cnumber").focus();
					return false;
				}
				if ($("#aenent").val()=="") {
					alert("관심종목을 입력하세요");
					$("#aenent").focus();
					return false;
				}
				if ($("#atrend").val()=="") {
					alert("관심트렌드를 입력하세요");
					$("#atrend").focus();
					return false;
				}
//				if (!$("#email").val()) {
//				alert("이메일을 입력하세요");
//				$("#email").focus();
//				return false;
//			}
//				if (date.test($("#signdate").val()=="")) {
//					alert("날짜를 입력하세요");
//					$("#signdate").focus();
//					return false;
//				}
				if ($("#signdate").val()=="") {
					alert("날짜를 입력하세요");
					$("#signdate").focus();
					return false;
				}
	});
});