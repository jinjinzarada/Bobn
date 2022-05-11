<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/curation/recipe.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="kh.semi.bobn.curation.model.vo.RecipeVo"%>
<%@page import="kh.semi.bobn.curation.model.vo.RecipeRecommentVo"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BOBn-레시피</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<!-- 받아온 db가 담겨있는 ntpcVolist를 화면에 뿌려줄 예정 -->

<%
ArrayList<RecipeVo> detailVolist = (ArrayList<RecipeVo>)request.getAttribute("detailVolist");
%>
<%
RecipeRecommentVo recVo = (RecipeRecommentVo)request.getAttribute("recVo");
%>
	<div class="l_wrap content">
		<div id="l_content">
			<section>
				<article id="l_recipe_article1">
				<!-- 컨셉버튼 -->
					<div class="l_recipe_concept_btn_wrap">
						<button type="button" class="l_recipe_concept_btn" id="l_recipe_total" 
						<c:if test="${rConcept eq '4'}">style="background-color : #F54748; color : white;"</c:if>>전체</button>
						<button type="button" class="l_recipe_concept_btn" id="l_recipe_birth" 
						<c:if test="${rConcept eq '1'}">style="background-color : #F54748; color : white;"</c:if>>자취(심플)</button>
						<button type="button" class="l_recipe_concept_btn" id="l_recipe_party" 
						<c:if test="${rConcept eq '2'}">style="background-color : #F54748; color : white;"</c:if>>가족(상차림)</button>
						<button type="button" class="l_recipe_concept_btn" id="l_recipe_snack" 
						<c:if test="${rConcept eq '3'}">style="background-color : #F54748; color : white;"</c:if>>홈파티(대량)</button>
					</div>
				</article>
				<article id="l_recipe_article2">
					<button type="button" id="l_recipe_write_btn"
						onclick="location.href='<%=request.getContextPath()%>/recwrite'">글쓰기</button>
				</article>
				<article id="l_recipe_article3">
					<!--db받아온 ntpcVolist를 vo에 담아서 반복문 돌리기  -->
					<% for(RecipeVo vo : detailVolist) {%>
					<div id="l_recipe_contentItem">
						<div class="l_recipe_article3_img_id">BOB&</div>
						<div class="l_recipe_article3_img">
							<img src=<%=vo.getrImgloc() %> onclick="location.href='recipedetail?rNo=<%=vo.getrNo()%>';" id="l_recipe_img_item">
						</div>
						<div class="l_recipe_article3_text"><h4><%=vo.getrTitle() %></h4></div>
						
					</div>
					<%} %>
				</article>
				<article id="l_recipe_article4">
				<!-- 페이징 -->
					<div class="l_recipe_pagination">
					
						<c:if test="${startPage > 1}">
						<a href="curreclist?pageNum=${startPage-1}&rConcept=${rConcept}">&laquo;</a>
						</c:if>
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="curreclist?pageNum=${i}&rConcept=${rConcept}" class="l_recipe_active">${i}</a>
						</c:if>
						
						<c:if test="${currentPage ne i}">
						<a href="curreclist?pageNum=${i}&rConcept=${rConcept}">${i}</a>
						</c:if>
						</c:forEach>
						
						<c:if test="${endPage < pageCnt}">
						<a href="curreclist?pageNum=${endPage+1}&rConcept=${rConcept}">&raquo;</a>
						</c:if>
						
					</div>
				</article>
			</section>
		</div>
	</div>
	<script>
		//컨셉별 화면 조회
	 	$("#l_recipe_total").on("click", function(){
	 		location.href="/bobn/curreclist?rConcept=4";
		});
	
		$("#l_recipe_birth").on("click", function(){
			location.href="/bobn/curreclist?rConcept=1";
		});
		
		$("#l_recipe_party").on("click", function(){
			location.href="/bobn/curreclist?rConcept=2";
		});
		
		$("#l_recipe_snack").on("click", function(){
			location.href="/bobn/curreclist?rConcept=3";
		}); 
	</script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
</body>
</html>