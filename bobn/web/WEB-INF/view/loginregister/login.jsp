<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/loginregister/login.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>밥앤-로그인및계정찾기</title>
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
 <%@ include file="/WEB-INF/view/common/template_header.jsp" %>

    <div class="l_login_wrap">
        <div class="l_login_form-wrap">
            <div class="l_login_button-wrap">
                <div id="l_login_btn"></div>
                <button type="button" class="l_login_togglebtn" onclick="login()">&nbsp&nbsp&nbsp로그인&nbsp</button>
                <button type="button" class="l_login_togglebtn" onclick="idfind()">아이디 찾기</button>
                <button type="button" class="l_login_togglebtn" onclick="pwdfind()">비밀번호 찾기</button>
            </div>
            
            <!-- 여기서부터 기능구현부 -->
            <form id="l_login_login" action="<%=request.getContextPath()%>/login.lo" method="post" class="l_login_input-group">
                <input type="text" class="l_login_input-field" name="id" id="id" placeholder="아이디 입력" required>
                <input type="password" class="l_login_input-field" name="pwd" id="pwd" placeholder="비밀번호 입력" required>
                <button class="l_login_submit" id="login" type="submit">로그인</button>
                <button class="l_login_justbtn" type="button" onclick="toregister()">회원가입</button>
            </form>
            <form id="l_login_idfind" class="l_login_input-group">
                <input type="text" class="l_login_input-field" name="name_idfind" id="name_idfind" placeholder="이름 입력" required>
                <input type="email" class="l_login_input-field" name="email_idfind" id="email_idfind" placeholder="이메일 주소 입력" required>
                <button class="l_login_submit" type="button" onclick="toidfind()">아이디 찾기</button>
            </form>
            <form id="l_login_passwordfind" action="<%=request.getContextPath()%>/pwdfind.lo" method="get" class="l_login_input-group">
                <input type="text" class="l_login_input-field" name="name_pwdfind" id="name_pwdfind" placeholder="이름 입력" required>
                <input type="text" class="l_login_input-field" name="id_pwdfind" id="id_pwdfind" placeholder="ID 입력" required>
                <input type="email" class="l_login_input-field" name="email_pwdfind" id="email_pwdfind" placeholder="이메일 주소 입력" required>
                <button class="l_login_submit">비밀번호 찾기</button>
            </form>
        </div>
       
        <%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
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
        function pwdfind(){
            x.style.left = "-850px";
            y.style.left = "-450px";
            y2.style.left = "170px";
            z.style.left = "370px";
        }
    </script>
    <script>
    	//유입 경로를 알아내서 다시 보내주는 위치 지정(파싱, 이전 URL)
    	//var refer = document.referrer;
    	//if(refer.indexOf(page) !=-1) {
    		//메인페이지로 이동
    		//window.location.href = "메인페이지 경로 넣어주기";
    	//}else{
    		//window.location.href = refer;
    	//}
    </script>
    <script>
    	function toregister(){
    		location.href="register"; 
    	}
    	
		
		
    	function toidfind(){
    		var nameid = document.getElementById("name_idfind");
            var emailid = document.getElementById("email_idfind");
                var inputnameid = $('#name_idfind').val();
                var inputemailid = $('#email_idfind').val();
                console.log("ajax 전까지 들어왔어");
                console.log("이제 inputnameid를 찍어볼게");
                console.log(inputnameid);
                console.log("이제 inputemailid를 찍어볼게");
                console.log(inputemailid);
                
                $.ajax({
                    url:'idfind.lo',
                    async:false,
                    type:'post',
                    data:{ 'inputnameid' : inputnameid,
                    	'inputemailid' : inputemailid},
                    dataType:'json',
                    success:function(data){
                    	if (data != null) {
                    		
                    		alert("회원님의 ID는  "+data.idshow+"  입니다.");
                            console.log("ajax 진입-성공(data)까지 들어왔어");
                            
                            $('#id').val(data.idshow);
                            $("#id").prop('readonly', true);
                            $('#id_pwdfind').val(data.idshow);
                            $("#id_pwdfind").prop('readonly', true);
                            
                        } else {
                            console.log("ajax 진입-성공(else)까지 들어왔어");
                            alert("정보를 다시 한번 제대로 입력해주시기 바랍니다. 만약 문제가 지속될 시 고객센터로 문의바랍니다.");
                        }
                    },
                    error : function(error) {
                        alert("정보를 다시 한번 제대로 입력해주시기 바라며 문제가 지속될 시 고객센터로 문의주시기 바랍니다.");
                        console.log("ajax 진입(에러)까지 들어왔어");
                    }
                });
            console.log("ajax 진입 후의 영역까지 들어왔어");
            }  
    	
    	
    	
    	function topwdfind(){
    		
    	}
    </script>
    
</body>
</html>