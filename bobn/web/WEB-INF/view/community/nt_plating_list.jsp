<%@page import="kh.semi.bobn.community.model.vo.NtPlatingListVo"%>
<%@page import="kh.semi.bobn.community.model.vo.NtPlatingContentVo"%>
<%@page import="java.util.ArrayList"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_plating_list.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이팅_조회</title>
</head>
<!-- 받아온 db가 담겨있는 ntpcVolist를 화면에 뿌려줄 예정 -->
<%
ArrayList<NtPlatingListVo> ntpcVolist = (ArrayList<NtPlatingListVo>)request.getAttribute("ntpcVolist");
%>
<body>
	<div class="j_wrap content">
		<div id="j_content">
			<section>
				<article id="j_ntpl_article0">
					<p>플레이팅</p>
				</article>
				<article id="j_ntpl_article1">
					<div class="j_ntpl_concept_btn_wrap">
						<button type="button" class="j_ntpl_concept_btn"
							id="j_ntpl_checked">생일</button>
						<button type="button" class="j_ntpl_concept_btn">홈파티</button>
						<button type="button" class="j_ntpl_concept_btn">안주</button>
					</div>
				</article>
				<article id="j_ntpl_article2">
					<button type="button" id="j_ntpl_write_btn"
						onclick="location.href='<%=request.getContextPath()%>/ntpcwrite'">글쓰기</button>
				</article>
				<article id="j_ntpl_article3">

					<!--db받아온 ntpcVolist를 vo에 담아서 반복문 돌리기  -->
					<% for(NtPlatingListVo vo : ntpcVolist) {%>
					<div>
						<div class="j_ntpl_article3_img_id"><%=vo.getMemberId() %></div>
						<div class="j_ntpl_article3_img">
							<img src=<%=vo.getPiFile() %> alt=""
								onclick="location.href='어디로이동할지적어야함';" id="j_ntpl_img_item">
						</div>
						<div class="j_ntpl_article3_text">ntplCnt / ntprCnt</div>
						<div class="j_ntpl_article3_text"><%=vo.getPbTitle() %></div>
					</div>
					<%} %>

				</article>
				<article id="j_ntpl_article4">
					<div class="j_ntpl_pagination">
						<a href="#">&laquo;</a> <a href="#" class="j_ntpl_active">1</a> <a
							href="#">2</a> <a href="#">3</a><a href="#">&raquo;</a>
					</div>
				</article>
			</section>
		</div>
	</div>
</body>
</html>