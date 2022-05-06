package kh.semi.bobn.loginregister.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.user.model.service.UserService;
import kh.semi.bobn.user.model.vo.UserVo;

/**
 * Servlet implementation class RegisterDoServlet
 */
@WebServlet("/register.do")
public class RegisterDoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterDoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		private String mId;
//		private String mpassword;
//		private String mname;
//		private String memail;
//		private String mphone;
//		private String mgender;
//		private Date mbdate;
		
		String mId = request.getParameter("id");
		String mname = request.getParameter("name");
		String memail = request.getParameter("email");
		String mphone = request.getParameter("mobile");
		String mpassword = request.getParameter("pwd");
		String mgender = request.getParameter("gender");
		String mbdate = request.getParameter("birthdate");
		System.out.println(mId);
		System.out.println(mbdate);
		
		UserVo vo = new UserVo();
		vo.setmId(mId);
		vo.setMpassword(mpassword);
		vo.setMname(mname);
		vo.setMemail(memail);
		vo.setMphone(mphone);
		vo.setMgender(mgender);
		vo.setMbdate(mbdate);
		
		int result = new UserService().insertMember(vo);
		if(result == 0) {
			System.out.println("회원가입실패===================================");
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('다시 한번 회원가입을 시도하여 주시기 바랍니다. 불편을 끼쳐 죄송합니다.'); location.href='register';");
			script.println("</script>");
		} else {
			System.out.println("회원가입성공===================================");
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입을 축하드립니다. 메인페이지로 이동합니다.'); location.href='main';");
			script.println("</script>");
			//request.getRequestDispatcher("WEB-INF/view/loginregister/login.jsp").forward(request, response);
		}
		
	}
	

}
