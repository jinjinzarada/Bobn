
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/css/mypage/mypage.css">

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
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
</head>

<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<section>
		<div class="container">
			<br> <br>
			<h3>마이페이지</h3>
			<br>

			<div class="tab">
				<button class="tablinks" onclick="opentab(event, 'tab01')">주문/배송
					조회</button>
				<button class="tablinks" onclick="opentab(event, 'tab02')">회원
					정보 수정</button>
				<button class="tablinks" onclick="opentab(event, 'tab03')">회원
					탈퇴</button>
			</div>

			<div id="tab01" class="tabcontent">
				<h4 class="tabhead">주문/배송 조회</h4>
				<br>
				<div class="card" style="width: 11rem;">
					<div class="card-body">
						<h5 class="card-title">결제 완료</h5>
						<p class="card-text">0</p>
						<!-- 데이터 받아 와야 함 -->
					</div>
				</div>
				<div class="card" style="width: 11rem;">
					<div class="card-body">
						<h5 class="card-title">상품 준비 중</h5>
						<p class="card-text">0</p>
						<!-- 데이터 받아 와야 함 -->
					</div>
				</div>
				<div class="card" style="width: 11rem;">
					<div class="card-body">
						<h5 class="card-title">배송 중</h5>
						<p class="card-text">0</p>
						<!-- 데이터 받아 와야 함 -->
					</div>
				</div>
				<div class="card" style="width: 11rem;">
					<div class="card-body">
						<h5 class="card-title">배송 완료</h5>
						<p class="card-text">0</p>
						<!-- 데이터 받아 와야 함 -->
					</div>
				</div>
			</div>

			<div id="tab02" class="tabcontent">
				<h4 class="tabhead">회원 정보 수정</h4>
				<br>
				<div class="row g-3 align-items-center">
					<div class="col-auto">
						<label for="inputPassword6" class="col-form-label">Password</label>
					</div>
					<div class="col-auto">
						<input type="password" id="inputPassword6" class="form-control"
							aria-describedby="passwordHelpInline">
					</div>
					<div class="col-auto">
						<span id="passwordHelpInline" class="form-text"> Must be
							8-20 characters long. </span>
					</div>
				</div>
			</div>

			<div id="tab03" class="tabcontent">
				<h4 class="tabhead">회원 탈퇴</h4>
				<br>
				<div class="card" style="width: 20rem; text-align: left;">
					<div class="card-header"
						style="color: #343f56; font-size: 16px; font-weight: 600;">탈퇴
						사유를 선택해주세요.</div>
					<div class="card-body">
						<div class="form-check">
							<br> <input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1" checked>
							<label class="form-check-label" for="flexRadioDefault1">
								사이트 사용 빈도가 낮음 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"> 서비스가
								마음에 들지 않음 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"> 배송 불만족
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio"
								name="flexRadioDefault" id="flexRadioDefault1"> <label
								class="form-check-label" for="flexRadioDefault1"> 기타 </label>
						</div>
						<br> <input class="btn btn-danger" type="submit"
							value="탈퇴하기">
					</div>
				</div>
			</div>
		</div>
	</section>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
	
	<script>
	$(document).ready(function() {
		$('#tab01').show();
		$('#tab02').hide();
		$('#tab03').hide();
	});
	function opentab(evt, mypagetab) {
		var i, p_tabcontent, p_tablinks;

		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className
					.replace(" active", "");
		}
		document.getElementById(mypagetab).style.display = "block";
		evt.currentTarget.className += " active";
	}
	</script>
</body>
</html>