package kh.semi.bobn.community.model.service;

//Service에서 하는 일 : DB연결 - Dao메소드 호출(SQL문 실행) - DB해제
import java.sql.Connection;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import kh.semi.bobn.community.model.dao.NtContestDao;
import kh.semi.bobn.community.model.vo.NtContestContentVo;
import kh.semi.bobn.community.model.vo.NtContestImgVo;
import kh.semi.bobn.community.model.vo.NtContestListVo;
import kh.semi.bobn.community.model.vo.NtContestRecommentVo;

public class NtContestService {

	// 게시글등록
	public int insertContestContent(NtContestContentVo ntccVo) {
		System.out.println("ContestService vo :" + ntccVo);

		// db 연결
		Connection conn = getConnection();

		// conn, vo들고 dao로 감
		int result = new NtContestDao().insertContestContent(conn, ntccVo);
		System.out.println("ContestService result :" + result);

		// db 해제
		close(conn);
		return result;

	}

	// 이미지등록
	public int insertContestImg(NtContestImgVo ntciVo) {
		System.out.println("ContestService vo :" + ntciVo);

		Connection conn = getConnection();
		int result = new NtContestDao().insertContestImg(conn, ntciVo);
		System.out.println("ContestService result :" + result);

		close(conn);
		return result;

	}

	// 게시글 총 갯수 조회
	public int countContestList() {

		Connection conn = getConnection();
		int result = new NtContestDao().countContestList(conn);
		System.out.println("ContestService result :" + result);

		close(conn);
		return result;
	}

	// 게시글 조회
	public ArrayList<NtContestListVo> listContestContent(int startRnum, int endRnum) {

		Connection conn = getConnection();
		ArrayList<NtContestListVo> ntccVolist = new NtContestDao().listContestContent(conn, startRnum, endRnum);
		System.out.println("ContestService ntccVolist :" + ntccVolist);

		close(conn);
		return ntccVolist;

	}

	// 게시글 상세조회
	public NtContestContentVo detailContestContent(int cbNo) {
		System.out.println("ContestService vo :" + cbNo);

		Connection conn = getConnection();
		NtContestContentVo ntccVo = new NtContestDao().detailContestContent(conn, cbNo);
		System.out.println("ContestService ntccVo :" + ntccVo);

		close(conn);
		return ntccVo;

	}

	// 게시글 상세조회(이미지)
	public ArrayList<NtContestImgVo> detailContestImg(int cbNo) {
		System.out.println("ContestService vo :" + cbNo);

		Connection conn = getConnection();
		ArrayList<NtContestImgVo> ntciVolist = new NtContestDao().detailContestImg(conn, cbNo);
		System.out.println("ContestService ntccVo :" + ntciVolist);

		close(conn);
		return ntciVolist;

	}

	// 댓글작성
	public int insertContestRecomment(NtContestRecommentVo ntcrVo) {
		System.out.println("ContestService ntcrVo :" + ntcrVo);

		Connection conn = getConnection();
		int result = new NtContestDao().insertContestRecomment(conn, ntcrVo);
		System.out.println("ContestService result :" + result);

		close(conn);
		return result;

	}

	// 댓글조회
	public ArrayList<NtContestRecommentVo> detailContestRecomment(int cbNo) {
		System.out.println("ContestService vo :" + cbNo);

		Connection conn = getConnection();
		ArrayList<NtContestRecommentVo> ntcrVolist = new NtContestDao().detailContestRecomment(conn, cbNo);
		System.out.println("ContestService ntcrVo :" + ntcrVolist);

		close(conn);
		return ntcrVolist;

	}

	// 댓글 총 갯수 조회
	public NtContestRecommentVo countContestRecomment(int cbNo) {
		System.out.println("ContestService vo :" + cbNo);

		Connection conn = getConnection();
		NtContestRecommentVo ntcrVo = new NtContestDao().countContestRecomment(conn, cbNo);
		System.out.println("ContestService ntcrVo :" + ntcrVo);

		close(conn);
		return ntcrVo;

	}

	// 게시글 삭제
	public int deleteContestContent(int cbNo) {
		System.out.println("ContestService vo :" + cbNo);

		Connection conn = getConnection();
		int result = new NtContestDao().deleteContestContent(conn, cbNo);
		System.out.println("ContestService result :" + result);

		close(conn);
		return result;

	}
}
