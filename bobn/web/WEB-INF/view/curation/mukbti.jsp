<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOBn-먹BTI</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	
<script>
function showbutton(){
	$('button').removeAttr('hidden');
}

</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap%27');
* {
	font-family: 'Noto Sans', sans-serif !important;
}
form{
	width:100%;
    margin:auto;
}
button{
	 height: 10%;
     width:fit-content;
     margin: auto;
     display: block;
     text-align: center;
     /* padding: 5px 15px; */
     background: #fb9300;
     border: 1px solid #fb9300;
     color: white;
     font-size: 18px;
     transition: 0.3s;
     margin-top: 5%;
     margin-bottom: 5%;
     border-radius: 25px;
}
button:hover{
	background: white;
    color: #fb9300;
}

</style>
</head>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<form action="<%=request.getContextPath()%>/shopblist" method="get">
<button type="submit" hidden>M(먹)BTI 결과를 확인하셨다면 클릭해주세요!</button>
</form>

<iframe class="googleiframe" src="https://docs.google.com/forms/d/e/1FAIpQLSeq818Lk0ma0CaEVZAku7wIVUON2Ic-Tb-1tGaghQbYOhp17Q/viewform?embedded=true" width="100%" height="140%" frameborder="0" marginheight="0" marginwidth="0" onmouseout="showbutton()">로드 중…</iframe>

<form action="<%=request.getContextPath()%>/shopblist" method="get">
<button type="submit" hidden>M(먹)BTI 결과를 확인하셨다면 클릭해주세요!</button>
</form>

<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
</body>
</html>