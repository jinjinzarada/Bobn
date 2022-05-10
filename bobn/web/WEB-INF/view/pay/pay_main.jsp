<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/pay/pay.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제 페이지</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
</head>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<body>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
<div id="wrap section">
<section>
	<div class="c_pay_frame">
		<!-- 주문자 -->
		<h2 class="c_payment_title">&nbsp; 주문자</h2>
		<br>
		<table>
        <tr>
            <td class = "c_pay_deliv">이름&nbsp;</td>
            <td><input type ="text" id="txtName1"></td>
        </tr>
        <tr>
            <td class = "c_pay_deliv">휴대 전화&nbsp;</td>
            <td><input type ="tel" size="3px" id="phone1">&nbsp;-&nbsp;<input type ="tel" size="3px" id="phone2">&nbsp;-&nbsp;<input type ="tel" size="3px" id="phone3"></td>
        </tr>
    </table>
    <br>
    <!-- 배송지 -->
    <h2 class="c_payment_title">&nbsp; 배송지</h2> 
    <div class = "c_pay_ordersame">
    <div><input type="checkbox" onclick="Copy();" id="cb"><label for="cb">&nbsp;주문자정보와 동일</label></div>
    </div>
    <table class ="c_pay_delivery">
        <tr>
            <td class = "c_pay_deliv">받는 사람&nbsp;</td>
            <td><input type ="text" id="txtName2"></td>
        </tr>
        <tr>
            <td class = "c_pay_deliv">휴대 전화&nbsp;</td>
            <td><input type ="tel" size="3px" id="phone4">&nbsp;-&nbsp;<input type ="tel" size="3px" id="phone5">&nbsp;-&nbsp;<input type ="tel" size="3px" id="phone6"></td>
        </tr>
			<tr>
				<td class="c_pay_deliv">주소&nbsp;</td>
				<td>
                	<input type="text" id="c_pay_postnum" size="10" maxlength="5" readonly="readonly" placeholder="우편번호">
                	<button type ="button" id="c_pay_findadd" onclick = "findAddress()">주소찾기</button><br>
                	<input  type="text" id="c_pay_add1" style =" margin-bottom:10px; " size="50" readonly="readonly" placeholder="주소"><br>
               		<input  type="text" id="c_pay_add2" size="50" placeholder="상세 주소 입력">
            </td>
			</tr>
			<tr>
				<td class="c_pay_deliv">배송요청사항&nbsp;</td>
				<td><select name="deliv">
						<option value="">&nbsp;요청사항없음&nbsp;</option>
						<option value="">&nbsp;경비실보관&nbsp;</option>
						<option value="">&nbsp;택배함보관&nbsp;</option>
						<option value="">&nbsp;현관문앞보관&nbsp;</option>
						<option value="">&nbsp;직접수령&nbsp;</option>
				</select></td>
			</tr>
		</table>
		<br>
		<!-- 주문 상품 -->
		<br>
		<h2 class="c_payment_title">&nbsp;주문 상품</h2>
		<br>
		<table class="c_pay_order">
			<tr>
				<!--<td>
					<input type="checkbox" name="check" value="selectall" onclick="selectAll(this)">
				</td>-->
				<td>상품사진</td>
				<td>상품명</td>
				<td>가격</td>
				<td>수량</td>
				<td>가격</td>
			</tr>
		</table>
			<c:forEach items="${payvolist}" var="vo">
		<table class="c_pay_order_list">
			<tr>
				<td width="272">
					<img src="<%=request.getContextPath()%>${vo.d_file}" alt="" width="70">
				</td>
				<td width="220">${vo.p_name}</td>
				<td width="169">
					<span name="itemOnePrice" class="itemOnePrice" id="c_pay_price">${vo.p_price}</span>원
				</td>
				<td width="169">
					<span name="itemAmount" class="itemAmount" id="c_pay_price">${vo.basketitemAmount}</span>개</td> 
				</td>
				<td>
					<span name="itemPriceCnt" class="itemPriceCnt" id="c_pay_price">${vo.p_price*vo.basketitemAmount}</span>원</td> 
				</td>
			</tr>
		</table>
		</c:forEach>
		<!-- 결제수단 -->
		<br>
		<h2 class="c_payment_title">&nbsp; 결제 수단</h2>
		<br>
		<div class="c_pay_status">
			<input type="radio" name="payradio"><label>카드결제
				&nbsp;<select name="deliv">
					<option value="">&nbsp;카드선택&nbsp;</option>
					<option value="">&nbsp;로떼카드&nbsp;</option>
					<option value="">&nbsp;시난카드&nbsp;</option>
					<option value="">&nbsp;샘송카드&nbsp;</option>
					<option value="">&nbsp;현재카드&nbsp;</option>
			</select>
			</label><br>
			<br> <input type="radio" name="payradio" /><label>무통장입금</label><br>
			<br> <input type="radio" name="payradio" /><label>실시간계좌이체</label><br>
		</div>
		<br>
		<!-- 결제금액-->
		<table class="c_pay_calcu">
			<tr>
				<th>총 주문금액</th>
				<th>배송비</th>
				<th>총 결제금액</th>
			</tr>
			<tr style="background-color: #fff;">
				<td style="padding: 23px 0;">
					<span style="font-size:20pt; font-weight:bold;" id="pay_total_price"></span>원
				</td>
				<td>
					<span style="font-size:20pt; font-weight:bold;" id="pay_delivery_price">3000</span>원
				</td>
				<td>
					<span style="font-size:20pt; font-weight:bold;" id="pay_total_pay_price"></span>원
				</td>
			</tr>
		</table>
		<div class="c_pay_btnside">
			<button type="button" class="c_pay_btn"
				onclick="javascript:btn()">결제하기</button>
		</div>
	</div>
	<br>
	<br>
	<br>
	<br>
