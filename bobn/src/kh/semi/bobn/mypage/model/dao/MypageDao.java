package kh.semi.bobn.mypage.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import kh.semi.bobn.mypage.model.vo.MypageVo;


public class MypageDao {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	// 회원 정보 수정 
	
//	MEMBER_ID          NOT NULL VARCHAR2(20) 
//	MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//	MEMBER_NAME        NOT NULL VARCHAR2(20) 
//	MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//	MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//	MEMBER_GENDER      NOT NULL CHAR(1)      
//	MEMBER_BIRTHOFDATE NOT NULL DATE   
	
//	private String mId;
//	private String mpassword;
//	private String mname;
//	private String memail;
//	private String mphone;
//	private String mgender;
//	private String mbdate;
	
	// 개별 멤버 정보
	public MypageVo readMdetail(Connection conn, String MEMBER_ID){
		System.out.println("readMdetail" + MEMBER_ID);
		
		MypageVo vo = null;
		String sql = "select * from member where MEMBER_ID = ?";
		
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, MEMBER_ID);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				vo = new MypageVo();
				vo.setmId(rs.getString("MEMBER_ID"));
				vo.setMpassword(rs.getString("MEMBER_PASSWORD"));
				vo.setMname(rs.getString("MEMBER_NAME"));
				vo.setMemail(rs.getString("MEMBER_EMAIL"));
				vo.setMphone(rs.getString("MEMBER_PHONE"));
				vo.setMgender(rs.getString("MEMBER_GENDER"));
				vo.setMbdate(rs.getString("MEMBER_BIRTHOFDATE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		System.out.println("readmdetailvo dao" + vo);
		return vo;
	}
//	
//	// 회원 정보 수정
//	public int updateMember(Connection conn, MypageVo vo) {
//		int result = 0;
//		String sql = "update member set MEMBER_PASSWORD=?, MEMBER_EMAIL=?, MEMBER_PHONE=?"
//				+ " where MEMBER_ID=?";
//		try { 
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, vo.getMpassword());
//			pstmt.setString(2, vo.getMemail());
//			pstmt.setString(3, vo.getMphone());
//			result = pstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally { 
//			close(rs);
//			close(pstmt);
//		}
//		return result;
//	}
//	
//	public int deleteMember(Connection conn, MypageVo vo) {
//		int result = 0;
//		String sql = "delete from member where MEMBER_ID=?";
//		try { 
//			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, mId);
//			result = pstmt.executeUpdate();
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally { 
//			close(rs);
//			close(pstmt);
//		}
//		return result;
//	}

}
