<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/common/reset.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcommon.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/community/ntcontent_detail.css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>플레이팅_상세조회</title>
</head>
<body>
 <div class="j_wrap content">
        <div id="j_content">
            <section>
                <article id="j_ntpd_article0">
                    <p>플레이팅_상세조회</p>
                </article>
                <article id="j_ntpd_article1">
                    <ul>
                        <li id="j_ntpd_like_btn">
                            <img src="https://via.placeholder.com/15" alt=""> ntplCnt
                        </li>
                        <li id="j_ntpd_concept">
                            <button type="button" id="j_ntpd_concept_btn">concept</button>&nbsp; &nbsp;
                        </li>
                        <li id="j_ntpd_member_id">
                            member_id
                        </li>
                    </ul>
                </article>
                <article id="j_ntpd_article2">
                    <table>
                        <tr>
                            <td class="j_ntpd_article2_img">
                                <img src="https://via.placeholder.com/600" alt="">
                            </td>
                        </tr>
                        <tr>
                            <td class="j_ntpd_article2_img">글내용</td>
                        </tr>
                        <tr>
                            <td class="j_ntpd_article2_img">
                                <ul>
                                    <li id="j_ntpd_ntprCnt">
                                        <img src="https://via.placeholder.com/15" alt=""> ntprCnt
                                    </li>
                                    <li id="j_ntpd_share">
                                        공유하기
                                    </li>
                                </ul>
                            </td>
                            
                        </tr>
                        <tr>
                            <td class="j_ntpd_article2_img">
                                <form action="어디로갈찌써야함" method="post">
                                    <input type="hidden" name="이름지어줘야함" value="값줘야함">
                                    <input type="text" name="이름지어줘야함" id="j_ntpd_recomment">
                                    <button type="submit" id="j_ntpd_submit_btn">댓글등록</button>
                                </form>
                            </td>
                        </tr>
                    </table>
                </article>
                <article id="j_ntpd_article3">
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