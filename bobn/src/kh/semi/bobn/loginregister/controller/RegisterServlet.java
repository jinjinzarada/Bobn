package kh.semi.bobn.loginregister.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.user.model.vo.UserVo;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserVo ssvo = (UserVo)request.getSession().getAttribute("ssUserVo");
		if(ssvo == null) {  // 로그인 되지 않은 상황 - 글작성불가 - login 페이지로 이동
			request.getRequestDispatcher("WEB-INF/view/loginregister/register.jsp").forward(request, response);
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 가입되신 회원이십니다.'); location.href='main';");
			script.println("</script>");
		}
		
		

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
