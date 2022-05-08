<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/shopping/shopping_new.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kh.semi.bobn.shopping.model.vo.ShoppingVo"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NEW페이지</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
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
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<!-- c_warp 대신 warp으로 대체함.   -->
     <div class="wrap content">  
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
                <c:if test="${pCountry eq '1'}">
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
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/chickenfoot.png" alt="" width="260"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                               <object data="<%=request.getContextPath()%>/resources/image/product/boodae.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/forkkimchi.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">닭발 / &#8361;9,500</td>
                            <td class="c_new_article2_text">부대찌개 / <strike>&#8361;6,000</strike>&nbsp;&#8361;4,800</td>
                            <td class="c_new_article2_text">돼지김치찌개 / &#8361;10,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW | 품절되었습니다.</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '2'}">
                <article id="c_new_article2">
                    <table>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/gamba.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/oil.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">감바스 / &#8361;8,000</td>
                            <td class="c_new_article2_text">오일파스타 / &#8361;6,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '3'}">
                <article id="c_new_article2">
                    <table>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/barowoo.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/chilli.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">꿔바로우 / <strike> &#8361;8,000</strike>&nbsp;&#8361;4,000</td>
                            <td class="c_new_article2_text">칠리새우 / &#8361;8,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '4'}">
                <article id="c_new_article2">
                    <table>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/don.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/chidon.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/chadol.png" alt="" width="300"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">돈까스 / &#8361;5,000</td>
                            <td class="c_new_article2_text">치즈 돈까스 / &#8361;6,000</td>
                            <td class="c_new_article2_text">차돌덮밥 / <strike>&#8361;6,000</strike>&nbsp;&#8361;4,800</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text" style="color:#F54748">NEW</td>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '5'}">
                <article id="c_new_article2">
                    <table>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/wollamssam.png" alt="" width="290"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">월남쌈 / &#8361;10,000</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
				<c:if test="${pCountry eq '6'}">
                <article id="c_new_article2">
                    <table>
                        <tr>
                            <td class="c_new_article2_img">
                                <object data="<%=request.getContextPath()%>/resources/image/product/eggta.png" alt="" width="290"
                                onclick="location.href='/bobn/shopdetail';"></object>
                            </td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text">에그타르트 / <strike>&#8361;3,500</strike>&nbsp;&#8361;2,800</td>
                        </tr>
                        <tr>
                            <td class="c_new_article2_text"style="color:#F54748">NEW | 품절되었습니다.</td>
                        </tr>
                        <tr>
                            <td colspan="3"><br></td>
                        </tr>
                    </table>
                </article>
                <br>
                <!-- 페이징 -->
                <article id="c_new_article3">
					<div class="c_new_pagination">
					
						<!--<c:if test="${startPage > 1}">
						<a href="shopnlist?pageNum=${startPage-1}&pCountry=${pCountry}">&laquo;</a>
						</c:if>-->
						
						<c:forEach begin="${startPage}" end="${endPage}" step="1" var="i">
						<c:if test="${currentPage eq i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}" class="c_new_active">${i}</a>
						</c:if>
						</c:forEach>
						
						<!--<c:if test="${currentPage ne i}">
						<a href="shopnlist?pageNum=${i}&pCountry=${pCountry}">${i}</a>
						</c:if>
						
						
						<c:if test="${endPage < pageCnt}">
						<a href="shopnlist?pageNum=${endPage+1}&pCountry=${pCountry}">&raquo;</a>
						</c:if>-->
					</div>
				</article>
				</c:if>
            </section>
        </div>
        <br>
    </div>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
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