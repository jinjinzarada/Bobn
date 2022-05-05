<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/main.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/slideshow.css">
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- JSTL -->
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/resources/js/slideshow.js"></script>
<title>BOBn</title>
<style>
.flex-container {
  width:100%; 
  display: flex; 
}
</style>
</head>

<body>

<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<div class="wrap section">
<section>
<div class="section_container">
	<!-- Slideshow container  from w3schools howto -->
	<div class="slideshow-container">
		<!-- Full-width images with number and caption text -->
		<div class="mySlides fade">
		  <div class="numbertext">1 / 3</div>
		  <img src="<%=request.getContextPath()%>/resources/image/ntcc/콘테스트.jpg" style="width:100%">
		  <div class="text"></div>
		</div>
		<div class="mySlides fade">
		  <div class="numbertext">2 / 3</div>
		  <img src="<%=request.getContextPath()%>/resources/image/ntcc/콘테스트.jpg" style="width:100%">
		  <div class="text"></div>
		</div>
		<div class="mySlides fade">
		  <div class="numbertext">3 / 3</div>
		  <img src="<%=request.getContextPath()%>/resources/image/ntcc/콘테스트.jpg" style="width:100%">
		  <div class="text"></div>
		</div>
		<!-- Next and previous buttons -->
		<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
		<a class="next" onclick="plusSlides(1)">&#10095;</a>
		</div>
		<br>
		<!-- The dots/circles -->
		<div style="text-align:center">
			<span class="dot" onclick="currentSlide(1)"></span>
			<span class="dot" onclick="currentSlide(2)"></span>
			<span class="dot" onclick="currentSlide(3)"></span>
		</div>
	</div>
	
	<!--best shopping-->
	<div class="p_section_container">
		<div class="p_headline_container">
		    <div class="p_section_head"><h3>BEST</h3></div>
		    <div class="p_section_more"><div>더 보기</div></div>
	    </div>
	    <div class="flex-container">
			<c:forEach items="${bslist}" var="bs">
			<div class="p_article_container">
			    <div class="p_article-img">
				    <a href="#">
				    <img src="<%=request.getContextPath() %><c:out value="${bs.dFile}" />"/></a>
				</div> 
			    <div class="p_article-desc">
			        <p class="p_article-desc-title"><c:out value="${bs.pName}" /></p>
			        <p class="p_article-desc-detail"><c:out value="${bs.pPrice}" /></p>
			    </div>
		  	</div>
	    	</c:forEach>
    	</div>
	</div>
	
	<!--best shopping-->
	<div class="p_section_container">
		<div class="p_headline_container">
		    <div class="p_section_head"><h3>BEST</h3></div>
		    <div class="p_section_more"><div>더 보기</div></div>
	    </div>
	    <div class="flex-container">
			<c:forEach items="${bslist}" var="bs">
			<div class="p_article_container">
			    <div class="p_article-img">
				    <a href="#">
				    <img src="<%=request.getContextPath() %><c:out value="${bs.dFile}" />"/></a>
				</div> 
			    <div class="p_article-desc">
			        <p class="p_article-desc-title"><c:out value="${bs.pName}" /></p>
			        <p class="p_article-desc-detail"><c:out value="${bs.pPrice}" /></p>
			    </div>
		  	</div>
	    	</c:forEach>
    	</div>
	</div>
	
	<!--best shopping-->
	<div class="p_section_container">
		<div class="p_headline_container">
		    <div class="p_section_head"><h3>BEST</h3></div>
		    <div class="p_section_more"><div>더 보기</div></div>
	    </div>
	    <div class="flex-container">
			<c:forEach items="${bslist}" var="bs">
			<div class="p_article_container">
			    <div class="p_article-img">
				    <a href="#">
				    <img src="<%=request.getContextPath() %><c:out value="${bs.dFile}" />"/></a>
				</div> 
			    <div class="p_article-desc">
			        <p class="p_article-desc-title"><c:out value="${bs.pName}" /></p>
			        <p class="p_article-desc-detail"><c:out value="${bs.pPrice}" /></p>
			    </div>
		  	</div>
	    	</c:forEach>
    	</div>
	</div>
</div>
</section>

<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>

</body>
</html>