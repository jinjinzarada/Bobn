<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cscenter/csreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cscenter/cscommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/cscenter/cscontent_list.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
</head>
<body>
<div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntcs_article0">
                    <p>고객센터</p>
                </article>
                <article id="j_ntcs_article1">
                    <div>
                        <ul>
                            <li>
                                <p id="j_ntcs_info">고객센터</p>
                            </li>
                            <br>
                            <li>
                                운영시간 : 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)
                            </li>
                            <li>
                                이메일 : cscenter@bobn.net
                            </li>
                            <li>
                                전화 : 1234 - 4321
                            </li>
                            <br>
                            <li>
                                <button type="button" id="j_ntcs_notice_btn" onclick="location.href='어디로이동할지적어야함';">1:1 문의하기</button>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <img src="<%=request.getContextPath()%>/resources/image/cscenter/고객센터.png">
                    </div>
                </article>
                <article id="j_ntcs_article2">
                    <div class="j_ntcs_btn_wrap">
                        <input type="radio" name="cscenter" sn="j_ntcs_article8" class="j_ntcs_btn" id="j_ntcs_notice"><label for="j_ntcs_notice" class="labelChecked1">공지사항</label>
                        <input type="radio" name="cscenter" sn="j_ntcs_article3" class="j_ntcs_btn" id="j_ntcs_or"><label for="j_ntcs_or">주문/결제</label>
                        <input type="radio" name="cscenter" sn="j_ntcs_article4" class="j_ntcs_btn" id="j_ntcs_de"><label for="j_ntcs_de">배송</label>
                        <input type="radio" name="cscenter" sn="j_ntcs_article5" class="j_ntcs_btn" id="j_ntcs_ca"><label for="j_ntcs_ca">취소/환불</label>
                        <input type="radio" name="cscenter" sn="j_ntcs_article6" class="j_ntcs_btn" id="j_ntcs_me"><label for="j_ntcs_me">회원</label>
                        <input type="radio" name="cscenter" sn="j_ntcs_article7" class="j_ntcs_btn" id="j_ntcs_se"><label for="j_ntcs_se">서비스/기타</label>
                    </div>
                </article>
                <article id="j_ntcs_article3" class="j_ntcs_cscontent">
                    <div>
                        <div class="j_ntcs_que">
                        <span>주문 내역은 어떻게 확인할 수 있나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>마이페이지를 통해 확인 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>결제 방법은 어떤 것이 있나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>카드, 무통장 입금, 실시간 계좌이체를 이용해 결제 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>전화 주문 가능한가요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>온라인으로만 주문이 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>가상계좌 은행을 변경 할 수 있나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>한번 발급 받은 계좌번호는 변경이 불가능합니다. 재주문을 통해 새로운 계좌를 발급 받으신 후 입금 부탁드립니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>주문 후 결제 방법을 변경하고 싶은데 어떻게 해야 하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>결제 후 결제 정보 변경은 불가능 합니다. 단, 입금 대기 및 결제 완료 단계에서는 취소 후 재주문을 통해 변경 가능합니다.</span>
                        </div>
                   </div>
                </article>
                <article id="j_ntcs_article4" class="j_ntcs_cscontent">
                    <div>
                        <div class="j_ntcs_que">
                        <span>배송은 얼마나 걸리나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>상품 배송 기간은 배송 유형에 따라 출고 일자 차이가 있습니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>해외배송이 가능한가요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>현재는 국내배송만 진행하고 있습니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>여러 상품을 묶음 배송 받으려면 어떻게 해야하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>배송처가 같은 경우 배송처의 정책에 따라 가능 할 수 있습니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>배송확인은 어떻게 하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>마이페이지를 통해 확인 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>선물로 보낼 건데, 보내는 사람 이름 변경 가능한가요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>아쉽게도 발송인 이름 변경은 어렵습니다.</span>
                        </div>
                   </div>
                </article>
                <article id="j_ntcs_article5" class="j_ntcs_cscontent">
                    <div>
                        <div class="j_ntcs_que">
                        <span>취소 후 환불은 언제되나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>신용카드 및 체크카드의 경우 카드사에서 확인 절차를 거치는 관계로 평균 3~7일 영업일 이내 환불처리가 완료됩니다. </span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>여러 개의 상품을 주문했는데, 일부만 취소할 수도 있나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>부분 취소는 불가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>상품준비중인데 취소가 안되나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>상품준비중 일 경우, 고객님 주문 건은 이미 발주에 넘어간 상태이므로 취소가 어렵습니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>상품 받았는데 파손/오배송/불량 되어 받았어요.</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>번거로우시겠지만 고객센터로 전화주시면 처리사항으로 도움드리도록 하겠습니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>수령한지 꽤 지났는데 반품/교환 가능한가요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>반품/교환 시에는 수령일로부터 7일 이내에만 가능합니다.추가적인 문의 사항은 고객센터로 연락 부탁드립니다.</span>
                        </div>
                   </div>
                </article>
                <article id="j_ntcs_article6" class="j_ntcs_cscontent">
                    <div>
                        <div class="j_ntcs_que">
                        <span>회원탈퇴는 어떻게 하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>마이페이지를 통해 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>비밀번호 변경은 어떻게하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>마이페이지를 통해 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>회원정보를 수정하고 싶은데 어떻게 해야하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>마이페이지를 통해 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>회원탈퇴 후 재가입이 가능한가요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>재가입 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>가입한 적이 없는데 이미 가입된 회원이라고 나와요. 어떻게 하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>번거로우시겠지만 고객센터로 문의 부탁드립니다.</span>
                        </div>
                   </div>
                </article>
                <article id="j_ntcs_article7" class="j_ntcs_cscontent">
                    <div>
                        <div class="j_ntcs_que">
                        <span>제품의 자세한 정보는 어떻게 알 수 있나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>각 제품의 상세 페이지에서 확인 가능하며, 더욱 자세한 정보는 제품상세페이지 내 문의하기를 통해 판매 업체에 문의 가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>앱으로도 볼수 있나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>앱 서비스는 현재 제공하고 있지 않습니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>상담방법과 상담가능시간 유선번호는 어떻게 되나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>상담 시간은 평일 09:00 ~ 18:00 (주말 & 공휴일 제외)이며, 전화번호는 1234-4321 입니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>레시피 댓글에 노출되는 아이디 변경 안 되나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>아이디 변경은 불가능합니다.</span>
                        </div>
                        <div class="j_ntcs_que">
                        <span>좋지않은 댓글을 받았습니다. 어떻게 해야하나요?</span>
                        </div>
                        <div class="j_ntcs_anw">
                        <span>번거로우시겠지만 고객센터로 문의 부탁드립니다.</span>
                        </div>
                   </div>
                </article>
                <article id="j_ntcs_article8" class="j_ntcs_cscontent j_ntcs_cscontent_select">
                    <div>
                        <div class="j_ntcs_ntitle">
                        <span>[공지] 롯데택배 파업으로 인한 출고 제한 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 작성일 : 2022.04.21</span>
                        </div>
                        <div class="j_ntcs_ncontent">
                        <span><p>송파, 강동, 일산, 울산, 창원거제 일부 지역 파업으로 인하여 출고제한으로 배송이 어려우니 이 점 참고하시어 주문 부탁드립니다.</p></span>
                        </div>
                        <div class="j_ntcs_ntitle">
                        <span>[공지] 추석 배송 지연 공지 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 작성일 : 2021.09.13</span>
                        </div>
                        <div class="j_ntcs_ncontent">
                        <span><p>추석 전 출고 물량 증가와 코로나19로 인하여 택배사 지연이 발생되고 있습니다.</p>
                            <p>집화 이력 후 1일에서 최대 3일까지 지연될 수 있는 점 참고 부탁드리며, 간헐적으로 출고된 택배사 홈페이지에서 송장번호로 배송 움직임 확인 부탁드리겠습니다.</p>
                            <p>택배기사분들도 최대한 빠르게 배송하시려 노력하고 있으니 수령 시까지 지연될 수 있는 점 양해 부탁드립니다.</p>
                            <p>즐거운 명절 되세요. 감사합니다.</p></span> 
                        </div>
                   </div>
                </article>
                
            </section>
        </div>
    </div>
    <script>

        $(".j_ntcs_que").click(function() {
            $(this).next(".j_ntcs_anw").stop().slideToggle(300);
            $(this).toggleClass('on').siblings().removeClass('on');
            $(this).next(".j_ntcs_anw").siblings(".j_ntcs_anw").slideUp(300); // 1개씩 펼치기
        });

        $(".j_ntcs_ntitle").click(function() {
            $(this).next(".j_ntcs_ncontent").stop().slideToggle(300);
            $(this).toggleClass('on').siblings().removeClass('on');
            $(this).next(".j_ntcs_ncontent").siblings(".j_ntcs_ncontent").slideUp(300); // 1개씩 펼치기
        });

    $(".j_ntcs_btn").on("click", function() {
		  $(".j_ntcs_btn").next("label").removeClass("labelChecked1");
		  var val = $(this).attr("sn");
		  $(this).next("label").addClass("labelChecked1");
          $(".j_ntcs_cscontent").removeClass("j_ntcs_cscontent_select");
          $("#"+val).addClass("j_ntcs_cscontent_select");
        });
    </script>
</body>
</html>