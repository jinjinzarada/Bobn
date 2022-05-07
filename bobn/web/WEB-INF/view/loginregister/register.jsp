<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/loginregister/register.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥앤-회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<div>
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
</div>
<div class="l_all_wrap">
    <div class="title">회원가입</div>
    <div class="register">
        <form action="<%=request.getContextPath()%>/register.do" name="registerform" method="post" onsubmit="return rcheck()">
            <div class="flex">
                <ul class="container">
                    <li class="item center">
                        이름
                    </li>
                    <li class="item">
                        <input type="text" id="uname" name="name" placeholder="이름을 입력하세요." autofocus required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        아이디
                    </li>
                    <li class="item">
                        <input type="text" id="uid" name="id" placeholder="사용하고 싶은 아이디를 입력하세요." required>
                    </li>
                    <li class="item">
                        <button type="button" class="idcheck" onclick="id_check()">중복확인</button>
                        <input type="hidden" id="idCheck_yn" value="">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        비밀번호
                    </li>
                    <li class="item">
                        <input type="password" id="pwd" name="pwd" placeholder="영문자+숫자+특수문자 조합으로 8~12자리 입력" required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        비밀번호 확인
                    </li>
                    <li class="item">
                        <input type="password" id="repwd" placeholder="비밀번호를 다시 입력하세요." required>
                    </li>
                    <li class="item">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        이메일
                    </li>
                    <li class="item">
                        <input type="email" id="email_id" name="email" placeholder="이메일을 입력하세요." required>
                    </li>
                    <li class="item">
                        <button type="button" class="emailcheck" onclick="email_check()">중복확인</button>
                        <input type="hidden" id="emailCheck_yn" value="">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        생년월일
                    </li>
                    <li class="item">
                        <input type="date" name="birthdate" id="birthday" max="9999-12-31" required>
                    </li>
                    <li class="item">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        성별
                    </li>
                    <li class="item">
                        <select name="gender" id="" style="padding: 0;">
                            <option value="선택" selected>선택</option>
                            <option value="M">남성</option>
                            <option value="F">여성</option>
                        </select>
                    </li>
                    <li class="item">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        전화번호
                    </li>
                    <li class="item">
                        <input type="text" id="mobile" name="mobile" placeholder="휴대전화번호 입력">
                    </li>
                    <li class="item">
                    </li>
                </ul>
                <ul class="container" id="agreementstart">
                    <li class="item center">
                        이용약관동의
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" value="selectall" onclick='selectAll(this)'><span class="spantotal">&nbsp전체동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <div class="lineforagreeall" style="color: white;">.</div>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" class="singlecheck" value="yes1" onclick='checkSelectAll(this)' required><span class="spansingle">&nbsp(필수)이용약관동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" class="singlecheck" value="yes2" onclick='checkSelectAll(this)' required><span class="spansingle">&nbsp(필수)개인정보수집 및 이용동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" class="singlecheck" value="yes3" onclick='checkSelectAll(this)' required><span class="spansingle">&nbsp(필수)개인정보 제3자 제공동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" class="singlecheck" value="yes4" onclick='checkSelectAll(this)'><span class="spansingle">&nbsp(선택)밥앤신상품 및 맞춤 큐레이션 SMS, 메일 수신동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" class="singlecheck" value="yes5" onclick='checkSelectAll(this)' required><span class="spansingle">&nbsp(필수)본인은 만 14세 이상이며, 이용약관 및 개인정보 수집에 동의합니다.</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <button type="submit" class="button_submit">가입하기</button>
                    </li>
                    <li class="item">
                        <button class="cancel" type="reset">취소</button>
                    </li>
                </ul>
            </div>
        </form>
    </div>
    <div class="title2"></div>
   
    <div style="color: white;">.</div>
 </div>
 <div>
    <%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
    </div>
    
    <script>
        //전체동의기능
        function selectAll(selectAll)  {
            const checkboxes = document.getElementsByName('name2');
            checkboxes.forEach((checkbox) => {
                checkbox.checked = selectAll.checked;
            })
        }
        function checkSelectAll(checkbox)  {
            const selectall 
                = document.querySelector('input[value="selectall"]');
            
            if(checkbox.checked === false)  {
                selectall.checked = false;
            }            
        }

    </script>
    <script>
        //유효성검사와 확인사항 확인 후 submit
        function rcheck() {
            //변수에 담아주기
                var uid = document.getElementById("uid");
                var pwd = document.getElementById("pwd");
                var repwd = document.getElementById("repwd");
                var uname = document.getElementById("uname");
                var mobile = document.getElementById("mobile");
                

                //비밀번호 영문자+숫자+특수조합(8~12자리 입력) 정규식
                var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,12}$/;
                if (!pwdCheck.test(pwd.value)) {
                    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~12자리 사용해야 합니다.");
                    pwd.value=null;
                    pwd.focus();
                    return false;
                };

                //이름 정규식
                var nameCheck = /^[가-힣]{2,4}$/;
                if (!nameCheck.test(uname.value)) {
                    alert("이름은 한글 2~4자 사이로 입력해주세요. 5자 이상의 회원은 받지 않습니다.");
                    uname.value=null;
                    uname.focus();
                    return false;
                };

                 //휴대전화번호 - 숫자만 입력 가능하고, 번호는 01로 시작하고, 하이픈은 없어야 하는 정규식
                 var mobilecheck = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;;
                if (!mobilecheck.test(mobile.value)) {
                    alert("전화번호를 올바르게 입력해주세요.(- 은 생략하고 입력해주세요)");
                    mobile.value=null;
                    mobile.focus();
                    return false;
                };

                //비밀번호 일치여부 확인
                if (repwd.value !== pwd.value) {
                    alert("비밀번호가 일치하지 않습니다.");
                    repwd.value=null;
                    repwd.focus();
                    return false;
                };

                //생년월일로 계산한 나이가 14세 미만이면 가입 불가
                var inputbdate = document.getElementById("birthday").value;
                    var dob = new Date(inputbdate);
                    var currentdate = new Date();
                    //입력한 날짜와 현재 날짜의 차이를 월 기준으로 계산하는 식  
                    var month_diff = Date.now() - dob.getTime();  
                    //계산된 월차이를 날짜형식으로 바꿔줌 
                    var age_dt = new Date(month_diff);   
                    //연도만 추출      
                    var year = age_dt.getUTCFullYear();  
                    //나이 계산  
                    var age = Math.abs(year - 1970); 
                    if(age<14){
                    alert("14세 미만은 가입할 수 없습니다.");
                    return false;
                    };
                    if(document.getElementById("birthday").value == ''){
                    alert("생년월일을 입력해주세요.");
                    return false;
                    };
                    if(dob.getTime() > currentdate.getTime()){
                        alert("생년월일을 올바르게 입력해주세요.");
                        return false;
                        };
                        



                //아이디중복확인 및 이메일 중복확인 확인여부 체크
                if(document.getElementById("idCheck_yn").value == ""){
                    alert("아이디 중복체크를 해주세요.");
                    return false;
                };
                if(document.getElementById("emailCheck_yn").value == ""){
                    alert("이메일 중복체크를 해주세요.");
                    return false;
                };
               
                console.log("중복체크 확인 완료");

                //필수동의여부 확인
               // if(!document.querySelectorAll(input[required] == checked)){
                	//alert("필수동의를 해주세요.");
                   // return false;
               // };
                
                
                
                }



            //아이디 중복체크 팝업창(현재 공백문서)
            //var inputuid = document.getElementById("uid").value;
            
            function id_check() {
            var uid = document.getElementById("uid");
            var uidcheck = /^(?=.*[A-Za-z])[A-Za-z\d]{6,12}$/;
            if (!uidcheck.test(uid.value)) {
                    alert("ID는 6자 이상 12자 이하이면서 최소 1개 이상의 영문자를 포함하여야 하며 숫자의 사용이 가능합니다.");
                    uid.value='';
                    uid.focus();
                    return false;
                };
                
                var inputuid = $('#uid').val();
                console.log("ajax 전까지 들어왔어");
                console.log("이제 uid를 찍어볼게");
                console.log(uid);
                console.log("이제 inputuid를 찍어볼게");
                console.log(inputuid);
                
                $.ajax({
                    url:'IdCheck.do',
                    async:false,
                    type:'post',
                    data:{ 'inputuid' : inputuid },
                    dataType:'json',
                    success:function(result){
                    	if (result == 1) {
                    		alert("사용가능한 아이디입니다.\n해당 아이디로 입력 아이디가 고정되었습니다.\n아이디 변경을 희망하시면 새로 회원가입을 진행해주시기 바랍니다.");
                            console.log("ajax 진입-성공(사용가능)까지 들어왔어");
                            
                            //결과값을 받아와서 중복이 아니라면 중복체그 확인 여부에 y를 입력
                            $("input[id=idCheck_yn]").val('y');
                            $("#uid").prop('readonly', true);
                            
                        } else {
                            alert("아이디가 이미 존재합니다. 다른 아이디를 입력해주세요.");
                            console.log("ajax 진입-성공(아이디중복)까지 들어왔어");
                            
                        }
                    },
                    error : function(error) {
                        alert("아이디를 다시 한번 제대로 입력해주시기 바랍니다.");
                        console.log("ajax 진입(에러)까지 들어왔어");
                        
                    }
                });
            
            
            console.log("ajax 진입 후의 영역까지 들어왔어");
            }  

            //이메일 중복체크 팝업창(현재 공백문서)
            function email_check() {
            //이메일주소 정규식 - 숫자나 알파벳으로시작, 이메일첫자리 이후부터는 특수문자 설정한 것들 올 수 있고, 중간에 @ 들어가야 하고, .도 들어가야하며, 마지막 마디는 2~3글자
            var email_id = document.getElementById("email_id");
            var emailCheck = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
                if (!emailCheck.test(email_id.value)) {
                    alert("이메일주소를 올바르게 입력해주세요.");
                    email_id.value=null;
                    email_id.focus();
                    return false;
                };
            
                
                var inputemail = $('#email_id').val();
                console.log("ajax 전까지 들어왔어");
                console.log("이제 email_id를 찍어볼게");
                console.log(email_id);
                console.log("이제 inputemail를 찍어볼게");
                console.log(inputemail);
                
                $.ajax({
                    url:'EmailCheck.do',
                    async:false,
                    type:'post',
                    data:{ 'inputemail' : inputemail },
                    dataType:'json',
                    success:function(result){
                    	if (result == 1) {
                    		alert("사용가능한 이메일입니다.\n해당 이메일로 입력 이메일주소가 고정되었습니다.\n이메일주소 변경을 희망하시면 새로 회원가입을 진행해주시기 바랍니다.");
                            console.log("ajax 진입-성공(사용가능)까지 들어왔어");
                            
                            //결과값을 받아와서 중복이 아니라면 중복체그 확인 여부에 y를 입력
                            $("input[id=emailCheck_yn]").val('y');
                            $("#email_id").prop('readonly', true);
                            
                        } else {
                            alert("해당 이메일주소가 이미 존재합니다. 다른 이메일주소를 입력해주세요.");
                            console.log("ajax 진입-성공(아이디중복)까지 들어왔어");
                            
                        }
                    },
                    error : function(error) {
                        alert("이메일주소를 다시 한번 제대로 입력해주시기 바랍니다.");
                        console.log("ajax 진입(에러)까지 들어왔어");
                        
                    }
                });
            
            console.log("ajax 진입 후의 영역까지 들어왔어");
                
            
            }

    </script>

    
</body>
</html>