</section>
	<br>
	<br>
</div>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
	</div>
<script>
//$(".c_cart_plus-btn").click(updateAmount);
//$(".c_cart_minus-btn").click(updateAmount);
function updateAmount(){
	console.log(this); 
	console.log($(this));
	console.log($(this).parents(".c_pay_calcu").children(".p_id").text());
	var pidVal = $(this).parents(".c_pay_calcu").children(".p_id").text();
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
			return;
		} 
	}
	$.ajax({
		url:"pcount",
		type:"post",
		data:{pId : pidVal, updateValue: updateVal},
		success: function (result){
			console.log(result);
			console.log(this);  
			if(result == 1){
				$thisInputEle.val(updateVal); 
				// 상품 한개 가격
				var priceOneVal = Number($thisInputEle.parents(".c_pay_calcu").find(".itemOnePrice").val());
				console.log(priceOneVal);
				
				// 수량에 따른 상품가격
				var priceOneTotalVal = priceOneVal*updateVal;
				$thisInputEle.parents(".c_pay_calcu").find(".itemPriceCnt").val(priceOneTotalVal);
				changeTotalPrice();
				
				// 배송비
				var priceDelivery = Number($thisInputEle.parents(".c_pay_calcu").find("#pay_delivery_price").val());
				console.log(priceDelivery); 

				// 총 결제가격
				var priceTotalPay = priceOneTotalVal+priceDelivery;
				$thisInputEle.parents(".c_pay_calcu").find("#pay_total_pay_price").val(priceTotalPay);
				changeTotalPrice();

			}else if(result == 0){
				// update에 실패 또는 삭제
				location.reload();
			}else {
				
			}
		}
	});
}
</script>
<script>
function changeTotalPrice() {
	var totalPrice = 0;
//	$(".itemPriceCnt").each(function(idx, thisEle){
//		totalPrice += Number($(thisEle).val());
//	});
	$("#pay_total_price").text(totalPrice);

	var pay_delivery_price = $("#pay_delivery_price").text();
	$("#pay_total_pay_price").text((Number(totalPrice)+Number(pay_delivery_price)));
	
}  
</script>
<script>
    function findAddress(){
    new daum.Postcode({
        oncomplete: function(data) {
            var code = data.zonecode; //우편번호
            var Addr = data.address;// 선택한 주소

            document.getElementById('c_pay_postnum').value = data.zonecode;
            document.getElementById('c_pay_add1').value = data.address;
        }
    }).open();
}
</script>
<script>
    function btn(){
        alert("결제가 완료되었습니다.")
        location.href= "./main";
    }
</script>
<script type="text/javascript">
    function Copy(){
           if (document.getElementById("cb").checked)
           {
                document.getElementById("txtName2").value = document.getElementById("txtName1").value;
                document.getElementById("phone4").value = document.getElementById("phone1").value;
                document.getElementById("phone5").value = document.getElementById("phone2").value;
                document.getElementById("phone6").value = document.getElementById("phone3").value;
           }
    }
</script>
</body>
</html>