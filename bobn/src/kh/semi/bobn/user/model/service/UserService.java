package kh.semi.bobn.user.model.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;
import kh.semi.bobn.user.model.dao.UserDao;
import kh.semi.bobn.user.model.vo.UserVo;

public class UserService {
	private UserDao dao = new UserDao();
	
	public int insertMember(UserVo vo) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.insertMember(conn, vo);
		close(conn);
		return result;
	}
	public int updateMember(UserVo vo) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.updateMember(conn, vo);
		close(conn);
		return result;
	}
	public int deleteMember(UserVo vo) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.deleteMember(conn, vo);
		close(conn);
		return result;
	}
	public ArrayList<UserVo> listMember(){
		ArrayList<UserVo> result = null;
		Connection conn = getConnection();
		result = dao.listMember(conn);
		close(conn);
		return result;
	}
	public UserVo readMember(String mId){
		UserVo result = null;
		Connection conn = getConnection();
		result = dao.readMember(conn, mId);
		close(conn);
		return result;
	}
	
	public UserVo login(String mId, String mpassword){
		UserVo result = null;
		Connection conn = getConnection();
		result = dao.login(conn, mId, mpassword);
		close(conn);
		return result;
	}
	
	public UserVo findid(String name, String email){
		UserVo result = null;
		Connection conn = getConnection();
		result = dao.findid(conn, name, email);
		close(conn);
		return result;
	}
	
	public UserVo findpwd(String userid, String username, String useremail){
		UserVo result = null;
		Connection conn = getConnection();
		result = dao.findpwd(conn, userid, username, useremail);
		close(conn);
		return result;
	}
	
	public int registercheckid(String inputuid) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.registercheckid(conn, inputuid);
		close(conn);
		return result;
	}
	
	public int registercheckemail(String inputemail) {
		int result = 0;
		Connection conn = getConnection();
		result = dao.registercheckemail(conn, inputemail);
		close(conn);
		return result;
	}
}
