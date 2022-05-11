package kh.semi.bobn.curation.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import kh.semi.bobn.curation.model.dao.RecipeDao;
import kh.semi.bobn.curation.model.vo.RecipeDetailVo;
import kh.semi.bobn.curation.model.vo.RecipeImageVo;
import kh.semi.bobn.curation.model.vo.RecipeRecommentVo;
import kh.semi.bobn.curation.model.vo.RecipeVo;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

public class RecipeService {
	
	
	
	public int insertContent(RecipeDetailVo recipedetailVo) {
		System.out.println("RecipeService vo :" + recipedetailVo);

		Connection conn = getConnection();

		int result = new RecipeDao().insertContent(conn, recipedetailVo);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;
	}

	
	
	public int insertImg(RecipeImageVo recipeimgVo) {
		System.out.println("RecipeService vo :" + recipeimgVo);

		Connection conn = getConnection();

		int result = new RecipeDao().insertImg(conn, recipeimgVo);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;
	}

	
	
	// 게시글 조회(특정concept지정)
	public ArrayList<RecipeVo> listContent(String rConcept, int startRnum,
			int endRnum) {
		System.out.println("RecipeService vo :" + rConcept);

		Connection conn = getConnection();
		ArrayList<RecipeVo> detailVolist = new RecipeDao().listContent(conn, rConcept, startRnum,
				endRnum);
		System.out.println("RecipeService detailVolist :" + detailVolist);
		
		close(conn);
		return detailVolist;
	}

	// 게시글 상세조회
	public RecipeDetailVo detailContent(int rNo) {
		System.out.println("RecipeService vo :" + rNo);

		Connection conn = getConnection();
		RecipeDetailVo detailVo = new RecipeDao().detailContent(conn, rNo);
		System.out.println("PlatingService ntpcVo :" + detailVo);

		close(conn);
		return detailVo;
	}
	
	public ArrayList<RecipeImageVo> detailImg(int rNo) {
		System.out.println("RecipeService vo :" + rNo);

		Connection conn = getConnection();
		ArrayList<RecipeImageVo> imgVolist = new RecipeDao().detailImg(conn, rNo);
		System.out.println("RecipeService ntpcVo :" + imgVolist);

		close(conn);
		return imgVolist;
	}
	
	public int deleteContent(int rNo) {
		System.out.println("RecipeService vo :" + rNo);

		Connection conn = getConnection();
		int result = new RecipeDao().deleteContent(conn, rNo);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;
	}
	// 게시글 이미지 삭제
		public int deleteContentImg(int rNo) {
			System.out.println("RecipeService vo :" + rNo);

			Connection conn = getConnection();
			int result = new RecipeDao().deleteContentImg(conn, rNo);
			System.out.println("RecipeService result :" + result);

			close(conn);
			return result;
		}
	
	public int countList(String rConcept) {
		System.out.println("RecipeService vo :" + rConcept);

		Connection conn = getConnection();
		int result = new RecipeDao().countList(conn, rConcept);
		System.out.println("RecipeService result :" + result);

		close(conn);
		return result;
	}
	
	// 댓글등록
			public int insertRecomment(RecipeRecommentVo recVo) {
				System.out.println("RecipeService recVo :" + recVo);

				Connection conn = getConnection();
				int result = new RecipeDao().insertRecomment(conn, recVo);
				System.out.println("RecipeService result :" + result);

				close(conn);
				return result;
			}

			// 댓글조회
			public ArrayList<RecipeRecommentVo> showRecomment(int rNo) {
				System.out.println("RecipeService vo :" + rNo);

				Connection conn = getConnection();
				ArrayList<RecipeRecommentVo> recVolist = new RecipeDao().showRecomment(conn, rNo);
				System.out.println("RecipeService recVolist :" + recVolist);

				close(conn);
				return recVolist;

			}
			
			// 댓글 총 갯수 조회
			public RecipeRecommentVo countRecomment(int rNo) {
				System.out.println("RecipeService vo :" + rNo);

				Connection conn = getConnection();
				RecipeRecommentVo recVo = new RecipeDao().countRecomment(conn, rNo);
				System.out.println("##########RecipeService recVo :" + recVo);

				close(conn);
				return recVo;
			}
}
	
