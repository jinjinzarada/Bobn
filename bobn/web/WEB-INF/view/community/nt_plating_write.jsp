<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_plating_write.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이팅_글쓰기</title>
</head>
<body>
 <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntpw_article0">
                    <p>플레이팅_글쓰기</p>
                </article>
                <article id="j_ntpw_article1">
                    <form action="<%=request.getContextPath()%>/ntpcwrite" method="post" enctype="multipart/form-data">
                        <table id="j_ntpw_write">
                            <tr>
                                <th class="j_ntpw_table">컨셉</th>
                                <td class="j_ntpw_tablewr">
                                    <input type="radio" name="pbConcept" value="1" class="j_ntpw_concept" required="required">생일&nbsp;&nbsp;
                                    <input type="radio" name="pbConcept" value="2" class="j_ntpw_concept" required="required">홈파티&nbsp;&nbsp;
                                    <input type="radio" name="pbConcept" value="3" class="j_ntpw_concept" required="required">안주
                                </td>
                            </tr>
                            <tr>
                                <th class="j_ntpw_table">제목</th>
                                <td class="j_ntpw_tablewr">
                                    <input type="text" id="j_ntpw_title" name="pbTitle" placeholder="제목을 입력하시오." required="required">
                                </td>
                            </tr>

                            <tr>
                                <th class="j_ntpw_table" id="j_ntpw_table_name">내용</th>
                                <td class="j_ntpw_tablewr">
                                    <textarea rows="20" cols="75" name="pbContent" placeholder="내용을 입력하시오." required="required"></textarea>
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
                                <th colspan="2"><button type="submit" id="j_ntpw_write_btn">저장</button></th>
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
</body>
</html>