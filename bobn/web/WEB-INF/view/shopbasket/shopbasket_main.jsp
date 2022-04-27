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
<body>
	<div class="c_shopping-cart">
		<!-- Cart_Title -->
		<div class="c_cart_title">
			<b>새벽 배송</b>
		</div>
		<div class="c_cart_firstLine">
			<div class="c_cart_allCheck">
				<input type="checkbox" name="check" value="select" />
			</div>
			<div class="c_cart_proname">상품명</div>
			<div class="c_cart_procnt">수량</div>
			<div class="c_cart_proprice">가격</div>
		</div>
		
		<c:forEach items="${basketvolist }" var="vo">
		<!-- Product # -->
		<div class="c_cart_item">
			<div style="display:none;" class="p_id">${vo.pId}</div>
			<div class="c_cart_checkbox">
				<input type="checkbox" name="check" value="select" />
			</div>

			<div class="c_cart_image">TODO
				<object data="/image/seaweedsoup.png" alt="" width="70"></object>
			</div>

			<div class="c_cart_description">
				<span>${vo.p_name}</span> <span>${vo.p_flavor}</span>
			</div>
		
			<div class="c_cart_quantity">
				<button class="c_cart_minus-btn" type="button" name="button">
					<!-- <img src="minus.svg" alt="" /> -->
					-
				</button>
				<input type="text" name="itemAmount" class="itemAmount" value="${vo.basketitemAmount}">
				<button class="c_cart_plus-btn" type="button" name="button">
					<!-- <img src="plus.svg" alt="" /> -->
					+
				</button>
			</div>
			<div class="c_cart_total-price">&#8361;${vo.p_price}</div>
		</div>
		</c:forEach>
<script>
$(".c_cart_plus-btn").click(funPlusAmount);
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
		data:{pId : pidVal},
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
	$(".c_cart_minus-btn").click(funMinusAmount);
	function funMinusAmount(){
		console.log(this); 
		console.log($(this));
		console.log($(this).parents(".c_cart_item").children(".p_id").text());
		var pidVal = $(this).parents(".c_cart_item").children(".p_id").text();
		var $thisEle = $(this);  
		$.ajax({
			url:"bcount",
			type:"post",
			data:{pId : pidVal},
			success: function (result){
				console.log(result);
				console.log(this);  
				if(result == 1){
					//$thisEle.prev().val(pidVal+1);
					var oldVal = $thisEle.next().val();
					$thisEle.next().val(Number(oldVal)-1); 
				}else if(result == 0){
					
				}else {
					
				}
			}
		});
}
</script>
		<br> <br>
		<!-- Cart_Title -->
		<div class="c_cart_title">
			<b>일반 배송</b>
		</div>
		<div class="c_cart_firstLine">
			<div class="c_cart_allCheck">
				<input type="checkbox" name="check" value="select" />
			</div>
			<div class="c_cart_proname">상품명</div>
			<div class="c_cart_procnt">수량</div>
			<div class="c_cart_proprice">가격</div>
		</div>
		<!-- Product #1 -->
		<div class="c_cart_item">
			<div class="c_cart_checkbox">
				<input type="checkbox" name="check" value="select" />
			</div>

			<div class="c_cart_image">
				<object data="/image/bulgogi.png" alt="" width="70"></object>
			</div>

			<div class="c_cart_description">
				<span>불고기 전골</span> <span>짠 맛</span>
			</div>

			<div class="c_cart_quantity">
				<button class="c_cart_minus-btn" type="button" name="button">
					<!-- <img src="minus.svg" alt="" /> -->
					-
				</button>
				<input type="text" name="name" value="1">
				<button class="c_cart_plus-btn" type="button" name="button">
					<!-- <img src="plus.svg" alt="" /> -->
					+
				</button>
			</div>

			<div class="c_cart_total-price">&#8361;15,000</div>
		</div>

		<!-- Product #2 -->
		<div class="c_cart_item">
			<div class="c_cart_checkbox">
				<input type="checkbox" name="check" value="select" />
			</div>

			<div class="c_cart_image">
				<object data="/image/steak.png" alt="" width="70"></object>
			</div>

			<div class="c_cart_description">
				<span>스테이크</span> <span>담백한 맛</span>
			</div>

			<div class="c_cart_quantity">
				<button class="c_cart_minus-btn" type="button" name="button">
					<!-- <img src="minus.svg" alt="" /> -->
					-
				</button>
				<input type="text" name="name" value="1">
				<button class="c_cart_plus-btn" type="button" name="button">
					<!-- <img src="plus.svg" alt="" /> -->
					+
				</button>
			</div>

			<div class="c_cart_total-price">&#8361;20,000</div>
		</div>

		<!-- Product #3 -->
		<div class="c_cart_item">
			<div class="c_cart_checkbox">
				<input type="checkbox" name="check" value="select" />
			</div>

			<div class="c_cart_image">
				<object data="/image/rosepasta.png" alt="" width="70"></object>
			</div>

			<div class="c_cart_description">
				<span>로제파스타</span> <span>느끼한 맛</span>
			</div>

			<div class="c_cart_quantity">
				<button class="c_cart_minus-btn" type="button" name="button">
					<!-- <img src="minus.svg" alt="" /> -->
					-
				</button>
				<input type="text" name="name" value="1">
				<button class="c_cart_plus-btn" type="button" name="button">
					<!-- <img src="plus.svg" alt="" /> -->
					+
				</button>
			</div>

			<div class="c_cart_total-price">&#8361;5,000</div>
		</div>
		<br> <br>
		<div class="c_cart_jjin_total-price">
			<div>총 상품금액 : &#8361;20,000</div>
			<div>배송비 : &#8361;3,000</div>
			<div>할인 금액 : &#8361;3,000</div>
			<div>결제 금액 : &#8361;20,000</div>
		</div>
		<br>
		<center>
			<button class="c_cart_order-btn" type="button" name="order"
				onclick="location.href = '결제페이지.jsp로 가자'">주문하기</button>
		</center>
		<br>
	</div>
</body>
</html>