<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<!-- font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">
<style type="text/css">

/* 부트스트랩 반응형 제거 코드 - 전체*/
.container {
	width: 1500px;
	max-width: none !important;
	margin-left: 80.500px;
	margin-right: 80.500px;
}
/* footer */
.col-2 {
	width: 1500px;
}

.p_footer_sns {
	margin-right:10px;
}
</style>
<title></title>
</head>

<body>
	<!-- 특수문자 w3shools에서 바꾸기 -->
	<footer>
		<hr>
		<div class="container">
			<footer class="py-5">
				<div class="row">
					<div class="col-2">
						<a href="#" style="text-decoration: none; color: #343f56;"><h4>고객센터</h4></a>
						<h5>1234-4321</h5>
						<ul class="nav flex-column">
							<li class="nav-item mb-2"
								style="font-size: 0.9rem; color: #343f56;">평일 09:00 ~ 18:00
								(주말, 공휴일 제외)</li>
							<li class="nav-item mb-2"></li>
							<li class="nav-item mb-2"
								style="font-size: 0.8rem; color: #343f56;">(주)밥엔</li>
							<li class="nav-item mb-2"
								style="font-size: 0.8rem; color: #343f56;">대표이사 : 김밥상 |
								개인정보보호채임자 : 이밥엔 | 사업자등록번호 : 123-45-5678 | 통신판매업신고번호 :
								제2022-서울어디-1234호</li>
							<li class="nav-item mb-2"
								style="font-size: 0.8rem; color: #343f56;">(12345) 서울 특별시
								강남구 서초동 밥상타워 2301호</li>
							<!-- 호버 시 커서 모양 바꿔야 함 -->
							<li class="nav-item mb-2">
							<!-- sns 아이콘 간격 조정 필요 -->
 							<%-- <div class="p_footer_sns"><object data="<%=request.getContextPath() %>/resources/image/common_main/youtube.svg" type="image/svg+xml"><a href="#"></a></object></div>
							<span class="p_footer_sns"><object data="<%=request.getContextPath() %>/resources/image/common_main/instagram.svg" type="image/svg+xml"><a href="#"></a></object></span> 
							<span><object data="<%=request.getContextPath() %>/resources/image/common_mainfacebook.svg" type="image/svg+xml"><a href="#"></a></object></span>   --%>
							</li>
							<li class="nav-item mb-2"
								style="font-size: 0.7rem; color: #343f56;">Copyright 2022
								BOB&Co.,Ltd. All rights reserved</li>
						</ul>
					</div>
				</div>
		</div>
	</footer>

</body>
</html>