
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/mypage/mypage.css">

<%@page import="kh.semi.bobn.mypage.model.vo.MypageVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<!DOCTYPE html>
<html lang="ko">
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<title>My Page</title>

</head>

<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<section>
		<div class="p_section_container">
			<br>
			<h3>마이페이지</h3>
			<br>
			<h4 class="p_mypage_head">회원 정보 보기</h4>
			<table class="table table-borderless" style="width=30%">
				<tbody>
					<tr style="width:400px;">
						<th scope="row"><b>아이디</b></th>
						<td>${ssUserVo.mId }</td>
					</tr>
					<tr>
						<th scope="row"><b>비밀번호</b></th>
						<td>${ssUserVo.mpassword }</td>
					</tr>
					<tr>
						<th scope="row"><b>이름</b></th>
						<td>${ssUserVo.mname }</td>
					</tr>
					<tr>
						<th scope="row"><b>생년월일</b></th>
						<td>${ssUserVo.mbdate }</td>
					</tr>
					<tr>
						<th scope="row"><b>성별</b></th>
						<td>${ssUserVo.mgender }</td>
					</tr>
					<tr>
						<th scope="row"><b>이메일</b></th>
						<td>${ssUserVo.memail }</td>
					</tr>
					<tr>
						<th scope="row"><b>전화번호</b></th>
						<td>${ssUserVo.mphone }</td>
					</tr>
				</tbody>
			</table>
			<input class="btn btn-primary" type="submit" value="메인으로">
		</div>

	</section>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>