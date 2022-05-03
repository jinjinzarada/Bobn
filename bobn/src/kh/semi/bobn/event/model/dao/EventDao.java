package kh.semi.bobn.event.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import kh.semi.bobn.event.model.vo.EventVo;


public class EventDao {

	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 게시글 목록 조회
	public ArrayList<EventVo> evlist(Connection conn, int start, int end) {
		ArrayList<EventVo> evlist = new ArrayList<EventVo>();

//		private int eNo;
//		private String eTitle;
//		private String eStartDate;
//		private String eEndDate;

//		E_NO        NOT NULL NUMBER         
//		E_POSTDATE  NOT NULL TIMESTAMP(6)   
//		E_TITLE     NOT NULL VARCHAR2(300)  
//		E_CONTENT   NOT NULL VARCHAR2(3900) 
//		E_STARTDATE NOT NULL DATE           
//		E_ENDDATE   NOT NULL DATE  

		String sql = "select E_NO , E_TITLE , to_char(E_STARTDATE, 'yyyy-mm-dd') E_STARTDATE,"
				+ " to_char(E_ENDDATE, 'yyyy-mm-dd') E_ENDDATE from"
				+ " (select A.E_NO , A.E_TITLE , A.E_STARTDATE, A.E_ENDDATE,"
	            + " Rownum Rnum from (select E_NO , E_TITLE , E_STARTDATE, E_ENDDATE from ev_content order by e_no)A)"
	            + " where Rnum >= ? and Rnum <= ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,start);
			pstmt.setInt(2,end);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				
				EventVo vo = new EventVo();
				
				vo.seteNo(rs.getInt("E_NO"));
				vo.seteTitle(rs.getString("E_TITLE"));
				vo.seteStartDate(rs.getString("E_STARTDATE"));
				vo.seteEndDate(rs.getString("E_ENDDATE"));

				evlist.add(vo);
				System.out.println("evlist" + evlist); // 확인용 코드
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("dao evlist" + evlist);
		return evlist;
	}
	
	public int countBoardList(Connection conn) { 
		int result = 0;
		String sql = "select count(*) from ev_content";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return result;
	}
	
	// 개별 게시글 조회
	public EventVo readEvdetail(Connection conn, int e_no) {
		System.out.println("readEvdetail" + e_no);
	
		
		EventVo vo = null;
		
		String sql = "select e.E_TITLE, c.EVC_IMAGEROUTE, e.E_CONTENT from EV_CONTENT e left outer join EV_CONTENT_IMAGE c"
				+ " using (E_NO) where e_no=?";
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, e_no);
			rs = pstmt.executeQuery();
			
			
			if (rs.next()) {
				
				vo = new EventVo();
				vo.seteNo(e_no);
				vo.seteTitle(rs.getString("E_TITLE"));
				vo.seteImageRoute(rs.getString("EVC_IMAGEROUTE"));
				vo.seteContent(rs.getString("E_CONTENT"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("readEvdetailvo" + vo);
		return vo;
	}
}
