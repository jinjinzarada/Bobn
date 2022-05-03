<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/event/evdetail.css">

<%@page import="kh.semi.bobn.event.model.vo.EventVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<!-- font -->
</head>
<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<section>
		<%
			EventVo vo = (EventVo) request.getAttribute("eVo");
		if (vo.geteNo() == 0) {
		%>
		<p>해당 글이 없습니다.</p>
		<%
} else {
%>
		<div class="p_section_container">
			<div class="p_headline_container">
				<div class="p_section_head">
					<h3>EVENT</h3>
					<br>
					<br>
				</div>
				<table class="table">
					<colgroup>
						<col style="width: 485px">
					</colgroup>
					<thead>
						<tr>
							<th><%=vo.geteTitle()%></th>
						</tr>
					</thead>
					<tbody>
						<tr style="border: transparent">
							<td><img src="<%=request.getContextPath() %><%=vo.geteImageRoute()%>">
						</td>
						</tr>
						<tr>
							<td><%=vo.geteContent()%></td>
						</tr>
						<tr>
							<td>공유하기</td>
						</tr>
					</tbody>
				</table>
				<br>
				<br>
			</div>
			<div>
				<input class="btn btn-primary" type="button" value="목록으로"
					onClick="history.back()">
			</div>
		</div>
	</section>
	<%
		}
	%>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>