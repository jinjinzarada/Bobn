<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/event/evdetail.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="kh.semi.bobn.event.model.vo.EventVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<head>
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
	<c:if test="${empty eVo}">
		<p>해당 글이 없습니다.</p>
	</c:if>
	<c:if test="${not empty eVo}">
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
							<th>${eVo.eTitle }</th>
						</tr>
					</thead>
					<tbody>
						<c:if test="${not empty eVo.eImageRoute}">
						<tr style="border: transparent">
							<td><img src="<%=request.getContextPath() %>${eVo.eImageRoute}">
						</td>
						</tr>
						</c:if>
						<tr>
							<td>${eVo.eContent }</td>
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
		</c:if>
	</section>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>