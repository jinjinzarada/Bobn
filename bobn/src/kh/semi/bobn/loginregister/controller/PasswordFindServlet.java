package kh.semi.bobn.loginregister.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import kh.semi.bobn.user.model.service.UserService;
import kh.semi.bobn.user.model.vo.UserVo;
import kh.semi.bobn.util.Gmail;
import kh.semi.bobn.util.SHA256;

/**
 * Servlet implementation class PasswordFindServlet
 */
@WebServlet("/pwdfind.lo")
public class PasswordFindServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PasswordFindServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("name_pwdfind");
		String userid = request.getParameter("id_pwdfind");
		String useremail = request.getParameter("email_pwdfind");
		System.out.println("username: "+ username);
		System.out.println("useremail: "+ useremail);
		System.out.println("userid: "+ userid);
		
		
		// DB 확인
				UserVo vo = new UserService().findpwd(userid, username, useremail);
				if(vo==null) {

					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력하신 정보가 올바르지 않습니다. 다시 한번 입력하신 정보를 확인하여 주시기 바랍니다.'); location.href='Login';");
					script.println("</script>");
				}
				
				System.out.println(vo.getMpassword());
				String pwdsend = vo.getMpassword();
				
				String host = "http://localhost:8099/bobn/";		
				String from = "khsemibobn@gmail.com";
				String to = useremail;
				System.out.println("gmailsend 까지 들어왔다");

				//사용자에게 보낼 메시지
				String subject = "BOBn 비밀번호를 확인하여 주시기 바랍니다.";
				String content = "회원님의 비밀번호는 다음과 같습니다.<br>"+pwdsend+"<br> Bobn 사이트로 돌아가서 비밀번호를 입력해주시기 바랍니다.<br>감사합니다.";

				Properties p = new Properties();
				p.put("mail.smtp.user", from);
				p.put("mail.smtp.host", "smtp.googlemail.com");
				p.put("mail.smtp.port", "465"); //TLS 587, SSL 465
				p.put("mail.smtp.starttls.enable", "true");
				p.put("mail.smtp.auth", "true");
				p.put("mail.smtp.debug", "true");
				p.put("mail.smtp.socketFactory.port", "465"); 
				p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
				p.put("mail.smtp.sockerFactory.fallback", "false");

				
				try {
					Authenticator auth = new Gmail();
					Session ses = Session.getInstance(p, auth);
					ses.setDebug(true);
					MimeMessage msg = new MimeMessage(ses);
					msg.setSubject(subject);
					Address fromAddr = new InternetAddress(from);
					msg.setFrom(fromAddr);
					Address toAddr = new InternetAddress(to);
					msg.addRecipient(Message.RecipientType.TO, toAddr);
					msg.setContent(content, "text/html; charset=UTF8");
					Transport.send(msg);
					
					
					
				} catch (Exception e) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력하신 정보가 올바르지 않습니다. 다시 한번 입력하신 정보를 확인하여 주시기 바랍니다.'); location.href='Login';");
					script.println("</script>");
				}
				
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('입력하신 이메일주소로 이메일이 발송되었습니다. 확인하여 주시기 바랍니다.'); location.href='Login';");
				script.println("</script>");
				
				}
						
		
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
