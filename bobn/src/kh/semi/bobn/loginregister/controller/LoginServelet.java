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
 * Servlet implementation class LoginServelet
 */
@WebServlet("/login")
public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet: /login");
		UserVo ssvo = (UserVo)request.getSession().getAttribute("ssUserVo");
		if(ssvo == null) {  // 로그인 되지 않은 상황 - 글작성불가 - login 페이지로 이동
			String referer = request.getHeader("Referer");
			String loginLo = referer.substring(referer.lastIndexOf("/")+1);
			System.out.println("loginLo:"+ loginLo + " , referer:" + referer);
			if(!loginLo.equals("login.lo")) {
				request.getSession().setAttribute("redirectURI", referer);
			}
			request.getRequestDispatcher("WEB-INF/view/loginregister/login.jsp").forward(request, response);
		} else {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 로그인 하셨습니다.'); location.href='main';");
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
