<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/curation/recipe_detail.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@page import="kh.semi.bobn.curation.model.vo.RecipeRecommentVo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kh.semi.bobn.curation.model.vo.RecipeImageVo"%>
<%@page import="kh.semi.bobn.curation.model.vo.RecipeDetailVo"%>
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
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<%
		RecipeDetailVo detailVo = (RecipeDetailVo)request.getAttribute("detailVo");
		ArrayList<RecipeImageVo> imgVolist = (ArrayList<RecipeImageVo>)request.getAttribute("imgVolist");
		ArrayList<RecipeRecommentVo> recVolist = (ArrayList<RecipeRecommentVo>)request.getAttribute("recVolist");
		RecipeRecommentVo recVo = (RecipeRecommentVo)request.getAttribute("recVo");
	%>
	<div class="l_wrap content">
		<div id="l_content">
			<section>
				<article id="l_recdetail_article1">
					<ul>
						<li id="l_recdetail_member_id">BOB&</li>
						<li id="l_recdetail_delete">
							<button id="l_recdetail_delete_btn" rNo="<%=detailVo.getrNo() %>">삭제하기</button>
						</li>
					</ul>
				</article>
				<article id="l_recdetail_article2">
					<table>
						<tr>
							<td class="l_recdetail_article2_img"><h2><%=detailVo.getrTitle() %></h2></td>
						</tr>
						<% for(RecipeImageVo imgVo : imgVolist) {%>
						<tr>
							<td class="l_recdetail_article2_img slides"><img
								src=<%=imgVo.getImgLoc() %> id="l_recdetail_detail_img">
								<!-- <button class="l_recdetail_slides_l" onclick="plusDivs(-1)">&laquo;</button>
								<button class="l_recdetail_slides_r" onclick="plusDivs(1)">&raquo;</button> -->
							</td>
						</tr>
						<%} %>

						<tr>
							<td class="l_recdetail_article2_img"><%=detailVo.getrContent() %></td>
						</tr>
						<tr>
							<td class="l_recdetail_article2_img">
								<ul>
									<li id="l_recdetail_recCnt">댓글 : &nbsp; <a id="l_recdetail_cnt"><%=recVo.getRecCnt() %></a>
									</li>
								</ul>
							</td>

						</tr>
						<tr>
							<td class="l_recdetail_article2_img">
								<form id="l_frmRecomment">
									<input type="hidden" name="rNo" value="<%=detailVo.getrNo() %>">
									<input type="hidden" name="memberId" id="memberId" value="${ssUserVo.mId}">									
									<input type="text" name="recContent" id="l_recdetail_recomment">
									<button type="button" id="l_recdetail_submit_btn">댓글등록</button>
								</form>
							</td>
						</tr>
					</table>
				</article>
				<article id="l_recdetail_article3">
					<% for(RecipeRecommentVo vo : recVolist) {%>
					<table>
						<tr id="l_recdetail_memberid">
							<td><%=vo.getMemberId() %></td>
						</tr>
						<tr id="l_recdetail_date">
							<td><%=vo.getRecDate() %></td>
						</tr>
						<tr>
							<td><%=vo.getRecContent() %></td>
						</tr>
					</table>
					<hr>
					<%} %>
				</article>
			</section>
		</div>
	</div>
	<script>
	
	$("#l_recdetail_submit_btn").click(function(){
        var checkSS = '${ssUserVo.mId }';   // 현 시점에 로그인 session 확인
        // $("#memberId").val() == false  // 이페이지 진입시점 session
        if($("#memberId").val() == false || checkSS == false){
            if(confirm('로그인 후 이용하실 수 있는 서비스입니다. 로그인 하시겠습니까?')){location.href="<%=request.getContextPath()%>/login";}
        }else{
        	l_frmRecomment.action="recrewrite";
        	l_frmRecomment.method="post";
        	l_frmRecomment.submit();
        }
    }); 
	$('#l_recdetail_recomment').keypress(function(event){
	     if ( event.which == 13 ) {
	         $('#l_recdetail_submit_btn').click();
	         return false;
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
    //삭제하기 온클릭 이벤트
    $("#l_recdetail_delete_btn").on("click",function(){
    	var rNo = $(this).attr("rNo");
    	if(confirm("게시글을 삭제하시겠습니까?")){
    		location.href="recipedelete?rNo="+rNo;
    	}
    });
    
    
    </script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>