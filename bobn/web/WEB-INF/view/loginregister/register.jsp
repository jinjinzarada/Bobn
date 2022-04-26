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
                        <input type="text" id="uid" placeholder="아이디를 입력하세요." required>
                    </li>
                    <li class="item">
                        <button class="idcheck">중복확인</button>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        비밀번호
                    </li>
                    <li class="item">
                        <input type="password" id="pwd" placeholder="비밀번호를 입력하세요." required>
                    </li>
                    <li class="item">
                        
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        비밀번호 확인
                    </li>
                    <li class="item">
                        <input type="password" id="repwd" placeholder="비밀번호를 입력하세요." required>
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
                        <button class="emailcheck">중복확인</button>
                    </li>
                </ul>
                <ul class="container">
                    <li class="item center">
                        생년월일
                    </li>
                    <li class="item">
                        <input type="date" required>
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
                        <button class="submit" onclick="rcheck()">가입하기</button>
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
    <script>
        //유효성검사
        function rcheck() {
            //변수에 담아주기
                var uid = document.getElementById("uid");
                var pwd = document.getElementById("pwd");
                var repwd = document.getElementById("repwd");
                var uname = document.getElementById("uname");
                var mobile = document.getElementById("mobile");
                var email_id = document.getElementById("email_id");
                var agree = document.getElementById("agree");


                //비밀번호 영문자+숫자+특수조합(8~25자리 입력) 정규식
                var pwdCheck = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/;
                if (!pwdCheck.test(pwd.value)) {
                    alert("비밀번호는 영문자+숫자+특수문자 조합으로 8~25자리 사용해야 합니다.");
                    pwd.focus();
                    return false;
                };

                if (repwd.value !== pwd.value) {
                    alert("비밀번호가 일치하지 않습니다..");
                    repwd.focus();
                    return false;
                };

                var mobilecheck = /^[0-9]+/g; //숫자만 입력하는 정규식
                if (!mobilecheck.test(mobile.value)) {
                    alert("전화번호는 숫자만 입력할 수 있습니다.");
                    mobile.focus();
                    return false;
                }

                //입력 값 전송
                document.registerform.submit(); //유효성 검사의 포인트   
                }

                //아이디 중복체크 팝업창(현재 공백문서)
                function id_check() {
                //window.open("팝업될 문서 경로", "팝업될 문서 이름", "옵션");
                window.open("", "", "width=600, height=200, left=200, top=100");
                }

    </script>
</body>
</html>