package kh.semi.bobn.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtContestService;


/**
 * Servlet implementation class NtContestContentDeleteServlet
 */
@WebServlet("/ntccdelete")
public class NtContestContentDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NtContestContentDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("/ntccdelete");

		// 화면에서 입력받은 데이터 꺼내기
		String bnoStr = request.getParameter("cbNo");
		System.out.println(bnoStr);
		int cbNo = 0;
		try {
			// int->String
			cbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		if (cbNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntcclist");
			return;
		}

		// vo를 가지고 서비스로 이동
		int ntcrResult = new NtContestService().deleteContestContent(cbNo);

		if (ntcrResult == 0) {
			System.out.println("게시글삭제 실패ㅠㅠ");
		} else {
			System.out.println("게시글삭제 성공!!");
			response.sendRedirect("ntcclist");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//	}

}
