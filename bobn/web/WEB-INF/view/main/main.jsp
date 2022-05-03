<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/main.css">
  
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

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

            <!--best -->
            <div class="p_section_container">
            <div class="p_headline_container">
                <div class="p_section_head"><h3>BEST</h3></div>
                <div class="p_section_more">더 보기</div>
                </div>
            <div class="p_article_container">
                <!-- 썸네일 이미지 -->
                <a href="#"> <img src="<%=request.getContextPath() %>/resources/image/common_main/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="<%=request.getContextPath() %>/resources/image/common_main/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="<%=request.getContextPath() %>/resources/image/common_main/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="<%=request.getContextPath() %>/resources/image/common_main/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="<%=request.getContextPath() %>/resources/image/common_main/rabbit.png" class="p_article-img"></a>
                <!-- 썸네일 설명 -->
                <div class="p_article-desc">
                    <p class="p_article-desc-title">&nbsp; &nbsp; 상품명</p>
                    <p class="p_acticle-desc-detail">&nbsp; &nbsp; 설명 설명 설명</p>
                </div>
                <div class="p_article-desc">
                    <p class="p_article-desc-title">&nbsp; &nbsp; 상품명</p>
                    <p class="p_acticle-desc-detail">&nbsp; &nbsp; 설명 설명 설명</p>
                </div>
                <div class="p_article-desc">
                    <p class="p_article-desc-title">&nbsp; &nbsp; 상품명</p>
                    <p class="p_acticle-desc-detail">&nbsp; &nbsp; 설명 설명 설명</p>
                </div>
                <div class="p_article-desc">
                    <p class="p_article-desc-title">&nbsp; &nbsp; 상품명</p>
                    <p class="p_acticle-desc-detail">&nbsp; &nbsp; 설명 설명 설명</p>
                </div>
                <div class="p_article-desc">
                    <p class="p_article-desc-title">&nbsp; &nbsp; 상품명</p>
                    <p class="p_acticle-desc-detail">&nbsp; &nbsp; 설명 설명 설명</p>
                </div>
            </div>
        </div>
        </section>

<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>

</body>
</html>