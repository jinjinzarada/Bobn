package kh.semi.bobn.curation.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import kh.semi.bobn.curation.model.service.CurationService;
import kh.semi.bobn.curation.model.vo.CurationVo;
import kh.semi.bobn.user.model.service.UserService;
import kh.semi.bobn.user.model.vo.UserVo;

/**
 * Servlet implementation class RestaurantServlet
 */
@WebServlet("/calo")
public class RestaurantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RestaurantServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet: /calo");
		
		// request 인자 확인
		String foodname = request.getParameter("foodname");
		System.out.println("foodname: "+ foodname);
		
		
		// DB 확인
		CurationVo vo = new CurationService().readFoodInfo(foodname);
		System.out.println(vo.getCaloInfo());
		String caloinfo = vo.getCaloInfo();
		String sodiuminfo = vo.getSodiumInfo();
		JSONObject jobj = new JSONObject();
		// 문자열 전송
		jobj.put("caloinfo", caloinfo);
		jobj.put("sodiuminfo", sodiuminfo);
		response.getWriter().print(jobj); // 전송이 되는 부분
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		doGet(request, response);
//	}

}
