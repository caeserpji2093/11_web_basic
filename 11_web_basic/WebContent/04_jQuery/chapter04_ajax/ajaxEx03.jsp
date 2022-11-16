<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>receive 예시</title>
<script src="../js/jquery-3.6.1.min.js"></script>
<script>

	$().ready(function(){
		
		$("#recvTest").click(function(){
			
			$.ajax({
				
				url : "/11_web_basic/ajaxEx0312345",
				type : "get",
				success : function(data , status , xhr) {
					console.log(data);
					console.log(status);
					console.log(xhr);
					console.log("");
				},
				error : function(xhr , status , errorThrown) {
					console.log(xhr);
					console.log(status);
					console.log(errorThrown);
					console.log("");
				},
				complete : function(xhr , status) {
					console.log(xhr);
					console.log(status);
					console.log("");
				}
				
			});
			
		});
		
	})
</script>
</head>
<body>
	<form>
		<p>
			<input type="button" id="recvTest" value="비동기통신"> 
			<span id="result"></span>
		</p> 
	</form>
</body>
</html>