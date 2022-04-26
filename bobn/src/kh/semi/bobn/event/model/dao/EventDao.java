package kh.semi.bobn.event.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kh.semi.bobn.event.model.vo.EventVo;

public class EventDao {
	
	private PreparedStatement pstmt;
	private Connection conn;
	private ResultSet rs;
	
	public int evBoardList(Connection conn, EventVo vo) {
		int result = 0;
		
//		private int eNo;
//		private String ePostDate;
//		private String eTitle;
//		private String eContent;
//		private String String;
//		private String eStartDate;
//		private String eEndDate;
//
//		private int eImageNo;
//		private String eImageRoute;
		
		
		String sql = "select eImangeRoute, eTitle, eStartDate, eEndDate from ev_content";
		
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e){
			e.printStackTrace();
		} finally {
//			close(pstmt);
		}
		return result;
		
	}
	
	

}
