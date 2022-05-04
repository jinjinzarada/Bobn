package kh.semi.bobn.community.model.service;

//Service에서 하는 일 : DB연결 - Dao메소드 호출(SQL문 실행) - DB해제
import java.sql.Connection;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import kh.semi.bobn.community.model.dao.NtPlatingDao;
import kh.semi.bobn.community.model.vo.NtPlatingContentVo;
import kh.semi.bobn.community.model.vo.NtPlatingImgVo;
import kh.semi.bobn.community.model.vo.NtPlatingListVo;
import kh.semi.bobn.community.model.vo.NtPlatingRecommentVo;

public class NtPlatingService {

	// 게시글등록
	public int insertPlatingContent(NtPlatingContentVo ntpcVo) {
		System.out.println("PlatingService vo :" + ntpcVo);

		// db 연결
		Connection conn = getConnection();

		// conn, vo들고 dao로 감
		int result = new NtPlatingDao().insertPlatingContent(conn, ntpcVo);
		System.out.println("PlatingService result :" + result);

		// db 해제
		close(conn);
		return result;

	}

	// 이미지등록
	public int insertPlatingImg(NtPlatingImgVo ntpiVo) {
		System.out.println("PlatingService vo :" + ntpiVo);

		Connection conn = getConnection();
		int result = new NtPlatingDao().insertPlatingImg(conn, ntpiVo);
		System.out.println("PlatingService result :" + result);

		close(conn);
		return result;

	}
	
	// 게시글 총 갯수 조회
	public int countPlatingList(String pbConcept) {
		System.out.println("PlatingService vo :" + pbConcept);
		
		Connection conn = getConnection();
		int result = new NtPlatingDao().countPlatingList(conn, pbConcept);
		System.out.println("PlatingService result :" + result);
		
		close(conn);
		return result;
	}

	// 게시글 조회
	public ArrayList<NtPlatingListVo> listPlatingContent(String pbConcept, int startRnum, int endRnum) {
		System.out.println("PlatingService vo :" + pbConcept);
		
		Connection conn = getConnection();
		ArrayList<NtPlatingListVo> ntpcVolist = new NtPlatingDao().listPlatingContent(conn, pbConcept, startRnum, endRnum);
		System.out.println("PlatingService ntpcVolist :" + ntpcVolist);

		close(conn);
		return ntpcVolist;

	}
	
	// 게시글 상세조회
	public NtPlatingContentVo detailPlatingContent(int pbNo) {
		System.out.println("PlatingService vo :" + pbNo);

		Connection conn = getConnection();
		NtPlatingContentVo ntpcVo = new NtPlatingDao().detailPlatingContent(conn, pbNo);
		System.out.println("PlatingService ntpcVo :" + ntpcVo);

		close(conn);
		return ntpcVo;

	}

	// 게시글 상세조회(이미지)
	public ArrayList<NtPlatingImgVo> detailPlatingImg(int pbNo) {
		System.out.println("PlatingService vo :" + pbNo);

		Connection conn = getConnection();
		ArrayList<NtPlatingImgVo> ntpiVolist = new NtPlatingDao().detailPlatingImg(conn, pbNo);
		System.out.println("PlatingService ntpcVo :" + ntpiVolist);

		close(conn);
		return ntpiVolist;

	}

	// 댓글작성
	public int insertPlatingRecomment(NtPlatingRecommentVo ntprVo) {
		System.out.println("PlatingService ntprVo :" + ntprVo);

		Connection conn = getConnection();
		int result = new NtPlatingDao().insertPlatingRecomment(conn, ntprVo);
		System.out.println("PlatingService result :" + result);

		close(conn);
		return result;

	}
	
	// 댓글조회
		public ArrayList<NtPlatingRecommentVo> detailPlatingRecomment(int pbNo) {
			System.out.println("PlatingService vo :" + pbNo);

			Connection conn = getConnection();
			ArrayList<NtPlatingRecommentVo> ntprVolist = new NtPlatingDao().detailPlatingRecomment(conn, pbNo);
			System.out.println("PlatingService ntprVo :" + ntprVolist);

			close(conn);
			return ntprVolist;

		}
		
		// 댓글 총 갯수 조회
				public NtPlatingRecommentVo countPlatingRecomment(int pbNo) {
					System.out.println("PlatingService vo :" + pbNo);

					Connection conn = getConnection();
					NtPlatingRecommentVo ntprVo = new NtPlatingDao().countPlatingRecomment(conn, pbNo);
					System.out.println("PlatingService ntprVo :" + ntprVo);

					close(conn);
					return ntprVo;

				}

}
