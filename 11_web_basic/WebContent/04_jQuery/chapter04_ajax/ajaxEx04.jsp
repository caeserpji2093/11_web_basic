<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax 예시</title>
<script src="../js/jquery-3.6.1.min.js"></script>
<script>

	$().ready(function(){
		
		$("#duplicatedIdCheck").click(function(){
			
			$.ajax({
				url : "/11_web_basic/ajaxEx04",
				type : "get",
				data : {"id" : $("#id").val()},
				success : function(data) {
					
					if (data == "Y") {
						$("#result").html("중복된 아이디 입니다.");
					}
					else {
						$("#result").html("사용가능한 아이디 입니다.");
					}
					
				}
				
			});
			
		});
		
	});
</script>
</head>
<body>

	<p>
		id : <input type="text" id="id">
		<input type="button" id="duplicatedIdCheck" value="중복확인"> 
		<span id="result"></span>
	</p> 
	
</body>
</html>