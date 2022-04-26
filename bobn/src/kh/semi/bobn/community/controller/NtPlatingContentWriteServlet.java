package kh.semi.bobn.community.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collection;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import kh.semi.bobn.community.model.service.NtPlatingService;
import kh.semi.bobn.community.model.vo.NtPlatingContentVo;
import kh.semi.bobn.community.model.vo.NtPlatingImgVo;

/**
 * Servlet implementation class NtPlatingContentWriteServlet
 */

//파일설정(안해줄경우 enctype="multipart/form-data"설정 시 오류남)
@MultipartConfig(
		maxFileSize=1024*1024*50,
		maxRequestSize=1024*1024*50*5
)
@WebServlet("/ntpcwrite")
public class NtPlatingContentWriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NtPlatingContentWriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/view/community/nt_plating_write.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("/ntpcwrite들어왔음");
		
		//화면(nt_plating_write.jsp)에서 입력받은 데이터 꺼내기
		String pbConcept = request.getParameter("pbConcept");
		String pbTitle = request.getParameter("pbTitle");
		String pbContent = request.getParameter("pbContent");
		System.out.println(pbTitle);
		
		//꺼낸 정보 vo에 담아줌(erd-플레이팅게시글테이블)
		NtPlatingContentVo ntpcVo = new NtPlatingContentVo();
		ntpcVo.setPbConcept(pbConcept);
		ntpcVo.setPbTitle(pbTitle);
		ntpcVo.setPbContent(pbContent);
		System.out.println("controller vo:" + ntpcVo);
		
		//vo를 가지고 서비스로 이동
		int ntpcResult = new NtPlatingService().insertPlatingContent(ntpcVo);
		
		if(ntpcResult == 0) {
			System.out.println("글쓰기 실패ㅠㅠ");
		} else {
			System.out.println("글쓰기 성공!!");
		}
		
		//다중파일업로드 - 화면(nt_plating_write.jsp)에서 입력받은 파일 꺼내기
		Collection<Part> fileParts = request.getParts();
		//파일이 담겨져있는 변수 fileParts를 p에 하나씩 넣어서 반복문
		for(Part p : fileParts) {
			if(!p.getName().equals("uploadFile")) continue;	//파일이 uploadFile가 아니면 빠져나옴
		
		
			//이미지파일 가져오기
			Part filePart = p;
			
			//파일명을 getSubmittedFileName로 얻어서 fileName변수에 담아주기
			String fileName = filePart.getSubmittedFileName();
			System.out.println("fileName :" + fileName);
			
			//파일명 중복 방지
			String uniqueName = UUID.randomUUID().toString();
			System.out.println("uniqueName :" + uniqueName);
			
			//파일경로를 inputstream으로 얻어서 fis변수에 담아주기
			InputStream fis = filePart.getInputStream();
			
			//파일 저장경로(절대경로) root를 통해 상대경로를 넘겨주면 물리경로를 얻어줌
			String realPath = request.getServletContext().getRealPath("/upload");
			System.out.println("realpath:" + realPath);
			
			//파일경로+경로구분자+uuid+파일명까지 filePath에 담기(separator는 \,/ 이런 경로 구분자 자동적용)
			String filePath = realPath + File.separator + uniqueName + fileName;
			System.out.println("filePath:" + filePath);
			
			//filePath(파일경로+파일명) 출력해서 fos변수에 담아주기
			FileOutputStream fos = new FileOutputStream(filePath);
			
			//read()메소드는 바이트로 읽어와서 정수형(다 읽었을 때)'-1'으로 반환
			byte[] buf = new byte[1024];	//바이트 읽어올 buf바구니 준비
			int size = 0;
	 		while((size = fis.read(buf))!= -1) {
	 			fos.write(buf,0,size);	//buf의 크기를 0개부터 size만큼 읽어줘
	 		}
			
	 		//파일경로를 vo에 담아줌(erd-플레이팅이미지테이블)
	 		NtPlatingImgVo ntpiVo = new NtPlatingImgVo();
	 		ntpiVo.setPiFile(filePath);
	 		
	 		//vo를 가지고 서비스로 이동
	 		int ntpiResult = new NtPlatingService().insertPlatingImg(ntpiVo);
	 		
	 		if(ntpiResult == 0) {
				System.out.println("이미지 등록 실패ㅠㅠ");
			} else {
				System.out.println("이미지 등록 성공!!");
			}
	 		
	 		fos.close();
	 		fis.close();
		}

		
		
		
		
		
		
		
	}

}









