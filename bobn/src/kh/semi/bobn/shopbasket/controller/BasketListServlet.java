package kh.semi.bobn.shopbasket.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.shopbasket.model.service.ShopbasketService;
import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

/**
 * Servlet implementation class BasketListServlet
 */
@WebServlet("/blist")
public class BasketListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BasketListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		String amountStr=request.getParameter("amount");
//		int amount = 0;
//		try {
//			amount = Integer.parseInt(amountStr);
//		}catch (Exception e) {
//			// TODO: handle exception
//		}
//		System.out.println(amount);
//		ShopbasketVo vo = new ShopbasketVo();
//		vo.setBasketitemAmount(amount);
//		
		
//		String memberId = "msson912"; // TODO 회원가입 후 삭제
//		String memberId = "minykim"; // TODO 회원가입 후 삭제
//		String memberId = "2seochoi"; // TODO 회원가입 후 삭제
//		String memberId = "jialee"; // TODO 회원가입 후 삭제
		String memberId = "ziwoo123"; // TODO 회원가입 후 삭제
		
		ArrayList<ShopbasketVo> volist = new ShopbasketService().selectShopbasketList(memberId);
		
//		if(result ==0) {
//			//실패
//			System.out.println("실패");
//		} else {
//			System.out.println("성공");
//		}
		System.out.println("blist volist:" + volist);
		request.setAttribute("basketvolist", volist);
		request.getRequestDispatcher("WEB-INF/view/shopbasket/shopbasket.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("여기 들어오남");
//	}
}   //class
