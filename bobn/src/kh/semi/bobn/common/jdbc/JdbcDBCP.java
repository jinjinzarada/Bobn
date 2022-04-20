package kh.semi.bobn.common.jdbc;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class JdbcDBCP {

	// 코드수정 혜미-20220419
	private static Connection conn = null;

	public static Connection getConnection() {
		try {
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			//학원공용db
			DataSource ds = (DataSource) envContext.lookup("jdbc/khbobnPclass");
			//개인로컬db
//			DataSource ds = (DataSource) envContext.lookup("jdbc/khbobnLocal");
			conn = ds.getConnection();
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
