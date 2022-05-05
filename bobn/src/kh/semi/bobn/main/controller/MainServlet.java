package kh.semi.bobn.main.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.main.model.service.MainService;
import kh.semi.bobn.main.model.vo.MainVo;


/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/main")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MainServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// best shopping
		ArrayList<MainVo> bslist=new MainService().bslist();
		System.out.println("bslist"+bslist);
		// 배열 넘기기 
		request.setAttribute("bslist" , bslist);
		
		// best recipe
		ArrayList<MainVo> brlist=new MainService().brlist();
		System.out.println("brlist"+brlist);
		// 배열 넘기기 
		request.setAttribute("brlist" , brlist);
		
		// best plating
		ArrayList<MainVo> bplist=new MainService().bplist();
		System.out.println("bplist"+bplist);
		// 배열 넘기기 
		request.setAttribute("bplist" , bplist);
		
		request.getRequestDispatcher("/WEB-INF/view/main/main.jsp").forward(request, response);
	}

}
