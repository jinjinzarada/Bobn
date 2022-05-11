package kh.semi.bobn.curation.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.curation.model.service.RecipeService;
import kh.semi.bobn.curation.model.vo.RecipeVo;

/**
 * Servlet implementation class CurationServlet
 */
@WebServlet("/curreclist")
public class CurationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CurationServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 디폴트 첫화면(전체)
				String rConcept = request.getParameter("rConcept");
				if (rConcept == null) {
					rConcept = "4";
				}

				// 페이징 처리
				int currentPage = 1;

				String pageNumStr = request.getParameter("pageNum");
				if (pageNumStr != null && !pageNumStr.equals(""))
					currentPage = Integer.parseInt(pageNumStr);

				System.out.println("currentPage : " + currentPage);
				final int pageSize = 6;
				final int pageBlock = 3;

				int totalCnt = countPlatingList(rConcept);
				System.out.println("갯수:" + totalCnt);
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
//				startRnum = (currentPage - 1) * pageSize + 1;
//				endRnum = startRnum + pageSize - 1;
//				if (endRnum > totalCnt) {
//					endRnum = totalCnt;
//				}
				
				
				startRnum = totalCnt-((currentPage-1) * pageSize);
				endRnum = startRnum - 5;
				if (endRnum < 1) {
					endRnum = 1;
				}


				System.out.println("startRnum : " + startRnum);
				System.out.println("endRnum : " + endRnum);

				// service로 이동
				ArrayList<RecipeVo> detailVolist = new RecipeService().listContent(rConcept, startRnum,
						endRnum);
				System.out.println("리스트 갯수 : " + detailVolist.size());

				// 읽어온 디비를 "detailVolist"넣어줌(jsp랑 소통)
				request.setAttribute("detailVolist", detailVolist);
				request.setAttribute("rConcept", rConcept);
				request.setAttribute("startPage", startPage);
				request.setAttribute("endPage", endPage);
				request.setAttribute("currentPage", currentPage);
				request.setAttribute("pageCnt", pageCnt);

				request.getRequestDispatcher("WEB-INF/view/curation/recipe.jsp").forward(request, response);
			}

			// 게시글 총 갯수 조회
			public int countPlatingList(String rConcept) {
				int result = new RecipeService().countList(rConcept);
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
