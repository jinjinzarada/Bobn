<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/loginregister/register.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥앤-회원가입</title>
</head>
<body>
<body>

    <div class="title">회원가입</div>
    <div class="register">
        <form action="#" name="registerform" method="">
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
                        <input type="text" id="uid" placeholder="사용하고 싶은 아이디를 입력하세요." required>
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
                        <input type="password" id="pwd" placeholder="영문자+숫자+특수문자 조합으로 8~12자리 입력" required>
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
                        <input type="email" id="email_id" placeholder="이메일을 입력하세요." required>
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
                        <input type="date" id="birthday" required>
                    </li>
                    <li class="item">
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        성별
                    </li>
                    <li class="item">
                        <select name="gender" id="">
                            <option value="선택" selected>선택</option>
                            <option value="남성">남성</option>
                            <option value="여성">여성</option>
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
                        <input type="text" id="mobile" placeholder="휴대전화번호 입력">
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
                        <input type="checkbox" name="name2" value="yes1" required><span class="spansingle">&nbsp(필수)이용약관동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" value="yes2" required><span class="spansingle">&nbsp(필수)개인정보수집 및 이용동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" value="yes3" required><span class="spansingle">&nbsp(필수)개인정보 제3자 제공동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" value="yes4"><span class="spansingle">&nbsp(선택)밥앤신상품 및 맞춤 큐레이션 SMS, 메일 수신동의</span>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                    </li>
                    <li class="item">
                        <input type="checkbox" name="name2" value="yes5" required><span class="spansingle">&nbsp(필수)본인은 만 14세 이상이며, 이용약관 및 개인정보 수집에 동의합니다.</span>
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
                        <button class="button_submit" onclick="rcheck()">가입하기</button>
                    </li>
                    <li class="item">
                        <button class="cancel">취소</button>
                    </li>
                </ul>
            </div>
        </form>
    </div>
    <div class="title2"></div>
    <div style="color: white;">.</div>

    <script>
        //전체동의기능
        function selectAll(selectAll)  {
            const checkboxes = document.getElementsByName('name2');
            checkboxes.forEach((checkbox) => {
                checkbox.checked = selectAll.checked;
            })
        }
    </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        //유효성검사와 확인사항 확인 후 submit
        function rcheck() {
            //변수에 담아주기
                var uid = document.getElementById("uid");
                var pwd = document.getElementById("pwd");
                var repwd = document.getElementById("repwd");
                var uname = document.getElementById("uname");
                var mobile = document.getElementById("mobile");
                var birthdate = document.getElementById("birthday");

                //비밀번호 영문자+숫자+특수조합(8~12자리 입력) 정규식
                var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,12}$/;
                if (!pwdCheck.test(pwd.value)) {
                    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~12자리 사용해야 합니다.");
                    pwd.value=null;
                    pwd.focus();
                    return false;
                };


                 //숫자만 입력 가능하고, 번호는 01로 시작하고, 하이픈은 없어야 하는 정규식
                 var mobilecheck = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;;
                if (!mobilecheck.test(mobile.value)) {
                    alert("전화번호를 올바르게 입력해주세요.(- 은 생략하고 입력해주세요)");
                    mobile.value=null;
                    mobile.focus();
                    return false;
                };

                //비밀번호 일치여부 확인
                if (repwd.value !== pwd.value) {
                    alert("비밀번호가 일치하지 않습니다..");
                    repwd.value=null;
                    repwd.focus();
                    return false;
                };

                //생일에 대한 14세 이상 여부 판별
                var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,12}$/;
                if (!pwdCheck.test(pwd.value)) {
                    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~12자리 사용해야 합니다.");
                    pwd.value=null;
                    pwd.focus();
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

            //입력 값 전송
            document.registerform.submit();   
            }



            //아이디 중복체크 팝업창(현재 공백문서)
            function id_check() {
            var uid = document.getElementById("uid");
            var uidcheck = /^(?=.*[A-Za-z])[A-Za-z\d]{6,12}$/;
            if (!uidcheck.test(uid.value)) {
                    alert("ID는 6자 이상 14자 이하이면서 최소 1개 이상의 영문자를 포함하여야 하며 숫자의 사용이 가능합니다.");
                    uid.value=null;
                    uid.focus();
                    return false;
                };
            //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
            window.open("", "", "width=600, height=200, left=200, top=100");
            //결과값을 받아와서 중복이 아니라면 중복체그 확인 여부에 y를 입력
            $("input[id=idCheck_yn]").val('y');
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
            //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
            window.open("", "", "width=600, height=200, left=200, top=100");
            //결과값을 받아와서 중복이 아니라면 중복체그 확인 여부에 y를 입력
            $("input[id=emailCheck_yn]").val('y');
            }


    </script>

    <!-- 해야하는 내용들 -->
    <!-- 1. 중복체크
    2. 유효성검사 후 제출하면 페이지 연결 -->
</body>
</html>