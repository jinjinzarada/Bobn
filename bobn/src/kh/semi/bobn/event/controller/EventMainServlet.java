package kh.semi.bobn.event.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
		
		String eTitle = request.getParameter("eTitle");
		String eContent = request.getParameter("eContent");
		String eStartDate = request.getParameter("eStartDate");
		String eEndDate = request.getParameter("eEndDate");
		
		EventVo vo = new EventVo();
		vo.seteTitle(eTitle);
		vo.seteContent(eContent);		
		vo.seteStartDate(eStartDate);
		vo.seteEndDate(eEndDate);

		
	}
}
