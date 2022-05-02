<%@page import="kh.semi.bobn.community.model.vo.NtPlatingListVo"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_plating_list.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이팅_조회</title>
</head>
<body>
<!-- 받아온 db가 담겨있는 ntpcVolist를 화면에 뿌려줄 예정 -->
<%
ArrayList<NtPlatingListVo> ntpcVolist = (ArrayList<NtPlatingListVo>)request.getAttribute("ntpcVolist");
%>
	<div class="j_wrap content">
		<div id="j_content">
			<section>
				<article id="j_ntpl_article0">
					<p>플레이팅</p>
				</article>
				<article id="j_ntpl_article1">
				<!-- 컨셉버튼 -->
					<div class="j_ntpl_concept_btn_wrap">
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_total" 
						<c:if test="${pbConcept eq '4'}">style="background-color : #F54748; color : white;"</c:if>>전체</button>
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_birth" 
						<c:if test="${pbConcept eq '1'}">style="background-color : #F54748; color : white;"</c:if>>생일</button>
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_party" 
						<c:if test="${pbConcept eq '2'}">style="background-color : #F54748; color : white;"</c:if>>홈파티</button>
						<button type="button" class="j_ntpl_concept_btn" id="j_ntpl_snack" 
						<c:if test="${pbConcept eq '3'}">style="background-color : #F54748; color : white;"</c:if>>안주</button>
					</div>
				</article>
				<article id="j_ntpl_article2">
					<button type="button" id="j_ntpl_write_btn"
						onclick="location.href='<%=request.getContextPath()%>/ntpcwrite'">글쓰기</button>
				</article>
				<article id="j_ntpl_article3">
					<!--db받아온 ntpcVolist를 vo에 담아서 반복문 돌리기  -->
					<% for(NtPlatingListVo vo : ntpcVolist) {%>
					<div id="j_ntpl_contentItem">
						<div class="j_ntpl_article3_img_id"><%=vo.getMemberId() %></div>
						<div class="j_ntpl_article3_img">
							<img src=<%=vo.getPiFile() %> onclick="location.href='ntpcdetail?pbNo=<%=vo.getPbNo() %>';" id="j_ntpl_img_item">
						</div>
						<div class="j_ntpl_article3_text">ntplCnt / ntprCnt</div>
						<div class="j_ntpl_article3_text"><%=vo.getPbTitle() %></div>
						<!--TODO : 나중에 지워야함  -->
						<div class="j_ntpl_article3_text"><%=vo.getPbConcept() %></div>
						<div class="j_ntpl_article3_text"><%=vo.getPbNo() %></div>
					</div>
					<%} %>
				</article>
				<article id="j_ntpl_article4">
				<!-- 페이징 -->
					<div class="j_ntpl_pagination">
					
						<c:if test="${startPage > 1}">
						<a href="ntpclist?pageNum=${startPage-1}&pbConcept=${pbConcept}">&laquo;</a>
						</c:if>
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="ntpclist?pageNum=${i}&pbConcept=${pbConcept}" class="j_ntpl_active">${i}</a>
						</c:if>
						
						<c:if test="${currentPage ne i}">
						<a href="ntpclist?pageNum=${i}&pbConcept=${pbConcept}">${i}</a>
						</c:if>
						</c:forEach>
						
						<c:if test="${endPage < pageCnt}">
						<a href="ntpclist?pageNum=${endPage+1}&pbConcept=${pbConcept}">&raquo;</a>
						</c:if>
						
					</div>
				</article>
			</section>
		</div>
	</div>
	<script>
		//컨셉별 화면 조회
	 	$("#j_ntpl_total").on("click", function(){
	 		location.href="/bobn/ntpclist?pbConcept=4";
		});
	
		$("#j_ntpl_birth").on("click", function(){
			location.href="/bobn/ntpclist?pbConcept=1";
		});
		
		$("#j_ntpl_party").on("click", function(){
			location.href="/bobn/ntpclist?pbConcept=2";
		});
		
		$("#j_ntpl_snack").on("click", function(){
			location.href="/bobn/ntpclist?pbConcept=3";
		}); 
		 
		
	</script>
</body>
</html>