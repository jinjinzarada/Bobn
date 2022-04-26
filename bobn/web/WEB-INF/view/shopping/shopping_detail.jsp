<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopping/shopping_detail.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품상세페이지</title>
    <link rel="stylesheet" type="text/css" href="./css/reset.css">
    <link rel="stylesheet" type="text/css" href="./css/common.css">
    <link rel="stylesheet" type="text/css" href="./css/productdetail.css">
</head>
<body>
    <!--사진-->
    <div class="c_prodtail_image">
        <object data="/image/seaweedsoup.png" alt="" width="400"></object>
    </div>
    <!-- 상품tmi-->
    <div class="c_prodtail_right">
    <h3>간편하게 즐기는</h3>
    <h2 class="c_prodtail_proname">소고기 미역국</h2>
    <br>
    <span class="c_prodtail_special">특가상품 | 50% </span>
    <span><STRIKE>5,000 </STRIKE></span><br>
    <div class="c_prodtail_price_title" >
    <span class="c_prodtail_price">2,500</span>
    <span>원</span>
    </div>
    <div class="c_prodtail_tmi">
        <div class="c_prodtail_deli_tmi">
        <span class="c_prodtail_deli_title">배송&nbsp;&nbsp;&nbsp; </span> 
        <span class="c_prodtail_deli_title2">일반 배송 </span><br>
        </div>
        <br>
        <span class="c_prodtail_cal_title">칼로리&nbsp; </span> 
        <span class="c_prodtail_cal_title2">300kcal </span> 
    </div>
    <div class="c_prodtail_quantity">
        <button class="c_prodtail_minus-btn" type="button" name="button">
          -
        </button>
        <input type="text" name="name" value="1">
        <button class="c_prodtail_plus-btn" type="button" name="button">
          +
        </button>
      </div>
      <br>
      <div class="c_prodtail_buy">
        <button class="c_prodtail_cart-btn" type="button" name="buy" onclick = "location.href = '장바구니추가팝업'">장바구니</button>
        <button class="c_prodtail_buy-btn" type="button" name="buy" onclick = "location.href = '결제페이지.jsp로 가자'">바로 구매</button>
      </div>
    </div>
    <div class="c_prodtail_impor"> 
        <div class="c_prodtail_area">
        <div class="c_prodtail_title">상품 정보</div>
        <br>
        <div>결대로 찢은 소고기와 부드러운 미역을 넣어 만든 미역국입니다.</div>
        <div class="c_prodtail_review">리뷰(+999)</div>
        </div>
        <ul class="c_prodtail_menu">
            <li>
              <a href="#" id="c_prodtail_select1">최신순 &#9660;</a>
              <ul class="c_depth_1">
                <li><a href="#">별점순</a></li>
                <li><a href="#">사진후기만</a></li>
                <li><a href="#">최신순</a></li>
              </ul>
            </li>
        </ul>
        
    <div class="c_prodtail_review_write">
      <table border="1" width=500>
        <tr>
            <th colspan="2">
                리뷰쓰기
            </th>
        </tr>
        <tr>
            <td width=50>
              <button type="button" class="c_prodtail_photo" onclick="location.href='사진파일열기';">사진첨부</button>
                <!-- <select>
                    <option>유머</option>
                    <option>뉴스</option>
                    <option>잡담</option>
                </select> -->
            </td>
            <td >
              <div class="c_starpoint_wrap">
                <div class="c_starpoint_box">
                  <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
                  <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
                  <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
                  <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
                  <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
                  <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
                  <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
                  <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
                  <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
                  <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
                  <input type="radio" name="starpoint" id="starpoint_1" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_2" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_3" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_4" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_5" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_6" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_7" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_8" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_9" class="c_star_radio">
                  <input type="radio" name="starpoint" id="starpoint_10" class="c_star_radio">
                  <span class="c_starpoint_bg"></span>
                </div>
              </div>
                <!-- <input type="text" placeholder="제목을 입력하세요."
                maxlength=20
                style="width:100%" > -->
            </td>
        </tr>
        <tr>
            <td colspan="2" height=350>
                <textarea placeholder="고객님의 소중한리뷰는 큰 힘이 됩니다.(5000자 이내)" style="width: 800px; height: 300px"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align=center>
                <button type="button" class="c_prodtail_review_succ">등록하기</button>
            </td>
        </tr>
     </table>
    </div>
    </div>
</body>
</html>