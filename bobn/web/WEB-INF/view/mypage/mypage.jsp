<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/mypage/mypage.css">


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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<title>My Page</title>
</head>

<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<section>

	</script>
		<div class="container">
			<br> <br>
			<h3>마이페이지</h3>
			<br>
			<div class="tab">
				<button class="tablinks" onclick="opentab(event, 'tab01')">회원
					정보 수정</button>
				<button class="tablinks" onclick="opentab(event, 'tab02')">회원
					탈퇴</button>
			</div>

			<div id="tab01" class="tabcontent">
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

			<div id="tab02" class="tabcontent">
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
		
	<script>
	$(document).ready(function() {
		$('#tab01').show();
		$('#tab02').hide();
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
	</section>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>