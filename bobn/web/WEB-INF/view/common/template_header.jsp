<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

<title></title>

<style type="text/css">
* {
	font-family: 'Noto Sans', sans-serif;
}
/* header */
/* css hover 시 수정 필요 (border) */

/* 부트스트랩 반응형 제거 코드 - 전체*/
.container {
	width: 1500px;
	max-width: none !important;
	margin-left: 80.500px;
	margin-right: 80.500px;
}

.nav-tabs .nav-item.show .nav-link {
	border: none;
}

nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
	border: none;
}

nav:hover {
	color: #f54748;
	border: none;
}

.link-dark {
	color: #343f56;
	font-weight: 500;
}

.link-dark:hover {
	color: #f54748;
}

.p_logo_size {
	width: 100x;
	height: 70px;
	margin-top: 20px;
	margin-left: 83.500px;
	/* flex : 0 0 auto; */
	display: inline-block;
	/* 로고 위치 맞춰야 함 (left - 아래 메뉴랑 일치하도록) */
}

.p_icon {
	width: 20px;
	height: 20px;
	margin-bottom: 5px;
	color: #f54748;
}
/* dropdown - 색 변경 (마우스 커서 변경 시, 백그라운드 색) */
.nav-link {
	color: #343f56;
}

.nav-link:hover {
	color: #f54748;
}
</style>
</head>

<body>
	<header>
		<div>
			<!-- 메인 페이지로 연결 필요 -->
			<div>
				<a href="#"> <img src="/bobn/web/resources/image/common_main/bobn_logo.png" class="p_logo_size">
				</a>
			</div>
			<nav class="nav nav-tabs">
				<div class="container d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2" aria-current="page">Main</a></li>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Shopping </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Main</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">BEST</a></li>
							<li><a class="dropdown-item" href="#">NEW</a></li>
							<li><a class="dropdown-item" href="#">SALE</a></li>
						</ul>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Curation </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Main</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">레시피</a></li>
							<li><a class="dropdown-item" href="#">맛집추천</a></li>
							<li><a class="dropdown-item" href="#">먹BTI</a></li>
						</ul>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Community </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Main</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">플레이팅</a></li>
							<li><a class="dropdown-item" href="#">레시피</a></li>
							<li><a class="dropdown-item" href="#">요리콘테스트</a></li>
						</ul>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2">Event</a></li>
						<li class="nav-item dropdown">
					</ul>
					<ul class="nav">
						<!-- 각 아이콘에 페이지 연결 필요 -->
						<!-- search : 클릭 시 모달 혹은 서치 창 구현 해야함 -->
						<!-- mypage : 클릭 시 모달 구현해야 함 -->
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2"> 
							<object data="/bobn/web/resources/common_main/image/search.svg" type="image/svg+xml" class="p_icon"></object>>
						</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2"> 
							<object data="/bobn/web/resources/common_main/image/cart.svg" type="image/svg+xml" class="p_icon"></object>>
						</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2"> 
							<object data="/bobn/web/resources/common_main/image/person-fill.svg" type="image/svg+xml" class="p_icon"></object>>
						</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2">Login</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2">|</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2">Sign up</a></li>
					</ul>
				</div>
			</nav>
	</header>


</body>
</html>