<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이팅_에러페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
<script>
	if(confirm('<%=request.getAttribute("ntpmsg")%>')){
		location.href="<%=request.getContextPath()%>/login"
	}else{		
		location.href="<%=request.getContextPath()%>/ntpclist"
	};
</script>
</body>
</html>