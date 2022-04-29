<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/pay/pay.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제페이지</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
        location.href= "해당.jsp?page=";
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
</head>
<body>
	<div class="c_pay_frame">
		<!-- 주문자 -->
		<br>
		<h2 class="c_payment_title">&nbsp; 주문자</h2>
		<br>
		<hr>
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
				<td><input type="checkbox"></td>
				<td>상품사진</td>
				<td>상품명</td>
				<td>가격</td>
				<td>수량</td>
			</tr>
			<tr>
				<td><input type="checkbox"></td>
				<td><object data="/image/grilledeel.png" alt="" width="70"></object></td>
				<td>소고기 미역국</td>
				<td>5,000원</td>
				<td>
					<button class="c_pay_minus-btn" type="button" name="button">
						-</button> <input type="text" name="name" value="1">
					<button class="c_pay_plus-btn" type="button" name="button">
						+</button>
				</td>
			</tr>
		</table>
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
				<td style="padding: 23px 0;"><span id="c_pay_price">0</span>원</td>
				<td><span id="c_pay_price">0</span>원</td>
				<td><span id="c_pay_price">0</span>원</td>
			</tr>
		</table>
		<div class="c_pay_btnside">
			<button type="button" class="c_pay_btn"
				onclick="javascript:btn()">결제하기</button>
		</div>
	</div>
</body>
</html>