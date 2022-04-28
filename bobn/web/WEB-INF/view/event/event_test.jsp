<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- JSTL -->
<%@ page import="kh.semi.bobn.event.model.dao.EventDao" %>
<%@ page import="kh.semi.bobn.event.model.vo.EventVo" %>
<%@ page import="java.util.ArrayList" %>

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
</style>
<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	
	<!-- 전체 목록에서 페이징 처리를 위한 변수 선언 -->
	<%	
	// 화면에 여질 게시글 개수 지정 
	int pageSize =10;
	// 현재 카운터를 클릭한 번호값을 읽어옴
	String pageNum = request.getParameter("pageNum");
	// 처음 열면 pageNum값이 없어서 Null 처리
	if(pageNum==null) {
		pageNum="1";
	}
	int count = 0; // 전체 글의 갯수를 저장
	int number = 0; // 페이징 넘버링 변수 
	
	//현재 보고자 하는 페이지 숫자를 저장 
	int currentPage=Integer.parseInt(pageNum);
	//전체 게시글의 내용을 jsp로가져옴 
	EventDao dao = new EventDao();
	// 전체 게시글의 갯수를 읽어들이는 메소드 호출 (dao)
	count = dao.getAllcount();
	//현재 페이지에 보여줄 시작 번호 설정 = DB에서 불러올 시작 번호
			int startRow = (currentPage-1)*pageSize+1;
			int endRow = currentPage * pageSize;
	//10개를 기준으로 게시글 리턴 받아주는 메소드 호출
	ArrayList<EventVo> cntlist = dao.evlist(startRow, endRow);
	//테이블에 표시할 번호 지정
	number = count  - (currentPage-1)*pageSize;
	%>
	
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
						<td><c:out value="${evlist.eNo}"/></td>
						<td><c:out value="${evlist.eTitle}"/></td>
						<td><c:out value="${evlist.eStartDate}"/></td>
						<td><c:out value="${evlist.eEndDate}"/></td>
					</tr>
				</c:forEach>
				</thead>
			</table>
		</div>
	</section>
	
		<% 
			if(count > 0){
				int pageCount = count /pageSize + (count%pageSize == 0 ? 0 : 1 );//페이징 숫자를 얼마까지 보여줄건지 결정 
				
				//시작 페이지 숫자를 설정 
				int startPage = 1;
				if(currentPage%10 !=0){
					startPage = ((int)(currentPage/10))*10+1;
				}else{
					startPage = ((int)(currentPage/10)-1)*10+1;	
				}
				
				int pageBlock=10;//페이징 처리 숫자 
				int endPage = startPage+pageBlock-1;//화면에 보여질 페이지의 마지막 숫자 
				
				 if(endPage > pageCount) endPage = pageCount;
				
				//이전 링크 	 
				if(startPage > 10){
		%>				
					<a href="event_test.jsp?pageNum=<%=startPage-10%>">[이전]</a>
		<%			
				}	 
				//페이징 처리 
				for(int i=startPage;i<=endPage;i++){
		%>			
					<a href="event_test.jsp?pageNum=<%=i%>">[<%=i %>]</a>
		<% 			
				}
				//다음 링크
				if(endPage < pageCount){
		%>		
				<a href="event_test.jsp?pageNum=<%=startPage+10%>">[다음]</a>	
		<% 
				}	
			}
		%>

	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>

</html>
