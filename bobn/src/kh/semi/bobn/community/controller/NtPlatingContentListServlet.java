package kh.semi.bobn.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtPlatingService;
import kh.semi.bobn.community.model.vo.NtPlatingListVo;

/**
 * Servlet implementation class NtPlatingContentListServlet
 */
@WebServlet("/ntpclist")
public class NtPlatingContentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public NtPlatingContentListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("/ntpclist");

		// 디폴트 첫화면(전체)
		String pbConcept = request.getParameter("pbConcept");
		if (pbConcept == null) {
			pbConcept = "4";
		}

		// 페이징 처리
		int currentPage = 1;
		
		String pageNumStr = request.getParameter("pageNum");
		if(pageNumStr != null && !pageNumStr.equals(""))
			  currentPage = Integer.parseInt(pageNumStr);
		
		System.out.println("currentPage : " + currentPage);
		final int pageSize = 6;
		final int pageBlock = 3;

		int totalCnt = countPlatingList(pbConcept);
		System.out.println("갯수:" + totalCnt );
		// paging 처리
		int pageCnt = (totalCnt / pageSize) + (totalCnt % pageSize == 0 ? 0 : 1);
		int startPage = 1;
		int endPage = 1;
		if (currentPage % pageBlock == 0) {
			startPage = ((currentPage / pageBlock) - 1) * pageBlock + 1;
		} else {
			startPage = (currentPage / pageBlock) * pageBlock + 1;
		}
		endPage = startPage + pageBlock - 1;
		if (endPage > pageCnt) {
			endPage = pageCnt;
		}
		System.out.println("paging" + startPage + "~" + endPage);

		// rownum 처리
		int startRnum = 0;
		int endRnum = 0;
		startRnum = (currentPage - 1) * pageSize + 1;
		endRnum = startRnum + pageSize - 1;
		if (endRnum > totalCnt) {
			endRnum = totalCnt;
		}

		System.out.println("startRnum : "+ startRnum);
		System.out.println("endRnum : "+ endRnum);
		
		// service로 이동
		ArrayList<NtPlatingListVo> ntpcVolist = new NtPlatingService().listPlatingContent(pbConcept, startRnum, endRnum);
		System.out.println("리스트 갯수 : " + ntpcVolist.size());

		// 읽어온 디비를 "ntpcVolist"넣어줌(jsp랑 소통)
		request.setAttribute("ntpcVolist", ntpcVolist);
		request.setAttribute("pbConcept", pbConcept);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageCnt", pageCnt);
		
		
		request.getRequestDispatcher("WEB-INF/view/community/nt_plating_list.jsp").forward(request, response);
	}
		//게시글 총 갯수 조회
		public int countPlatingList(String pbConcept) {
			int result = new NtPlatingService().countPlatingList(pbConcept);
			return result;
	}
		

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
