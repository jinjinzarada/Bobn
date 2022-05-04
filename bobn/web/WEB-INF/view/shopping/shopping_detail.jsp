<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/css/shopping/shopping_detail.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			data="<%=request.getContextPath()%>/resources/image/product/seaweedsoup.png"
			alt="" width="400"></object>
	</div>
	<!-- 상품tmi-->
	<div class="c_prodtail_right">
		<h3>간편하게 즐기는</h3>
		<h2 class="c_prodtail_proname">소고기 미역국</h2>
		<br>
		<!-- <span class="c_prodtail_special">특가상품 | 50% </span> -->
		<!--<span><STRIKE>5,000 </STRIKE></span><br>-->
		<div class="c_prodtail_price_title">
			<span class="c_prodtail_price">5,000</span> <span>원</span>
		</div>
		<div class="c_prodtail_tmi">
			<div class="c_prodtail_deli_tmi">
				<span class="c_prodtail_deli_title">배송&nbsp;&nbsp;&nbsp; </span> <span
					class="c_prodtail_deli_title2">일반 배송 </span><br>
			</div>
			<br> <span class="c_prodtail_cal_title">칼로리&nbsp; </span> <span
				class="c_prodtail_cal_title2">300kcal </span>
		</div>
		<div class="c_prodtail_quantity">
			<button class="c_prodtail_minus-btn" type="button" name="button">
				-</button>
			<input type="text" name="name" value="1">
			<button class="c_prodtail_plus-btn" type="button" name="button">
				+</button>
		</div>
		<br>
		<div class="c_prodtail_buy">
			<button class="c_prodtail_cart-btn" type="button" name="buy"
				onclick="javascript:btn()">장바구니</button>
			<button class="c_prodtail_buy-btn" type="button" name="buy"
				onclick="location.href = '결제페이지.jsp로 가자'">바로 구매</button>
		</div>
	</div>
	</div>
	<div class="c_prodtail_impor">
		<div class="c_prodtail_area">
			<div class="c_prodtail_title">상품 정보</div>
			<br>
			<div>결대로 찢은 소고기와 부드러운 미역을 넣어 만든 미역국입니다.</div>
		</div>
	</div>
</div>
<div id="c_prodtail_header">
<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
</div>
	<script>
		function btn() {
			alert("장바구니에 추가되었습니다.")
			location.href = "./shopdetail";
		}
	</script>
	<script>
		$(".c_prodtail_plus-btn").click(updateAmount);
		$(".c_prodtail_minus-btn").click(updateAmount);
		function updateAmount() {
			console.log(this);
			console.log($(this));
			console.log($(this).parents(".c_prodtail_quantity").children(
					".p_id").text());
			var pidVal = $(this).parents(".c_prodtail_quantity").children(
					".p_id").text();
			var $thisEle = $(this);
			var $thisInputEle = "";
			var p_m_value = 0;
			if ($(this).prop("class") == 'c_prodtail_plus-btn') {
				p_m_value = 1;
				$thisInputEle = $thisEle.prev();
			} else if ($(this).prop("class") == 'c_prodtail_minus-btn') {
				p_m_value = -1
				$thisInputEle = $thisEle.next();
			}
			<!--
			var updateVal = Number($thisInputEle.val()) + p_m_value;
			if (updateVal == 0) {
				var yesno = confirm("상품개수는 1개 이상이어야 합니다. 삭제할까요?");
				if (yesno == false) {
					return;
				}
			}
			-->
			$.ajax({
				url : "shopcount",
				type : "post",
				data : {
					pId : pidVal,
					updateValue : updateVal
				},
				success : function(result) {
					console.log(result);
					console.log(this);
					if (result == 1) {
						$thisInputEle.val(updateVal);
					} else if (result == 0) {
						location.reload();
					} else {

					}
				}
			});
		}
	</script>
</body>
</html>