<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<header>
		<div>
			<div>
				<a href="<%=request.getContextPath() %>/main"> <img src="<%=request.getContextPath() %>/resources/image/common_main/bobn_logo.png" class="p_logo_size">
				</a>
			</div>
			<nav class="nav nav-tabs">
				<div class="container d-flex flex-wrap">
					<ul class="nav me-auto">
						<li class="nav-item"><a href="<%=request.getContextPath() %>/main"
							class="nav-link link-dark px-2" aria-current="page">Main</a></li>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"> Shopping </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/shopblist">BEST</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath() %>/shopnlist">NEW</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath() %>/shopslist">SALE</a></li>
						</ul>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"> Curation </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="<%=request.getContextPath() %>/curreclist">레시피</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath() %>/currecom">맛집추천</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath() %>/cumbti">먹BTI</a></li>
						</ul>
						<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
							role="button" data-bs-toggle="dropdown" aria-expanded="false"> Community </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="<%=request.getContextPath() %>/ntpclist">플레이팅</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/ntrclist">레시피</a></li>
							<li><a class="dropdown-item" href="<%=request.getContextPath()%>/ntcclist">요리콘테스트</a></li>
						</ul>
						<li class="nav-item"><a href="<%=request.getContextPath() %>/event"
							class="nav-link link-dark px-2">Event</a></li>
					</ul>
					<ul class="nav">
						<li class="nav-item">
						<a href="<%=request.getContextPath() %>/blist" class="nav-link link-dark px-2"> 
							<img src="<%=request.getContextPath() %>/resources/image/common_main/shoppingcart.png" class="p_icon">
						</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath() %>/mypage" class="nav-link link-dark px-2"> 
							<img src="<%=request.getContextPath() %>/resources/image/common_main/person.png" class="p_icon">
						</a></li>
						<!-- 로그인, 아웃 변경 필요 -->
						<li class="nav-item"><a href="<%=request.getContextPath() %>/login"
							class="nav-link link-dark px-2">Login</a></li>
						<li class="nav-item"><a href="#"
							class="nav-link link-dark px-2">|</a></li>
						<li class="nav-item"><a href="<%=request.getContextPath() %>/register"
							class="nav-link link-dark px-2">Sign up</a></li>
					</ul>
				</div>
				</div>
		</header>
