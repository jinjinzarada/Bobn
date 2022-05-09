package kh.semi.bobn.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtRecipeService;
import kh.semi.bobn.community.model.vo.NtRecipeContentVo;
import kh.semi.bobn.community.model.vo.NtRecipeImgVo;
import kh.semi.bobn.community.model.vo.NtRecipeRecommentVo;

/**
 * Servlet implementation class NtRecipeContentDetailServlet
 */
@WebServlet("/ntrcdetail")
public class NtRecipeContentDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NtRecipeContentDetailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("/ntrcdetail");

		// 화면(nt_Recipe_detail.jsp)에서 읽어온 데이터 꺼내기
		String bnoStr = request.getParameter("rbNo");
		System.out.println(bnoStr);
		int rbNo = 0;
		try {
			// int->String
			rbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		if (rbNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntrclist");
			return;
		}
		// service로 이동
		// 게시글 내용
		NtRecipeContentVo ntrcVo = new NtRecipeService().detailRecipeContent(rbNo);
		// 게시글 이미지(여러장)
		ArrayList<NtRecipeImgVo> ntriVolist = new NtRecipeService().detailRecipeImg(rbNo);
		// 댓글
		ArrayList<NtRecipeRecommentVo> ntrrVolist = new NtRecipeService().detailRecipeRecomment(rbNo);
		// 댓글 총 갯수 조회
		NtRecipeRecommentVo ntrrVo = new NtRecipeService().countRecipeRecomment(rbNo);

		System.out.println("ntrcVo디테일 :" + ntrcVo);
		System.out.println("ntriVolist디테일 :" + ntriVolist);
		if (ntrcVo == null) {
			// db query문 실행 중 오류발생 시 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntrclist");
			return;
		}
		// 꺼낸 값을 키에 담아서 화면에 뿌려줌
		// 게시글 내용
		request.setAttribute("ntrcVo", ntrcVo);
		// 게시글 이미지(여러장)
		request.setAttribute("ntriVolist", ntriVolist);
		// 댓글
		request.setAttribute("ntrrVolist", ntrrVolist);
		// 댓글 총 갯수
		request.setAttribute("ntrrVo", ntrrVo);

		request.getRequestDispatcher("WEB-INF/view/community/nt_recipe_detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
