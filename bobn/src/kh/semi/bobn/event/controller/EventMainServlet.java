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
@WebServlet("/evmain")
public class EventMainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventMainServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 게시글 전체 리스트 (service)
		ArrayList<EventVo> evlist=new EventService().evlist();
		// 배열 넘기기 
		request.setAttribute("evlist", evlist);
		request.getRequestDispatcher("/WEB-INF/view/event/event_test.jsp").forward(request, response);
		
	}
}
