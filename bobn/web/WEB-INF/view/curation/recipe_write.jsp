<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/curation/recipe_write.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	

<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">


<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">


	
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_레시피_작성</title>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
	
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
	<%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<div class="l_wrap content">
		<div id="l_content">
			<section>
				<article id="l_recwrite_article1">
					<form action="<%=request.getContextPath()%>/recwrite"
						method="post" enctype="multipart/form-data">
						<table id="l_recwrite_write">
							<tr>
								<th class="l_recwrite_table l_recwrite_ta" style="color: white;">컨셉</th>
								<td class="l_recwrite_tablewr"><input type="radio"
									name="rConcept" value="1" class="l_recwrite_concept"
									required="required">자취(심플)&nbsp; <input type="radio"
									name="rConcept" value="2" class="l_recwrite_concept"
									required="required">가족(상차림)&nbsp; <input type="radio"
									name="rConcept" value="3" class="l_recwrite_concept"
									required="required">홈파티(대량)</td>
							</tr>
							<tr>
								<th class="l_recwrite_table l_recwrite_ta" style="color: white;">제목</th>
								<td class="l_recwrite_tablewr"><input type="text"
									id="l_recwrite_title" name="rTitle" placeholder="제목 입력"
									required="required"></td>
							</tr>

							<tr>
								<th class="l_recwrite_table l_recwrite_ta" id="l_recwrite_table_name" style="color: white;">내용</th>
								<td class="l_recwrite_tablewr">
								<textarea id="summernote" name="editordata" placeholder="내용 입력"></textarea></td>
								
							</tr>

							<tr>
								<th class="l_recwrite_table" style="color: white;">대표 썸네일 이미지 등록</th>
								<td id="l_recwrite_files" class="l_recwrite_tablewr"><input
									type="file" name="uploadFile" id="l_recwrite_file_btn"
									required="required"></td>
							</tr>
							<tr>
								<th class="l_recwrite_table" style="color: white;">썸네일 이미지 추가</th>
								<td class="l_recwrite_tablewr">
									<button type="button" id="l_recwrite_addfile">이미지 추가
								</td>
							</tr>
							<tr>
								<th colspan="2" id="l_recwrite_submit"><button type="submit"
										id="l_recwrite_write_btn">저장</button></th>
							</tr>
						</table>
					</form>
				</article>
			</section>
		</div>
	</div>
	<script>
        var fileCnt = 1;
            $("#l_recwrite_addfile").click(function(){
                if(fileCnt == 5){
                    return false;
                }
                var html="";
                fileCnt++;
                html+= '<input type="file" name="uploadFile"><br>';
                $("#l_recwrite_files").append(html);
        });
            
            $(document).ready(function() {
            	  $('#summernote').summernote();
            	});
    </script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>