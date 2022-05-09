<%@page import="kh.semi.bobn.community.model.vo.NtRecipeListVo"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_recipe_list.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피_조회</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<%
		ArrayList<NtRecipeListVo> ntrcVolist = (ArrayList<NtRecipeListVo>) request.getAttribute("ntrcVolist");
	%>
<div class="j_wrap content">
		<div id="j_content">
			<section>
				<article id="j_ntrl_article1">
					<!-- 컨셉버튼 -->
					<div class="j_ntrl_concept_btn_wrap">
						<button type="button" class="j_ntrl_concept_btn" id="j_ntrl_total"
							<c:if test="${rbConcept eq '4'}">style="background-color : #F54748; color : white;"</c:if>>전체</button>
						<button type="button" class="j_ntrl_concept_btn" id="j_ntrl_birth"
							<c:if test="${rbConcept eq '1'}">style="background-color : #F54748; color : white;"</c:if>>중식</button>
						<button type="button" class="j_ntrl_concept_btn" id="j_ntrl_party"
							<c:if test="${rbConcept eq '2'}">style="background-color : #F54748; color : white;"</c:if>>일식</button>
						<button type="button" class="j_ntrl_concept_btn" id="j_ntrl_snack"
							<c:if test="${rbConcept eq '3'}">style="background-color : #F54748; color : white;"</c:if>>양식</button>
					</div>
				</article>
				<article id="j_ntrl_article2">
					<button type="button" id="j_ntrl_write_btn"
						onclick="location.href='<%=request.getContextPath()%>/ntrcwrite'">글쓰기</button>
				</article>
				<article id="j_ntrl_article3">
					<!--db받아온 ntrcVolist를 vo에 담아서 반복문 돌리기  -->
					<%
						for (NtRecipeListVo vo : ntrcVolist) {
					%>
					<div id="j_ntrl_contentItem">
						<div class="j_ntrl_article3_img_id"><%=vo.getMemberId()%></div>
						<div class="j_ntrl_article3_img">
							<img src=<%=vo.getRiFile()%>
								onclick="location.href='ntrcdetail?rbNo=<%=vo.getRbNo()%>';"
								id="j_ntrl_img_item">
						</div>
						<div class="j_ntrl_article3_text"><%=vo.getRbTitle()%></div>
					</div>
					<%
						}
					%>
				</article>
				<article id="j_ntrl_article4">
					<!-- 페이징 -->
					<div class="j_ntrl_pagination">

						<c:if test="${startPage > 1}">
							<a href="ntrclist?pageNum=${startPage-1}&rbConcept=${rbConcept}">&laquo;</a>
						</c:if>

						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
							<c:if test="${currentPage eq i}">
								<a href="ntrclist?pageNum=${i}&rbConcept=${rbConcept}"
									class="j_ntrl_active">${i}</a>
							</c:if>

							<c:if test="${currentPage ne i}">
								<a href="ntrclist?pageNum=${i}&rbConcept=${rbConcept}">${i}</a>
							</c:if>
						</c:forEach>

						<c:if test="${endPage < pageCnt}">
							<a href="ntrclist?pageNum=${endPage+1}&rbConcept=${rbConcept}">&raquo;</a>
						</c:if>

					</div>
				</article>
			</section>
		</div>
	</div>
	<script>
		//컨셉별 화면 조회
		$("#j_ntrl_total").on("click", function() {
			location.href = "/bobn/ntrclist?rbConcept=4";
		});

		$("#j_ntrl_birth").on("click", function() {
			location.href = "/bobn/ntrclist?rbConcept=1";
		});

		$("#j_ntrl_party").on("click", function() {
			location.href = "/bobn/ntrclist?rbConcept=2";
		});

		$("#j_ntrl_snack").on("click", function() {
			location.href = "/bobn/ntrclist?rbConcept=3";
		});
	</script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>