<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="kh.semi.bobn.event.model.dao.EventDao"%>
<%@ page import="kh.semi.bobn.event.model.vo.EventVo"%>
<%@ page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<style type="text/css">
* {
	font-family: 'Noto Sans', sans-serif;
}
/* 부트스트랩 반응형 제거 코드 - 전체*/
.container {
	width: 1500px;
	max-width: none !important;
	margin-left: 80.500px;
	margin-right: 80.500px;
}

.p_section_container {
	margin-left: 80.500px;
	margin-right: 80.500px;
	margin-top: 80.500px;
	margin-bottom: 80.500px;
}

.p_section_head {
	color: #343f56;
}

.p_evtable {
	text-decoration: none;
	color: inherit;
}
.p_evtable:hover {
	color: #f54748;
}

.pagination {
  margin-left: 45%;
}
a.page-link {
  color: #f54748;
}

</style>
<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>

	<section>
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
					<c:forEach items="${evlist}" var="evlist">
						<tr>
							<td><c:out value="${evlist.eNo}" /></td>
							<td>
							<a class=p_evtable href="evdetail?eno=${vo.geteNo()}">
							<c:out value="${evlist.eTitle}" /></a></td>
							<td><c:out value="${evlist.eStartDate}" /></td>
							<td><c:out value="${evlist.eEndDate}" /></td>
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
