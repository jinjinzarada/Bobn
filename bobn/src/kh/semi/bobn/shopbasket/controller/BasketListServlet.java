package kh.semi.bobn.shopbasket.controller;

import java.io.IOException;
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
		request.getRequestDispatcher("WEB-INF/view/shopbasket/shopbasket_main.jsp").forward(request, response);
		String amountStr=request.getParameter("amount");
		int amount = 0;
		try {
			amount = Integer.parseInt(amountStr);
		}catch (Exception e) {
			// TODO: handle exception
		}
		System.out.println(amount);
		ShopbasketVo vo = new ShopbasketVo();
		vo.setBasketitemAmount(amount);
		
		int result = new ShopbasketService().insertShopbasket(vo);
		
//		if(result ==0) {
//			//실패
//			System.out.println("실패");
//		} else {
//			System.out.println("성공");
//		}
//	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		System.out.println("여기 들어오남");
//	}
	}
}
