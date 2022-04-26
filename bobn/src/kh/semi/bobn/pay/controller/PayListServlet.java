package kh.semi.bobn.pay.controller;

import java.io.IOException;
import java.sql.Timestamp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.shopbasket.model.service.ShopbasketService;
import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

/**
 * Servlet implementation class PayListServlet
 */
@WebServlet("/paylist")
public class PayListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/view/pay/pay_main.jsp").forward(request, response);
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
		
		System.out.println("controller result:"+result);

		if(result == 0) {
			System.out.println("결제가 실패되었습니다.");
			request.setAttribute("msg", "결제 실패");
			request.getRequestDispatcher("관련 jsp").forward(request,response);
			
		} else {
			System.out.println("결제 완료되었습니다.");
			request.getSession().setAttribute("msg", "결제 성공");
//			response.sendRedirect(request.getContextPath());
			request.getRequestDispatcher("관련 jsp").forward(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
