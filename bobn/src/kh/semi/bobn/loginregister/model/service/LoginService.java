package kh.semi.bobn.loginregister.model.service;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.getConnection;

import java.sql.Connection;

public class LoginService {
	
		public int insertMemberInfo(LoginVo) {

			//db 연결
			Connection conn = getConnection();
			System.out.println("PlatingService vo :" + ntpcVo);
			
			//conn, vo들고 dao로 감
			int result = new NtPlatingDao().insertPlatingContent(conn, ntpcVo);
			System.out.println("PlatingService result :" + result);
			
			//db 해제
			close(conn);
			
			return result;
			
		}
}
