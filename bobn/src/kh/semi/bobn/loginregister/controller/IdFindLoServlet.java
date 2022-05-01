package kh.semi.bobn.loginregister.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import kh.semi.bobn.user.model.service.UserService;
import kh.semi.bobn.user.model.vo.UserVo;

/**
 * Servlet implementation class IdFindLoServlet
 */
@WebServlet("/idfind.lo")
public class IdFindLoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IdFindLoServlet() {
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
		System.out.println("doPost: /idfind.lo");
		
		// request 인자 확인
		String name = request.getParameter("inputnameid");
		String email = request.getParameter("inputemailid");
		System.out.println("name: "+ name);
		System.out.println("email: "+ email);
		
		
		// DB 확인
		UserVo vo = new UserService().findid(name, email);
		System.out.println(vo.getmId());
		String idshow = vo.getmId();
		JSONObject jobj = new JSONObject();
		// 문자열 전송
		jobj.put("idshow", idshow);
		response.getWriter().print(jobj); // 전송이 되는 부분
		
	}
}

