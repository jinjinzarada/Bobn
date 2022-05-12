<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_recipe_detail.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="kh.semi.bobn.community.model.vo.NtRecipeRecommentVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kh.semi.bobn.community.model.vo.NtRecipeImgVo"%>
<%@page import="kh.semi.bobn.community.model.vo.NtRecipeContentVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피_상세조회</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
 	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<%
NtRecipeContentVo ntrcVo = (NtRecipeContentVo)request.getAttribute("ntrcVo");
ArrayList<NtRecipeImgVo> ntriVolist = (ArrayList<NtRecipeImgVo>)request.getAttribute("ntriVolist");
ArrayList<NtRecipeRecommentVo> ntrrVolist = (ArrayList<NtRecipeRecommentVo>)request.getAttribute("ntrrVolist");
NtRecipeRecommentVo ntrrVo = (NtRecipeRecommentVo)request.getAttribute("ntrrVo");
%>
	<div class="j_wrap content">
		<div id="j_content">
			<section>
				<article id="j_ntrd_article1">
					<ul>
						<li id="j_ntrd_member_id"><%=ntrcVo.getMemberId() %></li>
						<li id="j_ntrd_delete">
							<button id="j_ntrd_delete_btn" rbNo="<%=ntrcVo.getRbNo() %>">삭제하기</button>
						</li>
					</ul>
				</article>
				<article id="j_ntrd_article2">
					<table>
						<tr>
							<td class="j_ntrd_article2_img">제목 : <%=ntrcVo.getRbTitle() %></td>
						</tr>
						<% for(NtRecipeImgVo vo : ntriVolist) {%>
						<tr>
							<td class="j_ntrd_article2_img slides"><img
								src=<%=vo.getRiFile() %> id="j_ntrd_detail_img">
								<button class="j_ntrd_slides_l" onclick="plusDivs(-1)">&laquo;</button>
								<button class="j_ntrd_slides_r" onclick="plusDivs(1)">&raquo;</button>
							</td>
						</tr>
						<%} %>

						<tr>
							<td class="j_ntrd_article2_img">내용 : <%=ntrcVo.getRbContent() %></td>
						</tr>
						<tr>
							<td class="j_ntrd_article2_img">
								<ul>
									<li id="j_ntrd_ntrrCnt">댓글 : &nbsp; <a id="j_ntrd_cnt"><%=ntrrVo.getRrRecommentCnt() %></a>
									</li>
								</ul>
							</td>

						</tr>
						<tr>
							<td class="j_ntrd_article2_img">
								<form id="j_ntrd_frmRecomment">
									<input type="hidden" name="rbNo" value="<%=ntrcVo.getRbNo() %>">
									<input type="hidden" name="memberId" id="memberId" value="${ssUserVo.mId }">
									<input type="text" name="rrContent" id="j_ntrd_recomment">
									<button type="button" id="j_ntrd_submit_btn">댓글등록</button>
								</form>
							</td>
						</tr>
					</table>
				</article>
				<article id="j_ntrd_article3">
					<% for(NtRecipeRecommentVo vo : ntrrVolist) {%>
					<table>
						<tr id="j_ntrd_memberid">
							<td><%=vo.getMemberId() %></td>
						</tr>
						<tr id="j_ntrd_date">
							<td><%=vo.getRrDate() %></td>
						</tr>
						<tr>
							<td><%=vo.getRrContent() %></td>
						</tr>
					</table>
					<hr>
					<%} %>
				</article>
			</section>
		</div>
	</div>
	<script>
	
	$("#j_ntrd_submit_btn").click(function(){
        var checkSS = '${ssUserVo.mId }';   // 현 시점에 로그인 session 확인
        // $("#memberId").val() == false  // 이페이지 진입시점 session
        if($("#memberId").val() == false || checkSS == false){
            if(confirm('로그인 후 이용하실 수 있는 서비스입니다. 로그인 하시겠습니까?')){
            	location.href="<%=request.getContextPath()%>/login";}
        }else{
        	j_ntrd_frmRecomment.action="ntrrwrite";
			j_ntrd_frmRecomment.method="post";
			j_ntrd_frmRecomment.submit();
        }
    });
	//삭제하기 온클릭 이벤트
    $("#j_ntrd_delete_btn").on("click",function(){
    	var checkSS = '${ssUserVo.mId }';   // 현 시점에 로그인 session 확인
    	var rbNo = $(this).attr("rbNo");
    	if($("#memberId").val() == false || checkSS == false){
            if(confirm('로그인 후 이용하실 수 있는 서비스입니다. 로그인 하시겠습니까?')){
            	location.href="<%=request.getContextPath()%>/login";}
    	} else if(confirm("게시글을 삭제하시겠습니까?")){
    		location.href="ntrcdelete?rbNo="+rbNo;
    	}
    });
	
    //슬라이드
    var slideIndex = 1;
    showDivs(slideIndex);

    function plusDivs(n) {
      showDivs(slideIndex += n);
    }

    function showDivs(n) {
      var i;
      var x = document.getElementsByClassName("slides");
      if (n > x.length) {slideIndex = 1}
      if (n < 1) {slideIndex = x.length}
      for (i = 0; i < x.length; i++) {
         x[i].style.display = "none";  
      }
      x[slideIndex-1].style.display = "block";  
    }
    
    </script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>