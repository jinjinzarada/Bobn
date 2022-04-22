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
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<style type="text/css">
 /* 부트스트랩 반응형 제거 코드 - 전체*/
        .container {
            width: 1500px;
            max-width: none!important;
            margin-left: 80.500px;
            margin-right: 80.500px;
        }
 /* section */
        .p_section_container {
            margin-left: 80.500px;
            margin-right: 80.500px;
            margin-top: 80.500px;
            margin-bottom: 80.500px;
        }
        .p_headline_container {
            display: grid;
            grid-template-columns: 1000px 80px;
            grid-template-rows: 30px;
            justify-content: center;
            margin-bottom: 20px;
        }
        .p_section_head {
            color: #343f56;
        }
        .p_section_more {
            text-align: right;
            font-size: 15px;
            color: #f54748;
        }
        .p_article_container {
            display: grid;
            grid-template-columns: 200px 200px 200px 200px 200px;
            grid-template-rows: 200px 90px;
            grid-column-gap: 20px;
            grid-row-gap: 0px;
            justify-content: center;
        }
        .p_article-img {
            border: solid;
            border-bottom: none;
            border-color: #343f56;
            width: 200px;
            height: 200px;
        }
        .p_article-desc {
            border: solid;
            border-color: #343f56;
            width: 200px;
            height: 90px;
        }
        .p_article-desc-title {
            font-size: 16px;
            font-weight: 600;
            color: #343f56;
        }
        .p_article-desc-detail {
            font-size: 15px;
            font-weight: 400;
            color: #343f56;
        }
</style>

<title>bobn</title>

</head>

<body>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/common/template_header.jsp" %>

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
                <a href="#"> <img src="/bobn/web/resources/image/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="/bobn/web/resources/image/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="/bobn/web/resources/image/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="/bobn/web/resources/image/rabbit.png" class="p_article-img"></a>
                <a href="#"> <img src="/bobn/web/resources/image/rabbit.png" class="p_article-img"></a>
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

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="view/common/template_footer.jsp" %>


</body>
</html>