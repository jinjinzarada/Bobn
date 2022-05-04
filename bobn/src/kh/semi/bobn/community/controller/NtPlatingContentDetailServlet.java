package kh.semi.bobn.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtPlatingService;
import kh.semi.bobn.community.model.vo.NtPlatingContentVo;
import kh.semi.bobn.community.model.vo.NtPlatingImgVo;
import kh.semi.bobn.community.model.vo.NtPlatingRecommentVo;

/**
 * Servlet implementation class NtPlatingContentDetailServlet
 */
@WebServlet("/ntpcdetail")
public class NtPlatingContentDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NtPlatingContentDetailServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		System.out.println("/ntpcdetail");
		
		//화면(nt_plating_detail.jsp)에서 읽어온 데이터 꺼내기
		String bnoStr = request.getParameter("pbNo");
		System.out.println(bnoStr);
		int pbNo = 0;
		try {
			//int->String
			pbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		if (pbNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect("ntpclist");
			return;
		}
		// service로 이동
		//게시글 내용 
		NtPlatingContentVo ntpcVo = new NtPlatingService().detailPlatingContent(pbNo);
		//게시글 이미지(여러장)
		ArrayList<NtPlatingImgVo> ntpiVolist = new NtPlatingService().detailPlatingImg(pbNo);
		//댓글
		ArrayList<NtPlatingRecommentVo> ntprVolist = new NtPlatingService().detailPlatingRecomment(pbNo);
		//댓글 총 갯수 조회
		NtPlatingRecommentVo ntprVo = new NtPlatingService().countPlatingRecomment(pbNo);
		
		System.out.println("ntpcVo디테일 :" + ntpcVo);
		System.out.println("ntpiVolist디테일 :" + ntpiVolist);
		if (ntpcVo == null) {
			// db query문 실행 중 오류발생 시 아래 페이지로 이동
			response.sendRedirect("ntpclist");
			return;
		}
		//꺼낸 값을 키에 담아서 화면에 뿌려줌
		//게시글 내용 
		request.setAttribute("ntpcVo", ntpcVo);
		//게시글 이미지(여러장)
		request.setAttribute("ntpiVolist", ntpiVolist);
		//댓글
		request.setAttribute("ntprVolist", ntprVolist);
		//댓글 총 갯수
		request.setAttribute("ntprVo", ntprVo);
		
		request.getRequestDispatcher("WEB-INF/view/community/nt_plating_detail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
