package kh.semi.bobn.shopbasket.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.shopbasket.model.service.ShopbasketService;

/**
 * Servlet implementation class BasketCountServlet
 */
@WebServlet("/bcount")
public class BasketCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BasketCountServlet() {
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
		PrintWriter out = response.getWriter();
		
		System.out.println("/bcount");
		int updateValue = 0;
		String updateValueStr = request.getParameter("updateValue");
		try {
			updateValue = Integer.parseInt(updateValueStr);
		} catch (Exception e) {
		}
		if(updateValue == 0) {  // 0이 들어오지 않을 것임 .js 에서 처리할 예정
			// 상품 삭제 ,  업데이트 아님
//			deleteValue
			// list 전체 다시 읽어와서 화면에 뿌려보기
			// blist 으로 이동
		} else {
//			System.out.println("성공");
//		}
			out.print(0);  
			out.flush();out.close();
			return;
		}
		
		String pId = request.getParameter("pId");
		System.out.println(pId);
		String memberId="ziwoo123";
		
//		int amountCnt = 0;
		int result = 0;
//		amountCnt = new ShopbasketService().selectShopbasketProductAmount(pId, memberId);
//		if(amountCnt == 0  && updateValue < 0) {
//			
//		}
		result = new ShopbasketService().updateAmount(pId, memberId, updateValue);
		

		out.print(result);   /// 이제 진짜 중요한 데이터만 들고 갈꺼에요.
		out.flush();out.close();
	}

}
