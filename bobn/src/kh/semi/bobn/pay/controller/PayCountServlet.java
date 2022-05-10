package kh.semi.bobn.pay.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.pay.model.service.PayService;

/**
 * Servlet implementation class PayCountServlet
 */
@WebServlet("/pcount")
public class PayCountServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PayCountServlet() {
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
		System.out.println("/pcount");

		PrintWriter out = response.getWriter();
		
		String pId = request.getParameter("pId");
		System.out.println(pId);
		String memberId="ziwoo123";		
		
		int updateValue = 0;
		String updateValueStr = request.getParameter("updateValue");
		try {
			updateValue = Integer.parseInt(updateValueStr);
		} catch (Exception e) {
		}
		if(updateValue == 0) {  
			int deleteResult = new PayService().deleteAmount(pId, memberId);
			out.print(0);  
			out.flush();out.close();
			return;
		} 	
		
		
		int result = 0;
		result = new PayService().updateAmount(pId, memberId, updateValue);
		

		out.print(result); 
		out.flush();out.close();
	}

}
