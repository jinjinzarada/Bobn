package kh.semi.bobn.common.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcTemplate {

	// 코드작성 혜미-20220415
	private static Connection conn = null;

	public static Connection getConnection() {
		try {
			// 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			// URL통해서 공용DB접속
			conn = DriverManager.getConnection("jdbc:oracle:thin:@112.220.63.3:1521:xe", "khbobn", "khbobn1234");
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 로드 실패ㅠㅠ");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB 접속 실패ㅠㅠ");
			e.printStackTrace();
		} catch (Exception e) {
			System.out.println("오류ㅠㅠ");
			e.printStackTrace();
		}

		if (conn == null) {
			System.out.println("conn이 NULLㅠㅠ");
		} else
			System.out.println("conn 생성완료!!");

		return conn;

	}

	public static void close(Connection conn) {
		try {
			if (conn != null && !conn.isClosed())
				conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void close(Statement stmt) {
		try {
			if (stmt != null && !stmt.isClosed())
				stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void close(ResultSet rs) {
		try {
			if (rs != null && !rs.isClosed())
				rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public static void setAutoCommit(Connection conn, boolean onoff) {
		try {
			if (conn != null && !conn.isClosed())
				conn.setAutoCommit(onoff);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void commit(Connection conn) {
		try {
			if (conn != null && !conn.isClosed())
				conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void rollback(Connection conn) {
		try {
			if (conn != null && !conn.isClosed())
				conn.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
