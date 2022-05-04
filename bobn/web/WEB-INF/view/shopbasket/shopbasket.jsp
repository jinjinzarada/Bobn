<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopbasket/shopbasket_main.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
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
<div id="c_cart_header">
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
</div>
	<div class="c_shopping-cart">
		<!-- Cart_Title -->
		<div class="c_cart_title">
			<b>일반 배송</b>
		</div>
		<div class="c_cart_firstLine">
			<div class="c_cart_allCheck">
				<input type="checkbox" name="check" value="selectall" onclick="selectAll(this)">
			</div>
			<div class="c_cart_proname">상품명</div>
			<div class="c_cart_procnt">수량</div>
			<div class="c_cart_proprice">가격</div>
		</div>
		
		<c:forEach items="${basketvolist}" var="vo">
		<!-- Product # -->
		<div class="c_cart_item">
			<div style="display:none;" class="p_id">${vo.pId}</div>
			<div class="c_cart_checkbox">
				<input type="checkbox" name="check" value="select" />
			</div>

			<div class="c_cart_image">
				<object data="<%=request.getContextPath()%>${vo.d_file}" alt="" width="70"></object>
			</div>

			<div class="c_cart_description">
				<span>${vo.p_name}</span> <span>${vo.p_flavor}</span>
			</div>
		
			<div class="c_cart_quantity">
				<button class="c_cart_minus-btn" type="button" name="button">
					-
				</button>
				<input type="text" name="itemAmount" class="itemAmount" value="${vo.basketitemAmount}">
				<button class="c_cart_plus-btn" type="button" name="button">
					+
				</button>
			</div>
			<div class="c_cart_total-price">&#8361;${vo.p_price}</div>
		</div>
		</c:forEach>
		<br> <br>
		<div class="c_cart_jjin_total-price">
			<br>
			<div>총 상품금액 : &#8361;20,000</div>
			<br>
			<div>배송비 : &#8361;3,000</div>
			<br>
			<div>결제 금액 : &#8361;20,000</div>
			<br>
		</div>
		<br>
		<center>
			<button class="c_cart_order-btn" type="button" name="order"
				onclick="location.href = '/bobn/paylist';">주문하기</button>
		</center>
	</div>
	<div id="c_cart_footer">
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
	</div>
<script>
function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName("check");

		  checkboxes.forEach((checkbox) => {
		  checkbox.checked = selectAll.checked;
	  })
	}
</script>
<script>
$(".c_cart_plus-btn").click(updateAmount);
$(".c_cart_minus-btn").click(updateAmount);
function updateAmount(){
	console.log(this); 
	console.log($(this));
	console.log($(this).parents(".c_cart_item").children(".p_id").text());
	var pidVal = $(this).parents(".c_cart_item").children(".p_id").text();
	var $thisEle = $(this);
	var $thisInputEle = "";
	var p_m_value = 0;
	if($(this).prop("class") == 'c_cart_plus-btn'){
		p_m_value = 1;
		$thisInputEle = $thisEle.prev();
	} else if($(this).prop("class") == 'c_cart_minus-btn'){
		p_m_value = -1
		$thisInputEle = $thisEle.next();
	}
	var updateVal = Number($thisInputEle.val())+p_m_value;
	if(updateVal==0){
		var yesno = confirm("상품개수는 1개 이상이어야 합니다. 삭제할까요?");
		if(yesno == false){
			// 1 상태 유지
			return;
		} // 삭제한다.. 아래 bcount로 가서 0인 경우 db에서 삭제 하도록 함
	}
	$.ajax({
		url:"bcount",
		type:"post",
		data:{pId : pidVal, updateValue: updateVal},
		success: function (result){
			console.log(result);
			console.log(this);  
			if(result == 1){
				$thisInputEle.val(updateVal); 					
			}else if(result == 0){
				// update에 실패 또는 삭제
				location.reload();
			}else {
				
			}
		}
	});
}

/*
function funPlusAmount(){
	console.log(this);  // 요게 클릭한 버튼 + 요거.. 여기에 바로 형님에 숫자가 바꿔야하죠
	console.log($(this));
	console.log($(this).parents(".c_cart_item").children(".p_id").text());
	// 요게 화면에 보여지던 숫자죠...네네
	var pidVal = $(this).parents(".c_cart_item").children(".p_id").text();
	var $thisEle = $(this);   // 변수에 담아서 기억합니다.
	$.ajax({
		url:"bcount",
		type:"post",
		data:{pId : pidVal, updateValue:1},
		success: function (result){
			console.log(result);
			console.log(this);  // 이때 this는 ajax 코드가 this네요.네네
			if(result == 1){
				//$thisEle.prev().val(pidVal+1);
				// 위 아래 결과가 어떻게 다른지도 봅시다.
				var oldVal = $thisEle.prev().val();
				$thisEle.prev().val(Number(oldVal)+1); // 이젠 진짜 맞겠죠
			}else if(result == 0){
				
			}else {
				// 요상한 경우..
			}
		}
	});
}

function funMinusAmount(){
	console.log(this); 
	console.log($(this));
	console.log($(this).parents(".c_cart_item").children(".p_id").text());
	var pidVal = $(this).parents(".c_cart_item").children(".p_id").text();
	var $thisEle = $(this);  
	var updateVal = Number($thisEle.next().val())-1;
	if(updateVal==0){
		var yesno = confirm("상품개수는 1개 이상이어야 합니다. 삭제할까요?");
		if(yesno == false){
			// 1 상태 유지
			return;
		} // 삭제한다.. 아래 bcount로 가서 0인 경우 db에서 삭제 하도록 함
	}
	$.ajax({
		url:"bcount",
		type:"post",
		data:{pId : pidVal, updateValue: updateVal},
		success: function (result){
			console.log(result);
			console.log(this);  
			if(result == 1){
				$thisEle.next().val(updateVal); 
			}else if(result == 0){
				
			}else {
				
			}
		}
	});
}
*/
</script>
</body>
</html>