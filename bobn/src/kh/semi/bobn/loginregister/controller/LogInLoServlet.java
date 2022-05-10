package kh.semi.bobn.loginregister.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.user.model.service.UserService;
import kh.semi.bobn.user.model.vo.UserVo;


/**
 * Servlet implementation class LogInLoServlet
 */
@WebServlet("/login.lo")
public class LogInLoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInLoServlet() {
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
		System.out.println("doPost: /login.lo");
		
		// request 인자 확인
		String mId = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.println("id: "+ mId);

		// 이 코드는 LoginServelet.java 에서 저장해야함.
//		String referer = request.getHeader("Referer");
//		request.getSession().setAttribute("redirectURI", referer);
//		System.out.println("referer: "+referer);
		
		//
		String redirectURI = (String)request.getSession().getAttribute("redirectURI");
		System.out.println("redirectURI: "+redirectURI);
		
		System.out.println(request.getRequestURI());
		
		PrintWriter script = response.getWriter();
		
		// DB 확인
		UserVo vo = new UserService().login(mId, pwd);
		if(vo == null) {  // 로그인실패
			System.out.println("로그인 실패");

//			script.println("<script>");
//			//script.println("alert('입력하신 정보가 올바르지 않습니다. 다시 한번 입력하신 정보를 확인하여 주시기 바랍니다.'); location.href='login';");
//			//location.href='login'; 은 history에 기록되무르ㅗ 이전페이지로 이동해야함.
//			script.println("alert('입력하신 정보가 올바르지 않습니다. 다시 한번 입력하신 정보를 확인하여 주시기 바랍니다.'); location.replace('login');");
//			script.println("</script>");
			response.sendRedirect("login");
		}else {  // 로그인성공
			System.out.println("로그인 성공!!");
			request.getSession().setAttribute("ssUserVo", vo);
				script.println("<script>");
				//script.println("alert('로그인에 성공하였습니다. 반갑습니다 회원님.'); location.href='main';");
				//history 로 이동시 이동시 load되지 않음. 따라서 login  --> logout으로 바뀌지 않음
				script.println("alert('로그인에 성공하였습니다. 반갑습니다 회원님.'); location.replace('"+redirectURI+"');");
				script.println("</script>");
				script.flush();
				script.close();  // close를 해야 response가 이뤄짐. print는 버퍼에 넣어두기만 함.
//			response.sendRedirect("./");  // 상대경로
			//TODO - 이동경로 설정 필요
			//response.sendRedirect(request.getContextPath()+"/main");  // 절대경로사용시 request.getContextPath() 과 함께 작성해야함.
			//절대하지 마세요.response.sendRedirect("myWeb1"+"/");  // 절대경로사용시 request.getContextPath() 과 함께 작성해야함.
		}
		

	}

}
