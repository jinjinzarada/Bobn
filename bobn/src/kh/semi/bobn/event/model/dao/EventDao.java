package kh.semi.bobn.event.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import kh.semi.bobn.event.model.vo.EventVo;


public class EventDao {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// 게시글 목록 조회
	public ArrayList<EventVo> evlist(Connection conn){
		ArrayList<EventVo> evlist = new ArrayList<EventVo>();
		
		EventVo vo = new EventVo();
//		private int eNo;
//		private String eTitle;
//		private String eStartDate;
//		private String eEndDate;
		
		String sql = "select eNo, eTitle, ePostDate, eEndDate from ev_content order by eNo";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				vo.seteNo(rs.getInt("eNo"));
				vo.seteTitle(rs.getString("eTitle"));
				vo.setePostDate(rs.getString("ePostDate"));
				vo.seteEndDate(rs.getString("eEndDate"));
				
				evlist.add(vo);
				System.out.println("evlist" + evlist); //확인용 코드 
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return evlist;
	}
	
}
