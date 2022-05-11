package kh.semi.bobn.curation.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.curation.model.service.RecipeService;
import kh.semi.bobn.curation.model.vo.RecipeRecommentVo;
import kh.semi.bobn.user.model.vo.UserVo;

/**
 * Servlet implementation class RecipeRecWriteServlet
 */
@WebServlet("/recrewrite")
public class RecipeRecWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeRecWriteServlet() {
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
		String memberId = "";

		UserVo ssvo = (UserVo)request.getSession().getAttribute("ssUserVo");
		
			memberId = ssvo.getmId();
		
		
		System.out.println("댓글작성서블릿 왔드아");

		// 화면(detail.jsp)에서 입력받은 데이터 꺼내기
		String recContent = request.getParameter("recContent");
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

		// 꺼낸 정보 vo에 담아줌
		RecipeRecommentVo recVo = new RecipeRecommentVo();
		recVo.setMemberId(memberId);
		recVo.setrNo(rNo);
		recVo.setRecContent(recContent);
		System.out.println("controller recVo:" + recVo);

		// vo를 가지고 서비스로 이동
		int recResult = new RecipeService().insertRecomment(recVo);

		if (recResult == 0) {
			System.out.println("댓글쓰기 실패");
		} else {
			System.out.println("댓글쓰기 성공");
			response.sendRedirect("recipedetail?rNo=" + rNo);
		}

	}
	}


