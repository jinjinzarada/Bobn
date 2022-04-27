package kh.semi.bobn.community.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kh.semi.bobn.community.model.service.NtPlatingService;
import kh.semi.bobn.community.model.vo.NtPlatingContentVo;
import kh.semi.bobn.community.model.vo.NtPlatingListVo;

/**
 * Servlet implementation class NtPlatingContentListServlet
 */
@WebServlet("/ntpclist")
public class NtPlatingContentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NtPlatingContentListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("/ntpclist");

		//service로 이동
		ArrayList<NtPlatingListVo> ntpcVolist = new NtPlatingService().listPlatingContent();
		System.out.println(ntpcVolist);
		request.setAttribute("ntpcVolist", ntpcVolist);	//읽어온 디비를 ntpcVolist넣어줌(jsp랑 소통)
		request.getRequestDispatcher("WEB-INF/view/community/nt_plating_list.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
