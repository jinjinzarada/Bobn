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
		//history.back(); 
		//history.back();은 load 되지 않으므로 page load되지 않음.
	}
	location.replace('${location}');
</script>
</body>
</html>