package kh.semi.bobn.curation.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.curation.model.service.RecipeService;

/**
 * Servlet implementation class RecipeDeleteServlet
 */
@WebServlet("/recipedelete")
public class RecipeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("삭제 서블릿 들어왔다");

		// 화면에서 입력받은 데이터 꺼내기
		String bnoStr = request.getParameter("rNo");
		System.out.println(bnoStr);
		int rNo = 0;
		try {
			// int->String
			rNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		if (rNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "curreclist");
			return;
		}

		// vo를 가지고 서비스로 이동
		int recResult = new RecipeService().deleteContent(rNo);
		int recResult2 = new RecipeService().deleteContentImg(rNo);
		

		if (recResult == 0 || recResult2 ==0) {
			System.out.println("게시글삭제 실패");
		} else {
			System.out.println("게시글삭제 성공");
			PrintWriter script = response.getWriter();
			script.println("<script>");
			//script.println("alert('로그인에 성공하였습니다. 반갑습니다 회원님.'); location.href='main';");
			//script.println("alert('로그인에 성공하였습니다. 반갑습니다 회원님.'); history.go(-2);");
			script.println("alert('글이 삭제되었습니다.'); location.href ='curreclist';");
			script.println("</script>");
			//response.sendRedirect("curreclist");
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
