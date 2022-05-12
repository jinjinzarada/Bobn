<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/shopdetail/shopdetail3.css">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세페이지</title>
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
<div id="c_prodtail_header">
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
</div>
 <br>
<div>
	<div>
	<!--사진-->
	<div class="c_prodtail_image">
		<object
			data="<%=request.getContextPath()%>/resources/image/product/bulgogi.png"
			alt="" width="380"></object>
	</div>
	<!-- 상품tmi-->
	<div class="c_prodtail_right">
		<h3>간편하게 즐기는</h3>
		<h2 class="c_prodtail_proname">불고기 전골</h2>
		<br>
		<!--<span class="c_prodtail_special">특가상품 | 30% </span>
		<span><STRIKE>15,000 </STRIKE></span><br>-->
		<div class="c_prodtail_price_title">
			<span class="c_prodtail_price">20,000</span> <span>원</span>
		</div>
		<div class="c_prodtail_tmi">
			<div class="c_prodtail_deli_tmi">
				<span class="c_prodtail_deli_title">배송&nbsp;&nbsp;&nbsp; </span> <span
					class="c_prodtail_deli_title2">일반 배송 </span><br>
			</div>
			<br> <span class="c_prodtail_cal_title">칼로리&nbsp; </span> <span
				class="c_prodtail_cal_title2">250kcal </span>
		</div>
		<div class="c_prodtail_quantity">
			<select>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;1&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;2&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;3&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;5&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;6&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;7&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;8&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;9&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;10&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;11&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;12&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;13&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;14&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;15&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;16&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;17&nbsp;&nbsp;&nbsp;</option>
				<option>&nbsp;&nbsp;&nbsp;&nbsp;18&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;19&nbsp;&nbsp;&nbsp;</option>	
				<option>&nbsp;&nbsp;&nbsp;&nbsp;20&nbsp;&nbsp;&nbsp;</option>				
			</select>
		</div>
		<br>
		<div class="c_prodtail_buy">
			<button class="c_prodtail_cart-btn" type="button" name="buy"
				onclick="javascript:btn()">장바구니</button>
			<button class="c_prodtail_buy-btn" type="button" name="buy"
				onclick="location.href = './paylist'">바로 구매</button>
		</div>
	</div>
	</div>
	<div class="c_prodtail_impor">
	</div>
</div>
<div id="c_prodtail_header">
<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
</div>
	<script>
		function btn() {
			alert("장바구니에 추가되었습니다.")
			location.href = "./shopdetail3";
		}
	</script>
</body>
</html>