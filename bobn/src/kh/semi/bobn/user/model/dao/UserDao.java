package kh.semi.bobn.user.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import kh.semi.bobn.user.model.vo.UserVo;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;


public class UserDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public int insertMember(Connection conn, UserVo vo) {
		
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		
		int result =0;
		String sql = "insert into member (MEMBER_ID, MEMBER_NAME, MEMBER_EMAIL, MEMBER_PHONE, MEMBER_PASSWORD, MEMBER_GENDER, MEMBER_BIRTHOFDATE) values (?,?,?,?,?,?,?)";
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getmId());
			pstmt.setString(2, vo.getMname());
			pstmt.setString(3, vo.getMemail());
			pstmt.setString(4, vo.getMphone());
			pstmt.setString(5, vo.getMpassword());
			pstmt.setString(6, vo.getMgender());
			pstmt.setString(7, vo.getMbdate());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(pstmt);
		}
		return result;
	}
	public int updateMember(Connection conn, UserVo vo) {
		int result = 0;
		String sql = "";
		try { 
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(pstmt);
		}
		return result;
	}
	public int deleteMember(Connection conn, UserVo vo) {
		int result = 0;
		String sql = "";
		try { 
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(pstmt);
		}
		return result;
	}
	public ArrayList<UserVo> listMember(Connection conn){
		ArrayList<UserVo> result = null;
		String sql = "select * from member";
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		try { 
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			result = new ArrayList<UserVo>();
			while(rs.next()) {
				UserVo vo = new UserVo();
				vo.setMemail(rs.getString("MEMBER_EMAIL"));
				vo.setmId(rs.getString("MEMBER_ID"));
				vo.setMname(rs.getString("MEMBER_NAME"));
				vo.setMpassword(rs.getString("MEMBER_PASSWORD"));
				vo.setMphone(rs.getString("MEMBER_PHONE"));
				vo.setMgender(rs.getString("MEMBER_GENDER"));
				vo.setMbdate(rs.getString("MEMBER_BIRTHOFDATE"));
				result.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		return result;
	}
	public UserVo readMember(Connection conn, String mId){
		UserVo result = null;
		String sql = "";
		try { 
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		return result;
	}
	
	
	public UserVo login(Connection conn, String mId, String mpassword){
		UserVo result = null;
		String sql = "select * from member where MEMBER_ID=? and MEMBER_PASSWORD=?";
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			pstmt.setString(2, mpassword);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new UserVo();
				result.setMemail(rs.getString("MEMBER_EMAIL"));
				result.setmId(rs.getString("MEMBER_ID"));
				result.setMname(rs.getString("MEMBER_NAME"));
				result.setMpassword(rs.getString("MEMBER_PASSWORD"));
				result.setMphone(rs.getString("MEMBER_PHONE"));
				result.setMgender(rs.getString("MEMBER_GENDER"));
				result.setMbdate(rs.getString("MEMBER_BIRTHOFDATE"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		return result;
	}
	
	public UserVo findid(Connection conn, String name, String email){
		UserVo result = null;
		String sql = "select * from member where MEMBER_NAME=? and MEMBER_EMAIL=?";
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new UserVo();
				result.setmId(rs.getString("MEMBER_ID"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		return result;
	}
	
	public UserVo findpwd(Connection conn, String userid, String username, String useremail){
		UserVo result = null;
		String sql = "select * from member where MEMBER_NAME=? and MEMBER_EMAIL=? and MEMBER_ID=?";
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, username);
			pstmt.setString(2, useremail);
			pstmt.setString(3, userid);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new UserVo();
				result.setMpassword(rs.getString("MEMBER_PASSWORD"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		return result;
	}
	
	public int registercheckid(Connection conn, String inputuid) {
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		String sql = "select * from member where MEMBER_ID=?";
		
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputuid);
			rs = pstmt.executeQuery();
			if(rs.next() || inputuid.equals("")) { // 결과가 있다면
				return 0; // 이미 존재하는 아이디
			} else {
				return 1; // 가입 가능한 아이디
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(pstmt);
		}
		return -1; // 데이터베이스 오류
	}
	
	public int registercheckemail(Connection conn, String inputemail) {
//		MEMBER_ID          NOT NULL VARCHAR2(20) 
//		MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//		MEMBER_NAME        NOT NULL VARCHAR2(20) 
//		MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//		MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//		MEMBER_GENDER      NOT NULL CHAR(1)      
//		MEMBER_BIRTHOFDATE NOT NULL DATE 
		String sql = "select * from member where MEMBER_EMAIL=?";
		
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, inputemail);
			rs = pstmt.executeQuery();
			if(rs.next() || inputemail.equals("")) { // 결과가 있다면
				return 0; // 이미 존재하는 아이디
			} else {
				return 1; // 가입 가능한 아이디
			} 
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(pstmt);
		}
		return -1; // 데이터베이스 오류
	}
}
