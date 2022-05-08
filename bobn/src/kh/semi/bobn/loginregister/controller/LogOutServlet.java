package kh.semi.bobn.loginregister.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogOutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		session.invalidate();  
		request.setAttribute("msg", "정상적으로 로그아웃 되었습니다.");
		System.out.println("로그아웃 성공");
		request.setAttribute("location", "/main");
		request.getRequestDispatcher("/WEB-INF/view/loginregister/logout.jsp").forward(request, response);
		
	}


}
