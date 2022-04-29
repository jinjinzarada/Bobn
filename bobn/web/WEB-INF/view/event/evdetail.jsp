<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->

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
* {
	font-family: 'Noto Sans', sans-serif;
}
/* 부트스트랩 반응형 제거 코드 - 전체*/
.container {
	width: 1500px;
	max-width: none !important;
	margin-left: 80.500px;
	margin-right: 80.500px;
}

.p_section_container {
	margin-left: 80.500px;
	margin-right: 80.500px;
	margin-top: 80.500px;
	margin-bottom: 80.500px;
}

.p_section_head {
	color: #343f56;
}

.btn-primary {
    margin-left: 50%;
    background-color: #f54748;
    border:none;
    
}
</style>
</head>
<body>
    <div class="p_section_container">
        <div class="p_headline_container">
            <div class="p_section_head">
                <h3>EVENT</h3>
                <br><br>
            </div>
            <table class="table">
                <colgroup>
                <col style="width: 485px">
                </colgroup>
                <thead>
                  <tr>
                    <th>제목</th>
                  </tr>
                </thead>
                <tbody>
                  <tr style="border:transparent">
                    <td>이미지</td>
                  </tr>
                  <tr>
                    <td>내용</td>
                  </tr>
                  <tr>
                    <td>공유하기</td>
                  </tr>
                </tbody>
                </table>
                <br><br>
        </div>
        <div>
            <input class="btn btn-primary" type="button" value="목록으로">
        </div>
</div>
</section>   
</body>
</html>