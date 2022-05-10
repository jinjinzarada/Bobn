package kh.semi.bobn.community.model.dao;

//Dao 에서 하는 일 : SQL문 실행
import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.*;
import java.util.ArrayList;

import kh.semi.bobn.community.model.vo.NtContestContentVo;
import kh.semi.bobn.community.model.vo.NtContestImgVo;
import kh.semi.bobn.community.model.vo.NtContestListVo;
import kh.semi.bobn.community.model.vo.NtContestRecommentVo;

public class NtContestDao {

	private PreparedStatement pstmt = null; // 질의
	private ResultSet rs = null; // 결과물을 가져옴

	// 게시글등록
	public int insertContestContent(Connection conn, NtContestContentVo ntccVo) {
		int result = 0;
		String memberId = ntccVo.getMemberId();

		String sql = "insert into ntcc(cb_no, cb_title, cb_content, member_id)"
				+ "values ((select nvl(max(cb_no),0)+1 from ntcc),?,?,?)";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntccVo.getCbTitle());
			pstmt.setString(2, ntccVo.getCbContent());
			pstmt.setString(3, memberId);

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
	public int insertContestImg(Connection conn, NtContestImgVo ntciVo) {
		int result = 0;
		System.out.println("PreparedStatement vo :" + ntciVo);

		String sql = "insert into ntci(ci_no, ci_file, cb_no)"
				+ "values ((select nvl(max(ci_no),0)+1 from ntci),?,(select cb_no from(select * from ntcc order by cb_date desc)where rownum=1))";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntciVo.getCiFile());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;

	}

	// 게시글 총 갯수 조회
	public int countContestList(Connection conn) {
		int result = 0;
		String sql = "select count(*) from ntcc";
		
		try {
			pstmt = conn.prepareStatement(sql);
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

	// 게시글 조회
	public ArrayList<NtContestListVo> listContestContent(Connection conn, int startRnum, int endRnum) {
		ArrayList<NtContestListVo> ntccVolist = null;
		String sql = "select *"
					+ "from (select rownum r, ntcc.* from(select * from ntcc join(select ntci.*from (select row_number() over(partition by ntci.cb_no order by cb_no)as rnum,"
					+ "ntci.* from ntci) ntci where rnum = 1)" + "using(cb_no))ntcc) " + "where r between ? and ?";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, startRnum);
				pstmt.setInt(2, endRnum);

			rs = pstmt.executeQuery();
			ntccVolist = new ArrayList<NtContestListVo>();
			// rs.next로 읽어서 받아온 결과 반복문돌리기
			while (rs.next()) {
				// ArrayList<NtContestContentVo>에서 <>안에 참조자료형이기 때문에 아래 new코드 필요
				NtContestListVo ntccVo = new NtContestListVo();
				// db컬럼명 그대로 읽어서 ntccVo에 넣어주기
				ntccVo.setCbNo(rs.getInt("cb_no"));
				ntccVo.setCbTitle(rs.getString("cb_title"));
				ntccVo.setCbContent(rs.getString("cb_content"));
				ntccVo.setCiFile(rs.getString("ci_file"));
				ntccVo.setMemberId(rs.getString("member_id"));

				// ntccVolist에 ntccVo담기
				ntccVolist.add(ntccVo);
				System.out.println("ntccVolist :" + ntccVolist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		// 담아놨던 결과 ntccVolist를 리턴
		return ntccVolist;

	}

	// 게시글 상세조회
	public NtContestContentVo detailContestContent(Connection conn, int cbNo) {
		NtContestContentVo ntccVo = null;

		String sql = "select * from ntcc where cb_no=?";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cbNo);
			rs = pstmt.executeQuery();

			ntccVo = new NtContestContentVo();
			if (rs.next()) {
				ntccVo.setCbNo(rs.getInt("cb_no"));
				ntccVo.setCbTitle(rs.getString("cb_title"));
				ntccVo.setCbContent(rs.getString("cb_content"));
				ntccVo.setMemberId(rs.getString("member_id"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return ntccVo;

	}

	// 게시글 상세조회(이미지배열)
	public ArrayList<NtContestImgVo> detailContestImg(Connection conn, int cbNo) {
		ArrayList<NtContestImgVo> ntciVolist = null;

		String sql = "select * from ntci where cb_no=?";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cbNo);
			rs = pstmt.executeQuery();

			ntciVolist = new ArrayList<NtContestImgVo>();
			while (rs.next()) {
				NtContestImgVo ntciVo = new NtContestImgVo();
				ntciVo.setCbNo(rs.getInt("cb_no"));
				ntciVo.setCiFile(rs.getString("ci_file"));

				ntciVolist.add(ntciVo);
				System.out.println("ntciVolist :" + ntciVolist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return ntciVolist;

	}

	// 댓글등록
	public int insertContestRecomment(Connection conn, NtContestRecommentVo ntcrVo) {
		int result = 0;
		String memberId = ntcrVo.getMemberId();
		System.out.println("PreparedStatement vo :" + ntcrVo);

		String sql = "insert into ntcr(cr_no, cr_content, cb_no, member_id)"
				+ "values ((select nvl(max(cr_no),0)+1 from ntcr),?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntcrVo.getCrContent());
			pstmt.setInt(2, ntcrVo.getCbNo());
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
	public ArrayList<NtContestRecommentVo> detailContestRecomment(Connection conn, int cbNo) {
		ArrayList<NtContestRecommentVo> ntcrVolist = null;

		String sql = "select * from ntcr where cb_no=? order by cr_date desc";

		// vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cbNo);
			rs = pstmt.executeQuery();

			ntcrVolist = new ArrayList<NtContestRecommentVo>();
			while (rs.next()) {
				NtContestRecommentVo ntcrVo = new NtContestRecommentVo();
				ntcrVo.setMemberId(rs.getString("member_id"));
				ntcrVo.setCrDate(rs.getTimestamp("cr_date"));
				ntcrVo.setCrContent(rs.getString("cr_content"));

				ntcrVolist.add(ntcrVo);
				System.out.println("ntciVolist :" + ntcrVolist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		// 담아놨던 결과 result를 리턴
		return ntcrVolist;

	}

	// 댓글 총 갯수 조회
	public NtContestRecommentVo countContestRecomment(Connection conn, int cbNo) {
		NtContestRecommentVo ntcrVo = null;
		String sql = "select ntcr.cb_no, (select count(*) from ntcr where cb_no=?) as crRecommentCnt from ntcr";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cbNo);
			rs = pstmt.executeQuery();

			ntcrVo = new NtContestRecommentVo();
			if (rs.next()) {
				ntcrVo.setCrRecommentCnt(rs.getInt("crRecommentCnt"));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return ntcrVo;
	}

	// 게시글 삭제
	public int deleteContestContent(Connection conn, int cbNo) {
		int result = 0;

		String sql = "delete from ntcc where cb_no = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, cbNo);
			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;

	}

}
