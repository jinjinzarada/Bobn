<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/event/event.css">

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ page import="kh.semi.bobn.event.model.dao.EventDao"%>
<%@ page import="kh.semi.bobn.event.model.vo.EventVo"%>
<%@ page import="java.util.ArrayList"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<body>
	<section>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
		<div class="p_section_container">
			<div class="p_headline_container">
				<div class="p_section_head">
					<h3>EVENT</h3>
					<br> <br>
				</div>
			</div>
			<table class="table">
				<colgroup>
					<col style="width: 80px">
					<col style="width: 263px">
					<col style="width: 152px">
					<col style="width: 135px">
				</colgroup>
				<thead>
					<tr>
						<th>글번호</th>
						<th>제목</th>
						<th>시작일</th>
						<th>종료일</th>
					</tr>
					<c:forEach items="${evlist}" var="vo">
						<tr>
							<td><c:out value="${vo.eNo}" /></td>
							<td>
							<a class=p_evtable href="evdetail?eno=${vo.eNo}">
							<c:out value="${vo.eTitle}" /></a></td>
							<td><c:out value="${vo.eStartDate}" /></td>
							<td><c:out value="${vo.eEndDate}" /></td>
						</tr>
					</c:forEach>
				</thead>
			</table>
		</div>
		</section>
	<div class="p_section_container">
	<nav aria-label="Page navigation example">
		<ul class="pagination">
		<c:if test="${startPage > 1}">
		<li class="page-item">
			<a class="page-link" href="event?pageNum=${startPage-1}" aria-label="Previous">
			 <span aria-hidden="true">&laquo;</span>
			</a></li>
		</c:if>
		<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
			<li class="page-item"><a class="page-link" href="event?pageNum=${i}">${i}</a></li>
		</c:forEach>
		<c:if test="${endPage < pageCnt}">
		<li class="page-item">
			<a class="page-link" href="event?pageNum=${endPage+1}" aria-label="Next">
			<span aria-hidden="true">&raquo;</span>
			</a></li>
		</c:if>
	</ul>
	</nav>
	</div>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>
