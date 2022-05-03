<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/main.css">
  
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
<title>BOBn</title>
</head>

<body>

<%@ include file="/WEB-INF/view/common/template_header.jsp" %>

   <section>
            <!-- bx-silder로 슬라이더 구현 -->
            <div style="border: solid; width: 1200px; height: 300px; margin-left: 80px; margin-top: 80px;">슬라이더</div>

            <!--best shopping-->
            <div class="p_section_container">
            <div class="p_headline_container">
                <div class="p_section_head"><h3>BEST</h3></div>
                <div class="p_section_more">더 보기</div>
                </div>
            <div class="p_article_container">
            <c:forEach items="${bslist}" var="bs">
                <div class="p_article-img">
                <a href="#">
                <img src="<%=request.getContextPath() %><c:out value="${bs.dFile}" />"/></a></div> 
                <div class="p_article-desc">
                    <p class="p_article-desc-title">
                    <c:out value="${bs.pName}" /></p>
                </div>
                <div class="p_article-desc">
                    <p class="p_acticle-desc-detail">
                    <c:out value="${bs.pPrice}" /></p>
                </div>
                </c:forEach>
            </div>
            </div>
        </section>

<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>

</body>
</html>