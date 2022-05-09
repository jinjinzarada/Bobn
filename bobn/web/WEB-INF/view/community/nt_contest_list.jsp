<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_contest_list.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="java.util.ArrayList"%>
<%@page import="kh.semi.bobn.community.model.vo.NtContestListVo"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>콘테스트_조회</title>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<%
		ArrayList<NtContestListVo> ntccVolist = (ArrayList<NtContestListVo>) request.getAttribute("ntccVolist");
	%>
    <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntcl_article1">
                    <div>
                        <img src="<%=request.getContextPath()%>/resources/image/ntcc/contest.png" id="j_ntcl_concept">
                    </div>
                </article>
                <article id="j_ntcl_article2">
					<button type="button" id="j_ntcl_write_btn"
						onclick="location.href='<%=request.getContextPath()%>/ntccwrite'">참여하기</button>
				</article>
				<article id="j_ntcl_article3">
					<!--db받아온 ntccVolist를 vo에 담아서 반복문 돌리기  -->
					<%
						for (NtContestListVo vo : ntccVolist) {
					%>
					<div id="j_ntcl_contentItem">
						<div class="j_ntcl_article3_img_id"><%=vo.getMemberId()%></div>
						<div class="j_ntcl_article3_img">
							<img src=<%=vo.getCiFile()%>
								onclick="location.href='ntccdetail?cbNo=<%=vo.getCbNo()%>';"
								id="j_ntcl_img_item">
						</div>
						<div class="j_ntcl_article3_text"><%=vo.getCbTitle()%></div>
					</div>
					<%
						}
					%>
				</article>
				<article id="j_ntcl_article4">
					<!-- 페이징 -->
					<div class="j_ntcl_pagination">

						<c:if test="${startPage > 1}">
							<a href="ntcclist?pageNum=${startPage-1}">&laquo;</a>
						</c:if>

						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
							<c:if test="${currentPage eq i}">
								<a href="ntcclist?pageNum=${i}"
									class="j_ntcl_active">${i}</a>
							</c:if>

							<c:if test="${currentPage ne i}">
								<a href="ntcclist?pageNum=${i}">${i}</a>
							</c:if>
						</c:forEach>

						<c:if test="${endPage < pageCnt}">
							<a href="ntcclist?pageNum=${endPage+1}">&raquo;</a>
						</c:if>

					</div>
				</article>
			</section>
		</div>
	</div>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>