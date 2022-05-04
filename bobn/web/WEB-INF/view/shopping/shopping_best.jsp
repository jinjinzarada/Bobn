<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopping_best.css">
<%@page import="kh.semi.bobn.shopping.model.vo.ShoppingVo"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BEST페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<body>
<%
ArrayList<ShoppingVo> volist = (ArrayList<ShoppingVo>)request.getAttribute("volist");
%>
<div id="c_best_header">
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
</div>
<br>
<br>
     <div class="c_wrap content">
        <div id="c_content">
            <section>
                <article id="c_best_article0">
                    <p>BEST상품</p>
                    <br>
                </article>
                <br>
                <br>
                <br>
                <article id="c_best_article1">
                	<div class="c_best_concept_btn_wrap">
						<button type="button" class="c_best_country_btn" id="c_best_kr" 
						<c:if test="${pCountry eq '6'}">style="background-color : #F54748; color : white;"</c:if>>한식</button>
						<button type="button" class="c_best_country_btn" id="c_best_west" 
						<c:if test="${pCountry eq '1'}">style="background-color : #F54748; color : white;"</c:if>>양식</button>
						<button type="button" class="c_best_country_btn" id="c_best_chi" 
						<c:if test="${pCountry eq '2'}">style="background-color : #F54748; color : white;"</c:if>>중식</button>
						<button type="button" class="c_best_country_btn" id="c_best_ja" 
						<c:if test="${pCountry eq '3'}">style="background-color : #F54748; color : white;"</c:if>>일식</button>
						<button type="button" class="c_best_country_btn" id="c_best_east" 
						<c:if test="${pCountry eq '4'}">style="background-color : #F54748; color : white;"</c:if>>동남아</button>
						<button type="button" class="c_best_country_btn" id="c_best_etc" 
						<c:if test="${pCountry eq '5'}">style="background-color : #F54748; color : white;"</c:if>>기타</button>
					</div>
                </article>
                <br>
                <br>
                <ul class="c_best_menu">
                    <li>
                      <a href="#" id="c_best_select1">추천순 &#9660;</a>
                      <ul class="c_depth_1">
                        <li><a href="#">가격순</a></li>
                        <li><a href="#">판매순</a></li>
                        <li><a href="#">추천순</a></li>
                      </ul>
                    </li>
                </ul>
                <br>
                <br>
                <article id="c_best_article2">
                    <table>
                        <tr>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/seaweedsoup.png" alt="" width="290"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/tofustew.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/grilledeel.png" alt="" width="287"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">소고기 미역국 / &#8361;5,000</td>
                            <td class="c_best_article2_text">순두부찌개 / &#8361;5,000</td>
                            <td class="c_best_article2_text">장어구이 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">일반배송</td>
                            <td class="c_best_article2_text">일반배송 / 품절되었습니다.</td>
                            <td class="c_best_article2_text">일반배송 / 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/bulgogi.png" alt="" width="275"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/steak.png" alt="" width="295"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/rosepasta.png" alt="" width="285"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">불고기 전골 / &#8361;20,000</td>
                            <td class="c_best_article2_text">스테이크 / &#8361;5,000</td>
                            <td class="c_best_article2_text">로제파스타 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">일반배송</td>
                            <td class="c_best_article2_text">일반배송 / 품절되었습니다.</td>
                            <td class="c_best_article2_text">일반배송 / 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/boodae.png" alt="" width="290"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/eggta.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_best_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/potatosuzebee.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">부대찌개 / &#8361;5,000</td>
                            <td class="c_best_article2_text">에그타르트 / &#8361;5,000</td>
                            <td class="c_best_article2_text">감자수제비 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_best_article2_text">일반배송</td>
                            <td class="c_best_article2_text">일반배송 / 품절되었습니다.</td>
                            <td class="c_best_article2_text">일반배송 / 품절되었습니다.</td>
                        </tr>
                    </table>
                </article>
                <br>
                <br>
                <!-- 페이징 -->
                <article id="c_best_article3">
					<div class="c_best_pagination">
					
						<c:if test="${startPage > 1}">
						<a href="shopblist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}" class="j_ntpl_active">${i}</a>
						</c:if>
						
						<c:if test="${currentPage ne i}">
						<a href="shopblist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						</c:forEach>
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopblist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>
					</div>
				</article>
            </section>
        </div>
        <br>
        <br>
    <div id="c_best_footer">
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
	</div>
    </div>
    <script>
		//나라별 화면 조회
	 	$("#c_best_kr").on("click", function(){
	 		location.href="/bobn/shopblist?pCountry=6";
		});
	
		$("#c_best_west").on("click", function(){
			location.href="/bobn/shopblist?pCountry=1";
		});
		
		$("#c_best_chi").on("click", function(){
			location.href="/bobn/shopblist?pCountry=2";
		});
		
		$("#c_best_ja").on("click", function(){
			location.href="/bobn/shopblist?pCountry=3";
		}); 
		
		$("#c_best_east").on("click", function(){
			location.href="/bobn/shopblist?pCountry=4";
		});
		
		$("#c_best_etc").on("click", function(){
			location.href="/bobn/shopblist?pCountry=5";
		}); 
	</script>
</body>
</html>