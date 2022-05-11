package kh.semi.bobn.curation.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;
import java.sql.*;
import java.util.ArrayList;

import kh.semi.bobn.curation.model.vo.RecipeDetailVo;
import kh.semi.bobn.curation.model.vo.RecipeImageVo;
import kh.semi.bobn.curation.model.vo.RecipeRecommentVo;
import kh.semi.bobn.curation.model.vo.RecipeVo;

public class RecipeDao {

	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	

		public int insertContent(Connection conn, RecipeDetailVo recipedetailVo) {
			int result = 0;
			System.out.println("PreparedStatement vo :" + recipedetailVo);

			String sql = "insert into cr_recipe_content(CRRECONTENT_NO, CRRECONTENT_CONCEPT, CRRECONTENT_TITLE, CRRECONTENT_CONTENT)"
					+ "values ((select nvl(max(CRRECONTENT_NO),0)+1 from cr_recipe_content),?,?,?)";

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, recipedetailVo.getrConcept());
				pstmt.setString(2, recipedetailVo.getrTitle());
				pstmt.setString(3, recipedetailVo.getrContent());
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}

		
		
		public int insertImg(Connection conn, RecipeImageVo recipeimgVo) {
			int result = 0;
			System.out.println("PreparedStatement vo :" + recipeimgVo);

			String sql = "insert into cr_recipe_content_image(CRRECIPECOTENTIMAGE_NO, CRRECONTENTIMAGE_LOCATION, CRRECONTENT_NO)"
					+ "values ((select nvl(max(CRRECIPECOTENTIMAGE_NO),0)+1 from cr_recipe_content_image),?,(select CRRECONTENT_NO from(select * from cr_recipe_content order by CRRECONTENT_POSTDATE desc)where rownum=1))";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, recipeimgVo.getImgLoc());
				result = pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}

		
		
		// 게시글 조회(특정concept지정)
		public ArrayList<RecipeVo> listContent(Connection conn, String rConcept, int startRnum,
				int endRnum) {
			ArrayList<RecipeVo> detailVolist = null;
			String sql = "";
			// 컨셉 번호에 따라서 조회
			if (rConcept.equals("4")) {
				sql = "select *"
						+ "from (select rownum r, cr_recipe_content.* from(select * from cr_recipe_content join(select cr_recipe_content_image.*from (select row_number() over(partition by cr_recipe_content_image.CRRECONTENT_NO order by CRRECONTENT_NO)as rnum,"
						+ "cr_recipe_content_image.* from cr_recipe_content_image) cr_recipe_content_image where rnum = 1)" + "using(CRRECONTENT_NO))cr_recipe_content) " + "where r between ? and ? order by CRRECONTENT_POSTDATE desc";
			
				//sql = "select* from cr_recipe_content left outer join (select * from cr_recipe_content_image) using(CRRECONTENT_NO)";
			} else {
				sql = "select *"
						+ "from (select rownum r, cr_recipe_content.* from(select * from cr_recipe_content join(select cr_recipe_content_image.*from (select row_number() over(partition by cr_recipe_content_image.CRRECONTENT_NO order by CRRECONTENT_NO)as rnum,"
						+ "cr_recipe_content_image.* from cr_recipe_content_image) cr_recipe_content_image where rnum = 1)" + "using(CRRECONTENT_NO))cr_recipe_content where  CRRECONTENT_CONCEPT = ? )"
						+ "where r between ? and ? order by CRRECONTENT_POSTDATE desc";
			}
			try {
				pstmt = conn.prepareStatement(sql);
				if (rConcept.equals("4")) {
					pstmt.setInt(1, endRnum);
					pstmt.setInt(2, startRnum);
				} else {
					pstmt.setString(1, rConcept);
					pstmt.setInt(2, endRnum);
					pstmt.setInt(3, startRnum);
				}
				rs = pstmt.executeQuery();
				detailVolist = new ArrayList<RecipeVo>();
				// rs.next로 읽어서 받아온 결과 반복문돌리기
				while (rs.next()) {
					// ArrayList<NtPlatingContentVo>에서 <>안에 참조자료형이기 때문에 아래 new코드 필요
					RecipeVo detailVo = new RecipeVo();
					// db컬럼명 그대로 읽어서 ntpcVo에 넣어주기
					detailVo.setrNo(rs.getInt("CRRECONTENT_NO"));
					detailVo.setrTitle(rs.getString("CRRECONTENT_TITLE"));
					detailVo.setrContent(rs.getString("CRRECONTENT_CONTENT"));
					detailVo.setrConcept(rs.getString("CRRECONTENT_CONCEPT"));
					detailVo.setrImgloc(rs.getString("CRRECONTENTIMAGE_LOCATION"));

					detailVolist.add(detailVo);
					System.out.println("detailVolist :" + detailVolist);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}
			return detailVolist;
		}

		// 게시글 상세조회
		public RecipeDetailVo detailContent(Connection conn, int rNo) {
			RecipeDetailVo detailVo = null;
			String sql = "select * from cr_recipe_content where CRRECONTENT_NO=?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rNo);
				rs = pstmt.executeQuery();
				detailVo = new RecipeDetailVo();
				if (rs.next()) {
					detailVo.setrNo(rs.getInt("CRRECONTENT_NO"));
					detailVo.setrTitle(rs.getString("CRRECONTENT_TITLE"));
					detailVo.setrContent(rs.getString("CRRECONTENT_CONTENT"));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}
			return detailVo;
		}

		// 게시글 상세조회(이미지배열)
		public ArrayList<RecipeImageVo> detailImg(Connection conn, int rNo) {
			ArrayList<RecipeImageVo> imgVolist = null;

			String sql = "select * from cr_recipe_content_image where CRRECONTENT_NO=?";

			// vo에 가져온걸 sql문에 넣어줌
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rNo);
				rs = pstmt.executeQuery();

				imgVolist = new ArrayList<RecipeImageVo>();
				while (rs.next()) {
					RecipeImageVo imgVo = new RecipeImageVo();
					imgVo.setrNo(rs.getInt("CRRECONTENT_NO"));
					imgVo.setImgLoc(rs.getString("CRRECONTENTIMAGE_LOCATION"));

					imgVolist.add(imgVo);
					System.out.println("imgVolist :" + imgVolist);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}

			// 담아놨던 결과 result를 리턴
			return imgVolist;

		}

		// 댓글등록
		public int insertRecomment(Connection conn, RecipeRecommentVo recVo) {
			int result = 0;
			String memberId = recVo.getMemberId();
			System.out.println("DAO insert Rec vo :" + recVo);

			String sql = "insert into cr_recipe_recomment(CRRERECOMMENT_NO, CRRERECOMMENT_CONTENT, CRRECONTENT_NO, MEMBER_ID)"
					+ "values ((select nvl(max(CRRERECOMMENT_NO),0)+1 from cr_recipe_recomment),?,?,?)";

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, recVo.getRecContent());
				pstmt.setInt(2, recVo.getrNo());
				pstmt.setString(3, memberId);

				result = pstmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();

			} finally {
				close(pstmt);
			}

			return result;
		}

		// 댓글조회
		public ArrayList<RecipeRecommentVo> showRecomment(Connection conn, int rNo) {
			ArrayList<RecipeRecommentVo> recVolist = null;

			String sql = "select * from cr_recipe_recomment where CRRECONTENT_NO=? order by CRRERECOMMENT_POSTDATE desc";

			// vo에 가져온걸 sql문에 넣어줌
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rNo);
				rs = pstmt.executeQuery();

				recVolist = new ArrayList<RecipeRecommentVo>();
				while (rs.next()) {
					RecipeRecommentVo recVo = new RecipeRecommentVo();
					recVo.setMemberId(rs.getString("member_id"));
					recVo.setRecDate(rs.getTimestamp("CRRERECOMMENT_POSTDATE"));
					recVo.setRecContent(rs.getString("CRRERECOMMENT_CONTENT"));

					recVolist.add(recVo);
					System.out.println("recVolist :" + recVolist);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}

			// 담아놨던 결과 result를 리턴
			return recVolist;

		}
		
		// 댓글 총 갯수 조회
		public RecipeRecommentVo countRecomment(Connection conn, int rNo) {
			RecipeRecommentVo recVo = null;
			String sql = "select cr_recipe_recomment.CRRECONTENT_NO, (select count(*) from cr_recipe_recomment where CRRECONTENT_NO=?) as recCnt from cr_recipe_recomment";

			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rNo);
				rs = pstmt.executeQuery();

				recVo = new RecipeRecommentVo();
				if (rs.next()) {
					recVo.setRecCnt(rs.getInt("recCnt"));
					System.out.println("##########recVo :" + recVo);
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}

			return recVo;
		}

		
		// 게시글 삭제
		public int deleteContent(Connection conn, int rNo) {
			int result = 0;
			String sql = "delete from cr_recipe_content where CRRECONTENT_NO = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rNo);
				result = pstmt.executeUpdate();

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}
		// 게시글 이미지 삭제
		public int deleteContentImg(Connection conn, int rNo) {
			int result = 0;
			String sql = "delete from cr_recipe_content_image where CRRECONTENT_NO = ?";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, rNo);
				result = pstmt.executeUpdate();
	
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(pstmt);
			}
			return result;
		}
		
		// 게시글 총 갯수 조회
		public int countList(Connection conn, String rConcept) {
			int result = 0;
			String sql = "";

			if (rConcept.equals("4")) {
				sql = "select count(*) from cr_recipe_content";
			} else {
				sql = "select count(*) from cr_recipe_content where CRRECONTENT_CONCEPT=?";
			}
			try {
				pstmt = conn.prepareStatement(sql);

				if (!rConcept.equals("4")) {
					pstmt.setString(1, rConcept);
				}
				rs = pstmt.executeQuery();
				if (rs.next()) {
					result = rs.getInt(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close(rs);
				close(pstmt);
			}

			return result;
		}
}
