<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_recipe_list.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피_조회</title>
</head>
<body>
<div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntrl_article0">
                    <p>레시피</p>
                </article>
                <article id="j_ntrl_article1">
                    <div class="j_ntrl_concept_btn_wrap">
                        <button type="button" class="j_ntrl_concept_btn" id="j_ntrl_ch" onclick="javascript:rkind('ch')">중식</button>
                        <button type="button" class="j_ntrl_concept_btn" id="j_ntrl_ja" onclick="javascript:rkind('ja')">일식</button>
                        <button type="button" class="j_ntrl_concept_btn" id="j_ntrl_ya" onclick="javascript:rkind('ya')">양식</button>
                    </div>
                </article>
                 <article id="j_ntrl_article2">
                    <button type="button" id="j_ntrl_write_btn" onclick="location.href='<%=request.getContextPath()%>/ntpcwrite'">글쓰기</button>
                </article>
                <article id="j_ntrl_article3">
                    <div>
                        <div class="j_ntrl_article3_img_id">member_id</div>
                        <div class="j_ntrl_article3_img">
                                <img src="https://via.placeholder.com/300" alt="" onclick="location.href='어디로이동할지적어야함';" id="j_ntrl_img_item">
                        </div>
                        <div class="j_ntrl_article3_text">ntrlCnt / ntrrCnt</div>
                        <div class="j_ntrl_article3_text">ntrr_rb_title</div>
                    </div>
                </article>
                <article id="j_ntrl_article4">
                    <div class="j_ntrl_pagination">
                        <a href="#">&laquo;</a>
                        <a href="#" class="j_ntrl_active">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#">4</a>
                        <a href="#">&raquo;</a>
                    </div>
                </article>
            </section>
        </div>
    </div>
    <script>
    function rkind(data){
			switch(data){
			case "ch":
				$("#j_ntrl_ch").css({"backgroundColor":"#F54748","color":"white"});
				$("#j_ntrl_ja").css({'backgroundColor':'white',"color":"black"});
				$("#j_ntrl_ya").css({'backgroundColor':'white',"color":"black"});
				break;
				
			case "ja":
				$("#j_ntrl_ja").css({"backgroundColor":"#F54748","color":"white"});
				$("#j_ntrl_ch").css({'backgroundColor':'white',"color":"black"});
				$("#j_ntrl_ya").css({'backgroundColor':'white',"color":"black"});
				break;
				
			case "ya":
				$("#j_ntrl_ya").css({"backgroundColor":"#F54748","color":"white"});
				$("#j_ntrl_ch").css({'backgroundColor':'white',"color":"black"});
				$("#j_ntrl_ja").css({'backgroundColor':'white',"color":"black"});
				break;
			}
		}
    </script>
</body>
</html>