package kh.semi.bobn.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtContestService;
import kh.semi.bobn.community.model.vo.NtContestContentVo;
import kh.semi.bobn.community.model.vo.NtContestImgVo;
import kh.semi.bobn.community.model.vo.NtContestRecommentVo;

/**
 * Servlet implementation class NtContestContentDetailServlet
 */
@WebServlet("/ntccdetail")
public class NtContestContentDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NtContestContentDetailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("/ntccdetail");

		// 화면(nt_contest_detail.jsp)에서 읽어온 데이터 꺼내기
		String bnoStr = request.getParameter("cbNo");
		System.out.println(bnoStr);
		int cbNo = 0;
		try {
			// int->String
			cbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		if (cbNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntcclist");
			return;
		}
		// service로 이동
		// 게시글 내용
		NtContestContentVo ntccVo = new NtContestService().detailContestContent(cbNo);
		// 게시글 이미지(여러장)
		ArrayList<NtContestImgVo> ntciVolist = new NtContestService().detailContestImg(cbNo);
		// 댓글
		ArrayList<NtContestRecommentVo> ntcrVolist = new NtContestService().detailContestRecomment(cbNo);
		// 댓글 총 갯수 조회
		NtContestRecommentVo ntcrVo = new NtContestService().countContestRecomment(cbNo);

		System.out.println("ntccVo디테일 :" + ntccVo);
		System.out.println("ntciVolist디테일 :" + ntciVolist);
		if (ntccVo == null) {
			// db query문 실행 중 오류발생 시 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntcclist");
			return;
		}
		// 꺼낸 값을 키에 담아서 화면에 뿌려줌
		// 게시글 내용
		request.setAttribute("ntccVo", ntccVo);
		// 게시글 이미지(여러장)
		request.setAttribute("ntciVolist", ntciVolist);
		// 댓글
		request.setAttribute("ntcrVolist", ntcrVolist);
		// 댓글 총 갯수
		request.setAttribute("ntcrVo", ntcrVo);

		request.getRequestDispatcher("WEB-INF/view/community/nt_contest_detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
