package kh.semi.bobn.curation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.curation.model.service.CurationService;
import kh.semi.bobn.curation.model.service.RecipeService;
import kh.semi.bobn.curation.model.vo.RecipeDetailVo;
import kh.semi.bobn.curation.model.vo.RecipeImageVo;
import kh.semi.bobn.curation.model.vo.RecipeRecommentVo;

/**
 * Servlet implementation class RecipeDetailServlet
 */
@WebServlet("/recipedetail")
public class RecipeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/recipedetail");

		// 화면(detail.jsp)에서 읽어온 데이터 꺼내기
		String bnoStr = request.getParameter("rNo");
		System.out.println(bnoStr);
		int rNo = 0;
		try {
			// int->String
			rNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		if (rNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "curreclist");
			return;
		}
		// service로 이동
		// 게시글 내용
		RecipeDetailVo detailVo = new RecipeService().detailContent(rNo);
		// 게시글 이미지(여러장)
		ArrayList<RecipeImageVo> imgVolist = new RecipeService().detailImg(rNo);
		// 댓글
		ArrayList<RecipeRecommentVo> recVolist = new RecipeService().showRecomment(rNo);
		// 댓글 총 갯수 조회
		RecipeRecommentVo recVo = new RecipeService().countRecomment(rNo);

		System.out.println("detailVo디테일 :" + detailVo);
		System.out.println("imgVolist디테일 :" + imgVolist);
		System.out.println("##########recVo 서블릿쪽 :" + recVo);
		if (detailVo == null) {
			// db query문 실행 중 오류발생 시 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "curreclist");
			return;
		}
		// 꺼낸 값을 키에 담아서 화면에 뿌려줌
		// 게시글 내용
		request.setAttribute("detailVo", detailVo);
		// 게시글 이미지(여러장)
		request.setAttribute("imgVolist", imgVolist);
		// 댓글
		request.setAttribute("recVolist", recVolist);
		// 댓글 총 갯수
		request.setAttribute("recVo", recVo);

		request.getRequestDispatcher("WEB-INF/view/curation/recipe_detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
