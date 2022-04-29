package kh.semi.bobn.pay.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.pay.model.service.PayService;
import kh.semi.bobn.pay.model.vo.PayVo;
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
//		request.getRequestDispatcher("WEB-INF/view/pay/pay_main.jsp").forward(request, response);
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
		String memberId = "ziwoo123";
		
		ArrayList<PayVo> volist = new PayService().selectPayList(memberId);
		
		System.out.println("paylist volist:"+volist);
		request.setAttribute("payvolist", volist);
		request.getRequestDispatcher("WEB-INF/view/pay/pay_main.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
