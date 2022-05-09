package kh.semi.bobn.community.model.service;

//Service에서 하는 일 : DB연결 - Dao메소드 호출(SQL문 실행) - DB해제
import java.sql.Connection;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import kh.semi.bobn.community.model.dao.NtRecipeDao;
import kh.semi.bobn.community.model.vo.NtRecipeContentVo;
import kh.semi.bobn.community.model.vo.NtRecipeImgVo;
import kh.semi.bobn.community.model.vo.NtRecipeListVo;
import kh.semi.bobn.community.model.vo.NtRecipeRecommentVo;

public class NtRecipeService {

	// 게시글등록
	public int insertRecipeContent(NtRecipeContentVo ntrcVo) {
		System.out.println("RecipeService vo :" + ntrcVo);

		// db 연결
		Connection conn = getConnection();

		// conn, vo들고 dao로 감
		int result = new NtRecipeDao().insertRecipeContent(conn, ntrcVo);
		System.out.println("RecipeService result :" + result);

		// db 해제
		close(conn);
		return result;

	}

	// 이미지등록
	public int insertRecipeImg(NtRecipeImgVo ntriVo) {
		System.out.println("RecipeService vo :" + ntriVo);

		Connection conn = getConnection();
		int result = new NtRecipeDao().insertRecipeImg(conn, ntriVo);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;

	}

	// 게시글 총 갯수 조회
	public int countRecipeList(String rbConcept) {
		System.out.println("RecipeService vo :" + rbConcept);

		Connection conn = getConnection();
		int result = new NtRecipeDao().countRecipeList(conn, rbConcept);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;
	}

	// 게시글 조회
	public ArrayList<NtRecipeListVo> listRecipeContent(String rbConcept, int startRnum, int endRnum) {
		System.out.println("RecipeService vo :" + rbConcept);

		Connection conn = getConnection();
		ArrayList<NtRecipeListVo> ntrcVolist = new NtRecipeDao().listRecipeContent(conn, rbConcept, startRnum,
				endRnum);
		System.out.println("RecipeService ntrcVolist :" + ntrcVolist);

		close(conn);
		return ntrcVolist;

	}

	// 게시글 상세조회
	public NtRecipeContentVo detailRecipeContent(int rbNo) {
		System.out.println("RecipeService vo :" + rbNo);

		Connection conn = getConnection();
		NtRecipeContentVo ntrcVo = new NtRecipeDao().detailRecipeContent(conn, rbNo);
		System.out.println("RecipeService ntrcVo :" + ntrcVo);

		close(conn);
		return ntrcVo;

	}

	// 게시글 상세조회(이미지)
	public ArrayList<NtRecipeImgVo> detailRecipeImg(int rbNo) {
		System.out.println("RecipeService vo :" + rbNo);

		Connection conn = getConnection();
		ArrayList<NtRecipeImgVo> ntriVolist = new NtRecipeDao().detailRecipeImg(conn, rbNo);
		System.out.println("RecipeService ntrcVo :" + ntriVolist);

		close(conn);
		return ntriVolist;

	}

	// 댓글작성
	public int insertRecipeRecomment(NtRecipeRecommentVo ntrrVo) {
		System.out.println("RecipeService ntrrVo :" + ntrrVo);

		Connection conn = getConnection();
		int result = new NtRecipeDao().insertRecipeRecomment(conn, ntrrVo);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;

	}

	// 댓글조회
	public ArrayList<NtRecipeRecommentVo> detailRecipeRecomment(int rbNo) {
		System.out.println("RecipeService vo :" + rbNo);

		Connection conn = getConnection();
		ArrayList<NtRecipeRecommentVo> ntrrVolist = new NtRecipeDao().detailRecipeRecomment(conn, rbNo);
		System.out.println("RecipeService ntrrVo :" + ntrrVolist);

		close(conn);
		return ntrrVolist;

	}

	// 댓글 총 갯수 조회
	public NtRecipeRecommentVo countRecipeRecomment(int rbNo) {
		System.out.println("RecipeService vo :" + rbNo);

		Connection conn = getConnection();
		NtRecipeRecommentVo ntrrVo = new NtRecipeDao().countRecipeRecomment(conn, rbNo);
		System.out.println("RecipeService ntrrVo :" + ntrrVo);

		close(conn);
		return ntrrVo;

	}

	// 게시글 삭제
	public int deleteRecipeContent(int rbNo) {
		System.out.println("RecipeService vo :" + rbNo);

		Connection conn = getConnection();
		int result = new NtRecipeDao().deleteRecipeContent(conn, rbNo);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;

	}
}
