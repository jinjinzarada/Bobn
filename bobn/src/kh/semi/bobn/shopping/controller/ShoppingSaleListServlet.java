package kh.semi.bobn.shopping.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.shopping.model.service.ShoppingService;
import kh.semi.bobn.shopping.model.vo.ShoppingVo;

/**
 * Servlet implementation class ShoppingSaleListController
 */
@WebServlet("/shopslist")
public class ShoppingSaleListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShoppingSaleListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pId = "101aaa";
		
		ArrayList<ShoppingVo> volist = new ShoppingService().selectShoppingList(pId);
		
		System.out.println("shoppinglist volist:"+volist);
		request.setAttribute("shoppingvolist", volist);
		request.getRequestDispatcher("WEB-INF/view/shopping/shopping_sale.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
