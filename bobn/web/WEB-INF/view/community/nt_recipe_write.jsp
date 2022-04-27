<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_recipe_write.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피_글쓰기</title>
</head>
<body>
 <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntrw_article0">
                    <p>레시피_글쓰기</p>
                </article>
                <article id="j_ntrw_article1">
                    <form action="어디로갈지적기" method="post" enctype="multipart/form-data">
                        <table id="j_ntrw_write">
                            <tr>
                                <th class="j_ntrw_table">컨셉</th>
                                <td class="j_ntrw_tablewr">
                                    <input type="radio" name="bp_concept" value="1" class="j_ntrw_concept" required="required">중식&nbsp;&nbsp;
                                    <input type="radio" name="bp_concept" value="2" class="j_ntrw_concept" required="required">일식&nbsp;&nbsp;
                                    <input type="radio" name="bp_concept" value="3" class="j_ntrw_concept" required="required">양식
                                </td>
                            </tr>
                            <tr>
                                <th class="j_ntrw_table">제목</th>
                                <td class="j_ntrw_tablewr">
                                    <input type="text" id="j_ntrw_title" name="title" placeholder="제목을 입력하시오." required="required">
                                </td>
                            </tr>

                            <tr>
                                <th class="j_ntrw_table" id="j_ntrw_table_name">내용</th>
                                <td class="j_ntrw_tablewr">
                                    <textarea rows="20" cols="75" name="content" placeholder="내용을 입력하시오." required="required"></textarea>
                                </td>
                            </tr>

                            <tr>
                                <th class="j_ntrw_table">파일등록</th>
                                <td id="j_ntrw_files" class="j_ntrw_tablewr">
                                    <input type="file" name="uploadFile_1" id="j_ntrw_file_btn" required="required">
                                </td>
                            </tr>
                            <tr>
                                <th class="j_ntrw_table">파일추가</th>
                                <td class="j_ntrw_tablewr">
                                    <button type="button"id="j_ntrw_addfile">파일 추가
                                </td>
                            </tr>
                            <tr>
                                <th colspan="2"><button type="submit" id="j_ntrw_write_btn">저장</button></th>
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
                html+= '<input type="file" name="uploadfile_'+fileCnt+'"><br>';
                $("#j_ntrw_files").append(html);
        });
    </script>
</body>
</html>