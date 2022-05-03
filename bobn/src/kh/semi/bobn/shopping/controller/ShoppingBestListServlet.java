package kh.semi.bobn.shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.shopping.model.service.ShoppingService;
import kh.semi.bobn.shopping.model.vo.ShoppingVo;

/**
 * Servlet implementation class ShoppingBestList
 */
@WebServlet("/shopblist")
public class ShoppingBestListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingBestListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/shopblist");

		String pCountry = request.getParameter("pCountry");
		if (pCountry == null) {
			pCountry = "6";
		}

		// paging Ã³¸®
		int currentPage = 1;
		
		String pageNumStr = request.getParameter("pageNum");
		if(pageNumStr != null && !pageNumStr.equals(""))
			  currentPage = Integer.parseInt(pageNumStr);
		
		System.out.println("currentPage : " + currentPage);
		final int pageSize = 6;
		final int pageBlock = 3;

		int totalCnt = countPlatingList(pCountry);
		System.out.println("°¹¼ö:" + totalCnt );
		
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

		// rownum Ã³¸®
		int startRnum = 0;
		int endRnum = 0;
		startRnum = (currentPage - 1) * pageSize + 1;
		endRnum = startRnum + pageSize - 1;
		if (endRnum > totalCnt) {
			endRnum = totalCnt;
		}

		System.out.println("startRnum : "+ startRnum);
		System.out.println("endRnum : "+ endRnum);
		
		ArrayList<ShoppingVo> volist = new ShoppingService().listShoppingCountry(pCountry, startRnum, endRnum);
		System.out.println(volist);

		request.setAttribute("volist", volist);
		request.setAttribute("pCountry", pCountry);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("currentPage", currentPage);
		request.setAttribute("pageCnt", pageCnt);
		
		
		request.getRequestDispatcher("WEB-INF/view/shopping/shopping_best.jsp").forward(request, response);
	}
		//°Ô½Ã±Û ÃÑ °¹¼ö Á¶È¸
		public int countPlatingList(String pCountry) {
			int result = new ShoppingService().countShoppingList(pCountry);
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
