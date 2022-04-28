package kh.semi.bobn.event.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.getConnection;

import kh.semi.bobn.event.model.vo.EventVo;

public class EventDao {

	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 게시글 목록 조회
	public ArrayList<EventVo> evlist(int start, int end) {
		ArrayList<EventVo> evlist = new ArrayList<EventVo>();
		
		Connection conn = getConnection();

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

		String sql = "select E_NO , E_TITLE , E_STARTDATE, E_ENDDATE from (select A.E_NO , A.E_TITLE , A.E_STARTDATE, A.E_ENDDATE,"
				+ "Rownum Rnum from (select E_NO , E_TITLE , E_STARTDATE, E_ENDDATE from ev_content order by e_no)A)"
				+ "where Rnum >= ? and Rnum <= ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,start);
			pstmt.setInt(2,end);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				EventVo vo = new EventVo();
				vo.seteNo(rs.getInt(1));
				vo.seteTitle(rs.getString(2));
				vo.seteStartDate(rs.getString(3));
				vo.seteEndDate(rs.getString(4));

				evlist.add(vo);
				System.out.println("evlist" + evlist); // 확인용 코드
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("dao evlist" + evlist);
		return evlist;
	}

	// 전체 글의 개수 리턴하는 메소드
	public int getAllcount() {
		
		Connection conn = getConnection();
		
		// 게시글 전체 수를 저장하는 변수
		int count = 0;

		try {
			String sql = "select count(*) from ev_content";

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			// 쿼리를 실행할 객체 선언
			if (rs.next()) {
				count = rs.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return count;
	}
}
