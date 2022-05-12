package kh.semi.bobn.community.model.dao;

//Dao 에서 하는 일 : SQL문 실행
import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.*;
import java.util.ArrayList;

import kh.semi.bobn.community.model.vo.NtRecipeContentVo;
import kh.semi.bobn.community.model.vo.NtRecipeImgVo;
import kh.semi.bobn.community.model.vo.NtRecipeListVo;
import kh.semi.bobn.community.model.vo.NtRecipeRecommentVo;

public class NtRecipeDao {

	private PreparedStatement pstmt = null; // 질의
	private ResultSet rs = null; // 결과물을 가져옴

	// 게시글등록
	public int insertRecipeContent(Connection conn, NtRecipeContentVo ntrcVo) {
		int result = 0;
		String memberId = ntrcVo.getMemberId();

		String sql = "insert into ntrc(rb_no, rb_concept, rb_title, rb_content, member_id)"
				+ "values ((select nvl(max(rb_no),0)+1 from ntrc),?,?,?,?)";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntrcVo.getRbConcept());
			pstmt.setString(2, ntrcVo.getRbTitle());
			pstmt.setString(3, ntrcVo.getRbContent());
			pstmt.setString(4, memberId);

			// 실행시켜주고 결과를 result에 담아줌
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();

			// 다 사용하고 close
		} finally {
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return result;

	}

	// 이미지등록
	public int insertRecipeImg(Connection conn, NtRecipeImgVo ntriVo) {
		int result = 0;
		System.out.println("PreparedStatement vo :" + ntriVo);

		String sql = "insert into ntri(ri_no, ri_file, rb_no)"
				+ "values ((select nvl(max(ri_no),0)+1 from ntri),?,(select rb_no from(select * from ntrc order by rb_date desc)where rownum=1))";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntriVo.getRiFile());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	// 게시글 총 갯수 조회
	public int countRecipeList(Connection conn, String rbConcept) {
		int result = 0;
		String sql = "";

		if (rbConcept.equals("4")) {
			sql = "select count(*) from ntrc";
		} else {
			sql = "select count(*) from ntrc where rb_concept=?";
		}
		try {
			pstmt = conn.prepareStatement(sql);

			if (!rbConcept.equals("4")) {
				pstmt.setString(1, rbConcept);
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

	// 게시글 조회(특정concept지정)
	public ArrayList<NtRecipeListVo> listRecipeContent(Connection conn, String rbConcept, int startRnum,
			int endRnum) {
		ArrayList<NtRecipeListVo> ntrcVolist = null;
		String sql = "";
		// 컨셉 번호에 따라서 조회
		if (rbConcept.equals("4")) {
			sql = "select *"
					+ "from (select rownum r, ntrc.* from(select * from ntrc join(select ntri.*from (select row_number() over(partition by ntri.rb_no order by rb_no)as rnum,"
					+ "ntri.* from ntri) ntri where rnum = 1)" + "using(rb_no))ntrc) " + "where r between ? and ? order by rb_date desc";
		} else {
			sql = "select *"
					+ "from (select rownum r, ntrc.* from(select * from ntrc join(select ntri.*from (select row_number() over(partition by ntri.rb_no order by rb_no)as rnum,"
					+ "ntri.* from ntri) ntri where rnum = 1)" + "using(rb_no))ntrc where  rb_concept = ? )"
					+ "where r between ? and ? order by rb_date desc";
		}
		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			if (rbConcept.equals("4")) {
				//최신순이 위로 위야하기 때문에 end가 먼저오고 start가 뒤에
				pstmt.setInt(1, endRnum);
				pstmt.setInt(2, startRnum);
			} else {
				pstmt.setString(1, rbConcept);
				pstmt.setInt(2, endRnum);
				pstmt.setInt(3, startRnum);
			}
			rs = pstmt.executeQuery();
			ntrcVolist = new ArrayList<NtRecipeListVo>();
			// rs.next로 읽어서 받아온 결과 반복문돌리기
			while (rs.next()) {
				// ArrayList<NtRecipeContentVo>에서 <>안에 참조자료형이기 때문에 아래 new코드 필요
				NtRecipeListVo ntrcVo = new NtRecipeListVo();
				// db컬럼명 그대로 읽어서 ntrcVo에 넣어주기
				ntrcVo.setRbNo(rs.getInt("rb_no"));
				ntrcVo.setRbTitle(rs.getString("rb_title"));
				ntrcVo.setRbContent(rs.getString("rb_content"));
				ntrcVo.setRbConcept(rs.getString("rb_concept"));
				ntrcVo.setRiFile(rs.getString("ri_file"));
				ntrcVo.setMemberId(rs.getString("member_id"));

				// ntrcVolist에 ntrcVo담기
				ntrcVolist.add(ntrcVo);
				System.out.println("ntrcVolist :" + ntrcVolist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		// 담아놨던 결과 ntrcVolist를 리턴
		return ntrcVolist;

	}

	// 게시글 상세조회
	public NtRecipeContentVo detailRecipeContent(Connection conn, int rbNo) {
		NtRecipeContentVo ntrcVo = null;

		String sql = "select * from ntrc where rb_no=?";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rbNo);
			rs = pstmt.executeQuery();

			ntrcVo = new NtRecipeContentVo();
			if (rs.next()) {
				ntrcVo.setRbNo(rs.getInt("rb_no"));
				ntrcVo.setRbTitle(rs.getString("rb_title"));
				ntrcVo.setRbContent(rs.getString("rb_content"));
				ntrcVo.setMemberId(rs.getString("member_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return ntrcVo;

	}

	// 게시글 상세조회(이미지배열)
	public ArrayList<NtRecipeImgVo> detailRecipeImg(Connection conn, int rbNo) {
		ArrayList<NtRecipeImgVo> ntriVolist = null;

		String sql = "select * from ntri where rb_no=?";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rbNo);
			rs = pstmt.executeQuery();

			ntriVolist = new ArrayList<NtRecipeImgVo>();
			while (rs.next()) {
				NtRecipeImgVo ntriVo = new NtRecipeImgVo();
				ntriVo.setRbNo(rs.getInt("rb_no"));
				ntriVo.setRiFile(rs.getString("ri_file"));

				ntriVolist.add(ntriVo);
				System.out.println("ntriVolist :" + ntriVolist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return ntriVolist;

	}

	// 댓글등록
	public int insertRecipeRecomment(Connection conn, NtRecipeRecommentVo ntrrVo) {
		int result = 0;
		String memberId = ntrrVo.getMemberId();
		System.out.println("PreparedStatement vo :" + ntrrVo);

		String sql = "insert into ntrr(rr_no, rr_content, rb_no, member_id)"
				+ "values ((select nvl(max(rr_no),0)+1 from ntrr),?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntrrVo.getRrContent());
			pstmt.setInt(2, ntrrVo.getRbNo());
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
	public ArrayList<NtRecipeRecommentVo> detailRecipeRecomment(Connection conn, int rbNo) {
		ArrayList<NtRecipeRecommentVo> ntrrVolist = null;

		String sql = "select * from ntrr where rb_no=? order by rr_date desc";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rbNo);
			rs = pstmt.executeQuery();

			ntrrVolist = new ArrayList<NtRecipeRecommentVo>();
			while (rs.next()) {
				NtRecipeRecommentVo ntrrVo = new NtRecipeRecommentVo();
				ntrrVo.setMemberId(rs.getString("member_id"));
				ntrrVo.setRrDate(rs.getTimestamp("rr_date"));
				ntrrVo.setRrContent(rs.getString("rr_content"));

				ntrrVolist.add(ntrrVo);
				System.out.println("ntrrVolist :" + ntrrVolist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return ntrrVolist;

	}

	// 댓글 총 갯수 조회
	public NtRecipeRecommentVo countRecipeRecomment(Connection conn, int rbNo) {
		NtRecipeRecommentVo ntrrVo = null;
		String sql = "select ntrr.rb_no, (select count(*) from ntrr where rb_no=?) as rrRecommentCnt from ntrr";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rbNo);
			rs = pstmt.executeQuery();

			ntrrVo = new NtRecipeRecommentVo();
			if (rs.next()) {
				ntrrVo.setRrRecommentCnt(rs.getInt("rrRecommentCnt"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return ntrrVo;
	}

	// 게시글 삭제
	public int deleteRecipeContent(Connection conn, int rbNo) {
		int result = 0;

		String sql = "delete from ntrc where rb_no = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, rbNo);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;

	}

}
