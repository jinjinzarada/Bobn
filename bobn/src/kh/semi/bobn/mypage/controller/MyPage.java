package kh.semi.bobn.mypage.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kh.semi.bobn.event.model.service.EventService;
import kh.semi.bobn.event.model.vo.EventVo;
import kh.semi.bobn.mypage.model.service.MypageService;
import kh.semi.bobn.mypage.model.vo.MypageVo;
import kh.semi.bobn.user.model.vo.UserVo;

/**
 * Servlet implementation class OrderDeliveryStatusServlet
 */
@WebServlet("/mypage")
public class MyPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MyPage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserVo ssvo = (UserVo)request.getSession().getAttribute("ssUserVo");
		if(ssvo == null) {
			request.setAttribute("msg", "로그인이 필요한 페이지입니다. 로그인을 해주세요.");
			request.getRequestDispatcher("WEB-INF/view/loginregister/login.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("/WEB-INF/view/mypage/mypage.jsp").forward(request, response);
		}
		
//		request.getSession().setAttribute("ssUserVo", vo);
//		if (session != null && session.getAttribute("mVo") != null){
//			MypageVo mVo = (MypageVo) session.getAttribute("mVo");
//		}
//		
//		//db 읽어오기 
//		MypageVo vo = new MypageService().readMdetail("MEMBER_ID");
//		System.out.println(vo);
//		vo.setmId(vo.getmId().replaceAll("(\r\n|\n)", "<br>"));
//		request.setAttribute("mVo", vo);
	}
}
