package kh.semi.bobn.event.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.event.model.service.EventService;
import kh.semi.bobn.event.model.vo.EventVo;

/**
 * Servlet implementation class EventMainServlet
 */
@WebServlet("/event")
public class EventMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private EventService service = new EventService();
	
    public EventMainServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int currentPage = 1;
		
		String pageNumStr = request.getParameter("pageNum");
		if(pageNumStr != null && !pageNumStr.equals(""))
			  currentPage = Integer.parseInt(pageNumStr);
		
		final int pageSize = 5;
		final int pageBlock = 3;  
		
		int totalCnt = countBoardList();
		
		// paging 처리
		int pageCnt = (totalCnt/pageSize) + (totalCnt%pageSize==0 ? 0 : 1); // 총 페이지 계산 
		int startPage = 1;
		int endPage = 1;
		if(currentPage%pageBlock == 0) {
			startPage = ((currentPage/pageBlock)-1)*pageBlock + 1;
		} else {
			startPage = (currentPage/pageBlock)*pageBlock + 1;
		}
		endPage = startPage + pageBlock - 1;
		if(endPage > pageCnt) {
			endPage = pageCnt;
		}
		System.out.println("paging" + startPage+"~"+endPage);
		
		// rownum 처리
		int startRnum = 0;
		int endRnum = 0;
		startRnum = (currentPage-1)*pageSize + 1;
		endRnum = startRnum + pageSize - 1;
		if(endRnum > totalCnt) {
			endRnum = totalCnt;
		}
		
		// 게시글 전체 리스트 (service)
		ArrayList<EventVo> evlist=new EventService().evlist(startRnum, endRnum);
		System.out.println("evlist"+evlist);
		// 배열 넘기기 
		request.setAttribute("evlist", evlist);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageCnt", pageCnt);
		request.setAttribute("currentPage", currentPage);		
		
		request.getRequestDispatcher("/WEB-INF/view/event/event.jsp").forward(request, response);
	}
		public int countBoardList() {		
			int result = service.countBoardList();
			return result;
		}
}
