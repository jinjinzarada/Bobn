<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<script> 
	var msg = '${msg}';
	// 새로고침 시 반복 팝업 방지 
	if(msg !='' || msg !=false) {
		alert('${msg}');		
		history.back();
	}
</script>
</body>
</html>