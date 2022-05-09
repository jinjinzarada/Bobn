<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/common/common.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_recipe_write.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피_글쓰기</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
 <%@ include file="/WEB-INF/view/common/template_header.jsp"%>
	<div class="j_wrap content">
		<div id="j_content">
			<section>
				<article id="j_ntrw_article1">
					<form action="<%=request.getContextPath()%>/ntrcwrite"
						method="post" enctype="multipart/form-data">
						<table id="j_ntrw_write">
							<tr>
								<th class="j_ntrw_table j_ntrw_ta">컨셉</th>
								<td class="j_ntrw_tablewr"><input type="radio"
									name="rbConcept" value="1" class="j_ntrw_concept"
									required="required">중식&nbsp;&nbsp; <input type="radio"
									name="rbConcept" value="2" class="j_ntrw_concept"
									required="required">일식&nbsp;&nbsp; <input type="radio"
									name="rbConcept" value="3" class="j_ntrw_concept"
									required="required">양식</td>
							</tr>
							<tr>
								<th class="j_ntrw_table j_ntrw_ta">제목</th>
								<td class="j_ntrw_tablewr"><input type="text"
									id="j_ntrw_title" name="rbTitle" placeholder="제목을 입력하시오."
									required="required"></td>
							</tr>

							<tr>
								<th class="j_ntrw_table j_ntrw_ta" id="j_ntrw_table_name">내용</th>
								<td class="j_ntrw_tablewr"><textarea id="j_ntrw_textarea"
										rows="20" cols="75" name="rbContent" placeholder="내용을 입력하시오."
										required="required"></textarea></td>
							</tr>

							<tr>
								<th class="j_ntrw_table">파일등록</th>
								<td id="j_ntrw_files" class="j_ntrw_tablewr"><input
									type="file" name="uploadFile" id="j_ntrw_file_btn"
									required="required"></td>
							</tr>
							<tr>
								<th class="j_ntrw_table">파일추가</th>
								<td class="j_ntrw_tablewr">
									<button type="button" id="j_ntrw_addfile">파일 추가
								</td>
							</tr>
							<tr>
								<th colspan="2" id="j_ntrw_submit"><button type="submit"
										id="j_ntrw_write_btn">저장</button></th>
							</tr>
						</table>
					</form>
				</article>
			</section>
		</div>
	</div>
	<script>
        var fileCnt = 1;
            $("#j_ntrw_addfile").click(function(){
                if(fileCnt == 5){
                    return false;
                }
                var html="";
                fileCnt++;
                html+= '<input type="file" name="uploadFile"><br>';
                $("#j_ntrw_files").append(html);
        });
    </script>
	<%@ include file="/WEB-INF/view/common/template_footer.jsp"%>
</body>
</html>