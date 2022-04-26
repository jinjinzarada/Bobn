<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntreset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/nt_recipe_detail.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>레시피_상세조회</title>
</head>
<body>
 <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntrd_article0">
                    <p>레시피_상세조회</p>
                </article>
                <article id="j_ntrd_article1">
                    <ul>
                        <li id="j_ntrd_like_btn">
                            <img src="https://via.placeholder.com/15" alt=""> ntrlCnt
                        </li>
                        <li id="j_ntrd_concept">
                            <button type="button" id="j_ntrd_concept_btn">concept</button>&nbsp; &nbsp;
                        </li>
                        <li id="j_ntrd_member_id">
                            member_id
                        </li>
                    </ul>
                </article>
                <article id="j_ntrd_article2">
                    <table>
                        <tr>
                            <td class="j_ntrd_article2_img">
                                <img src="https://via.placeholder.com/600" alt="">
                            </td>
                        </tr>
                        <tr>
                            <td class="j_ntrd_article2_img">글내용</td>
                        </tr>
                        <tr>
                            <td class="j_ntrd_article2_img">
                                <ul>
                                    <li id="j_ntrd_ntprCnt">
                                        <img src="https://via.placeholder.com/15" alt=""> ntrrCnt
                                    </li>
                                    <li id="j_ntrd_share">
                                        공유하기
                                    </li>
                                </ul>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="j_ntrd_article2_img">
                                <form action="어디로갈찌써야함" method="post">
                                    <input type="hidden" name="이름지어줘야함" value="값줘야함">
                                    <input type="text" name="이름지어줘야함" id="j_ntrd_recomment">
                                    <button type="submit" id="j_ntrd_submit_btn">댓글등록</button>
                                </form>
                            </td>
                        </tr>
                    </table>
                </article>
                <article id="j_ntrd_article3">
                    <table>
                        <tr>
                            <td>
                                댓글 보여줄 공간
                            </td>
                        </tr>
                    </table>
                </article>
            </section>
        </div>
    </div>
</body>
</html>