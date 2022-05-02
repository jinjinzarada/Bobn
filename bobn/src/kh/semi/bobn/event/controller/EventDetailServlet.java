package kh.semi.bobn.event.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.event.model.dao.EventDao;
import kh.semi.bobn.event.model.service.EventService;
import kh.semi.bobn.event.model.vo.EventVo;

/**
 * Servlet implementation class EventDetailServlet
 */
@WebServlet("/evdetail")
public class EventDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public EventDetailServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet evread");
		String enoStr = request.getParameter("eno");
		System.out.println(enoStr);
		int eNo=0;
		try {
			eNo = Integer.parseInt(enoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}
		if(eNo < 1) {  // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 목록으로 이동
			response.sendRedirect("event");
			return;
		}
		// db 읽어오기
		EventVo vo = new EventService().readEvdetail(eNo);
		System.out.println(vo);
		vo.seteContent(vo.geteContent().replaceAll("(\r\n|\n)", "<br>"));
		vo.seteContent(vo.geteContent().replaceAll(" ", "&nbsp;"));
		request.setAttribute("eVo", vo);
		request.getRequestDispatcher("/WEB-INF/view/event/evdetail.jsp").forward(request, response);
	}
}
