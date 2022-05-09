package kh.semi.bobn.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtRecipeService;
import kh.semi.bobn.community.model.vo.NtRecipeRecommentVo;

/**
 * Servlet implementation class NtRecipeRecommentWriteServlet
 */
@WebServlet("/ntrrwrite")
public class NtRecipeRecommentWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NtRecipeRecommentWriteServlet() {
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
		System.out.println("/ntrrwrite");

		// 화면(nt_recipe_detail.jsp)에서 입력받은 데이터 꺼내기
		String rrContent = request.getParameter("rrContent");
		String bnoStr = request.getParameter("rbNo");
		System.out.println(bnoStr);
		int rbNo = 0;
		try {
			// int->String
			rbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		if (rbNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntrclist");
			return;
		}

		// 꺼낸 정보 vo에 담아줌(erd-레시피댓글테이블)
		NtRecipeRecommentVo ntrrVo = new NtRecipeRecommentVo();
		ntrrVo.setRbNo(rbNo);
		ntrrVo.setRrContent(rrContent);
		System.out.println("controller ntrrVo:" + ntrrVo);

		// vo를 가지고 서비스로 이동
		int ntrrResult = new NtRecipeService().insertRecipeRecomment(ntrrVo);

		if (ntrrResult == 0) {
			System.out.println("댓글쓰기 실패ㅠㅠ");
		} else {
			System.out.println("댓글쓰기 성공!!");
			response.sendRedirect("ntrcdetail?rbNo=" + rbNo);
		}

	}

}
