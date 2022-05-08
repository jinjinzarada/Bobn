package kh.semi.bobn.community.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtPlatingService;
import kh.semi.bobn.community.model.vo.NtPlatingRecommentVo;

/**
 * Servlet implementation class NtPlatingRecommentWriteServlet
 */
@WebServlet("/ntprwrite")
public class NtPlatingRecommentWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NtPlatingRecommentWriteServlet() {
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
		System.out.println("/ntprwrite");

		// 화면(nt_plating_detail.jsp)에서 입력받은 데이터 꺼내기
		String prContent = request.getParameter("prContent");
		String bnoStr = request.getParameter("pbNo");
		System.out.println(bnoStr);
		int pbNo = 0;
		try {
			// int->String
			pbNo = Integer.parseInt(bnoStr);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		}

		if (pbNo < 1) { // 오류발생
			// 읽어온 게시글 번호가 이상할 경우 아래 페이지로 이동
			response.sendRedirect(request.getContextPath() + "ntpclist");
			return;
		}

		// 꺼낸 정보 vo에 담아줌(erd-플레이팅댓글테이블)
		NtPlatingRecommentVo ntprVo = new NtPlatingRecommentVo();
		ntprVo.setPbNo(pbNo);
		ntprVo.setPrContent(prContent);
		System.out.println("controller ntprVo:" + ntprVo);

		// vo를 가지고 서비스로 이동
		int ntprResult = new NtPlatingService().insertPlatingRecomment(ntprVo);

		if (ntprResult == 0) {
			System.out.println("댓글쓰기 실패ㅠㅠ");
		} else {
			System.out.println("댓글쓰기 성공!!");
			response.sendRedirect("ntpcdetail?pbNo=" + pbNo);
		}

	}

}
