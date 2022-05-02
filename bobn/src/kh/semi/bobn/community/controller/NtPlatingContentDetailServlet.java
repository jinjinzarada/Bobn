package kh.semi.bobn.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtPlatingService;
import kh.semi.bobn.community.model.vo.NtPlatingListVo;

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
		
		//화면(nt_plating_detail.jsp)에서 입력받은 데이터 꺼내기
		String bnoStr = request.getParameter("pbNo");
		System.out.println(bnoStr);
		int pbNo = 0;
		try {
			//int->String
			pbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
//		if (pbNo < 1) { // 오류발생
//			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
//			response.sendRedirect("ntpclist");
//			return;
//		}
		// db 읽어오기
		// service로 이동
		NtPlatingListVo ntpcVolist = new NtPlatingService().detailPlatingContent(pbNo);
		System.out.println(ntpcVolist);
		if (ntpcVolist == null) {
			// db query문 실행 중 오류발생 시 아래 페이지로 이동
			response.sendRedirect("ntpclist");
			return;
		}
		//꺼낸 정보를 "ntpcVolist"에 담아서 화면에 뿌려줌
		request.setAttribute("ntpcVolist", ntpcVolist);

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
