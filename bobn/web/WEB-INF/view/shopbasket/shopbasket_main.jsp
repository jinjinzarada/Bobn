<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/shopbasket/basket_main.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니</title>
</head>
<body>
<div class="c_shopping-cart">
        <!-- Cart_Title -->
        <div class="c_cart_title">
          <b>새벽 배송</b>
        </div>
        <div class = "c_cart_firstLine">
          <div class = "c_cart_allCheck">
          <input type="checkbox" name="check" value="select" />
          </div>
          <div class = "c_cart_proname">상품명</div>
          <div class = "c_cart_procnt">수량</div>
          <div class = "c_cart_proprice">가격</div>
        </div>
        <!-- Product #1 -->
        <div class="c_cart_item">
          <div class="c_cart_checkbox">
            <input type="checkbox" name="check" value="select" />
          </div>
       
          <div class="c_cart_image">
            <img src="/image/seaweedsoup.png" alt="" width="70"/>
          </div>
       
          <div class="c_cart_description">
            <span>소고기 미역국</span>
            <span>담백한 맛</span>
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
       
        <!-- Product #2 -->
        <div class="c_cart_item">
          <div class="c_cart_checkbox">
            <input type="checkbox" name="check" value="select" />
          </div>
       
          <div class="c_cart_image">
            <img src="/image/tofustew.png" alt="" width="70"/>
          </div>
       
          <div class="c_cart_description">
            <span>순두부찌개</span>
            <span>얼큰한 맛</span>
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
       
        <!-- Product #3 -->
        <div class="c_cart_item">
          <div class="c_cart_checkbox">
            <input type="checkbox" name="check" value="select" />
          </div>
       
          <div class="c_cart_image">
            <img src="/image/grilledeel.png" alt="" width="70"/>
          </div>
       
          <div class="c_cart_description">
            <span>장어구이</span>
            <span>고소한 맛</span>
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
        <br>
        <br>
        <!-- Cart_Title -->
        <div class="c_cart_title">
            <b>일반 배송</b>
          </div>
          <div class = "c_cart_firstLine">
            <div class = "c_cart_allCheck">
            <input type="checkbox" name="check" value="select" />
            </div>
            <div class = "c_cart_proname">상품명</div>
            <div class = "c_cart_procnt">수량</div>
            <div class = "c_cart_proprice">가격</div>
          </div> 
          <!-- Product #1 -->
          <div class="c_cart_item">
            <div class="c_cart_checkbox">
              <input type="checkbox" name="check" value="select" />
            </div>
         
            <div class="c_cart_image">
              <img src="/image/bulgogi.png" alt="" width="70"/>
            </div>
         
            <div class="c_cart_description">
              <span>불고기 전골</span>
              <span>짠 맛</span>
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
              <img src="/image/steak.png" alt="" width="70"/>
            </div>
         
            <div class="c_cart_description">
              <span>스테이크</span>
              <span>담백한 맛</span>
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
              <img src="/image/rosepasta.png" alt="" width="70"/>
            </div>
         
            <div class="c_cart_description">
              <span>로제파스타</span>
              <span>느끼한 맛</span>
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
          <br>
          <br>
          <div class="c_cart_jjin_total-price">
            <div>총 상품금액 : &#8361;20,000</div>
            <div>배송비 : &#8361;3,000</div>
            <div>할인 금액 : &#8361;3,000</div>
            <div>결제 금액 : &#8361;20,000</div>
          </div>
          <br>
          <center>
          <button class="c_cart_order-btn" type="button" name="order">주문하기</button>
          </center>
          <br>
      </div>
</body>
</html>