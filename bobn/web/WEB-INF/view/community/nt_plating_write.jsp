<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_plating_write.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_header.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/css/main/template_footer.css">
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
<title>플레이팅_글쓰기</title>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</head>
<body>
<div id="j_ntpw_header">
<%@ include file="/WEB-INF/view/common/template_header.jsp" %>
</div>
 <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntpw_article1">
                    <form action="<%=request.getContextPath()%>/ntpcwrite" method="post" enctype="multipart/form-data">
                        <table id="j_ntpw_write">
                            <tr>
                                <th class="j_ntpw_table j_ntpw_ta">컨셉</th>
                                <td class="j_ntpw_tablewr">
                                    <input type="radio" name="pbConcept" value="1" class="j_ntpw_concept" required="required">생일&nbsp;&nbsp;
                                    <input type="radio" name="pbConcept" value="2" class="j_ntpw_concept" required="required">홈파티&nbsp;&nbsp;
                                    <input type="radio" name="pbConcept" value="3" class="j_ntpw_concept" required="required">안주
                                </td>
                            </tr>
                            <tr>
                                <th class="j_ntpw_table j_ntpw_ta">제목</th>
                                <td class="j_ntpw_tablewr">
                                    <input type="text" id="j_ntpw_title" name="pbTitle" placeholder="제목을 입력하시오." required="required">
                                </td>
                            </tr>

                            <tr>
                                <th class="j_ntpw_table j_ntpw_ta" id="j_ntpw_table_name">내용</th>
                                <td class="j_ntpw_tablewr">
                                    <textarea id="j_ntpw_textarea"rows="20" cols="75" name="pbContent" placeholder="내용을 입력하시오." required="required"></textarea>
                                </td>
                            </tr>

                            <tr>
                                <th class="j_ntpw_table">파일등록</th>
                                <td id="j_ntpw_files" class="j_ntpw_tablewr">
                                    <input type="file" name="uploadFile" id="j_ntpw_file_btn" required="required">
                                </td>
                            </tr>
                            <tr>
                                <th class="j_ntpw_table">파일추가</th>
                                <td class="j_ntpw_tablewr">
                                    <button type="button"id="j_ntpw_addfile">파일 추가
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2" id="j_ntpw_submit"><button type="submit" id="j_ntpw_write_btn">저장</button></th>
                            </tr>
                          </table>
                    </form>
                </article>
            </section>
        </div>
    </div>
    <script>
        var fileCnt = 1;
            $("#j_ntpw_addfile").click(function(){
                if(fileCnt == 5){
                    return false;
                }
                var html="";
                fileCnt++;
                html+= '<input type="file" name="uploadFile"><br>';
                $("#j_ntpw_files").append(html);
        });
    </script>
    <div id="j_ntpw_footer">
	<%@ include file="/WEB-INF/view/common/template_footer.jsp" %>
	</div>
</body>
</html>