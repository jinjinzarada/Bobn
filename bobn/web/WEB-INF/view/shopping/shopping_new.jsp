<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kh.semi.bobn.shopping.model.vo.ShoppingVo"%>
<%@page import="java.util.ArrayList"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopping_new.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NEW페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<body>
<%
ArrayList<ShoppingVo> volist = (ArrayList<ShoppingVo>)request.getAttribute("volist");
%>
<div id="c_new_header">
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
</div>
     <div class="c_wrap content">
        <div id="c_content">
            <section>
                <article id="c_new_article0">
                    <p>NEW상품</p>
                </article>
                <article id="c_new_article1">
                	<div class="c_new_concept_btn_wrap">
						<button type="button" class="c_new_country_btn" id="c_new_kr" 
						<c:if test="${pCountry eq '1'}">style="background-color : #F54748; color : white;"</c:if>>한식</button>
						<button type="button" class="c_new_country_btn" id="c_new_west" 
						<c:if test="${pCountry eq '2'}">style="background-color : #F54748; color : white;"</c:if>>양식</button>
						<button type="button" class="c_new_country_btn" id="c_new_chi" 
						<c:if test="${pCountry eq '3'}">style="background-color : #F54748; color : white;"</c:if>>중식</button>
						<button type="button" class="c_new_country_btn" id="c_new_ja" 
						<c:if test="${pCountry eq '4'}">style="background-color : #F54748; color : white;"</c:if>>일식</button>
						<button type="button" class="c_new_country_btn" id="c_new_east" 
						<c:if test="${pCountry eq '5'}">style="background-color : #F54748; color : white;"</c:if>>동남아</button>
						<button type="button" class="c_new_country_btn" id="c_new_etc" 
						<c:if test="${pCountry eq '6'}">style="background-color : #F54748; color : white;"</c:if>>기타</button>
					</div>
                </article>
                <ul class="c_new_menu">
                    <li>
                      <a href="#" id="c_new_select1">추천순 &#9660;</a>
                      <ul class="c_depth_1">
                        <li><a href="#">가격순</a></li>
                        <li><a href="#">판매순</a></li>
                        <li><a href="#">추천순</a></li>
                      </ul>
                    </li>
                </ul>
                <article id="c_new_article2">
                    <table>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/dduck.png" alt="" width="290"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/suckju.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/mushroom.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">떡볶이 / &#8361;3,000</td>
                            <td class="c_new_article2_text">차돌박이 숙주볶음 / &#8361;7,000</td>
                            <td class="c_new_article2_text">버섯전골 / &#8361;10,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text"style="color:#F54748">NEW | 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/tang.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/jeyuk.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/curry.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">탕수육 / &#8361;7,000</td>
                            <td class="c_new_article2_text">제육볶음 / &#8361;6,000</td>
                            <td class="c_new_article2_text">카레 / &#8361;2,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text"style="color:#F54748">NEW | 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/wollamssam.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/eggta.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/potatosuzebee.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">월남쌈 / &#8361;10,000</td>
                            <td class="c_new_article2_text">에그타르트 / &#8361;5,000</td>
                            <td class="c_new_article2_text">감자수제비 / &#8361;15,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text"style="color:#F54748">NEW | 품절되었습니다.</td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						
						<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						</c:forEach>
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>
					</div>
				</article>
            </section>
        </div>
        <br>
    <div id="c_new_footer">
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
	</div>
    </div>
    <script>
		//나라별 화면 조회
	 	$("#c_new_kr").on("click", function(){
	 		location.href="/bobn/shopnlist?pCountry=1";
		});
	
		$("#c_new_west").on("click", function(){
			location.href="/bobn/shopnlist?pCountry=2";
		});
		
		$("#c_new_chi").on("click", function(){
			location.href="/bobn/shopnlist?pCountry=3";
		});
		
		$("#c_new_ja").on("click", function(){
			location.href="/bobn/shopnlist?pCountry=4";
		}); 
		
		$("#c_new_east").on("click", function(){
			location.href="/bobn/shopnlist?pCountry=5";
		});
		
		$("#c_new_etc").on("click", function(){
			location.href="/bobn/shopnlist?pCountry=6";
		}); 
	</script>
</body>
</html>