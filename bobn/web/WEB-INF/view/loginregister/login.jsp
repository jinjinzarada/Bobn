<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/loginregister/login.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥앤-로그인및계정찾기</title>
</head>
<body>
 <div class="title"></div>
    <div class="l_login_wrap">
        <div class="l_login_form-wrap">
            <div class="l_login_button-wrap">
                <div id="l_login_btn"></div>
                <button type="button" class="l_login_togglebtn" onclick="login()">&nbsp&nbsp&nbsp로그인&nbsp</button>
                <button type="button" class="l_login_togglebtn" onclick="idfind()">아이디 찾기</button>
                <button type="button" class="l_login_togglebtn" onclick="passwordfind()">비밀번호 찾기</button>
            </div>
            <form id="l_login_login" action="" class="l_login_input-group">
                <input type="text" class="l_login_input-field" placeholder="아이디 입력" required>
                <input type="password" class="l_login_input-field" placeholder="비밀번호 입력" required>
                <button class="l_login_submit">로그인</button>
                <button class="l_login_justbtn" type="button" onclick="location.href='#'">회원가입</button>
            </form>
            <form id="l_login_idfind" action="" class="l_login_input-group">
                <input type="text" class="l_login_input-field" placeholder="이름 입력" required>
                <input type="email" class="l_login_input-field" placeholder="이메일 주소 입력" required>
                <button class="l_login_submit">아이디 찾기</button>
            </form>
            <form id="l_login_passwordfind" action="" class="l_login_input-group">
                <input type="text" class="l_login_input-field" placeholder="이름 입력" required>
                <input type="text" class="l_login_input-field" placeholder="ID 입력" required>
                <input type="email" class="l_login_input-field" placeholder="이메일 주소 입력" required>
                <button class="l_login_submit">비밀번호 찾기</button>
            </form>
        </div>
        <div class="contentfooter"></div>
    </div>
    
    <script>
        var x = document.getElementById("l_login_login");
        var y = document.getElementById("l_login_idfind");
        var y2 = document.getElementById("l_login_passwordfind");
        var z = document.getElementById("l_login_btn");
        
        function login(){
            x.style.left = "170px";
            y.style.left = "850px";
            y2.style.left = "850px";
            z.style.left = "0";
        }
        function idfind(){
            x.style.left = "-400px";
            y.style.left = "170px";
            y2.style.left = "850px";
            z.style.left = "175px";
        }
        function passwordfind(){
            x.style.left = "-850px";
            y.style.left = "-450px";
            y2.style.left = "170px";
            z.style.left = "385px";
        }
    </script>
</body>
</html>