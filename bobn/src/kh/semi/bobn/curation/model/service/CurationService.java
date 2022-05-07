package kh.semi.bobn.curation.model.service;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.getConnection;

import java.sql.Connection;

import kh.semi.bobn.curation.model.dao.CurationDao;
import kh.semi.bobn.curation.model.vo.CurationVo;
import kh.semi.bobn.user.model.dao.UserDao;



public class CurationService {
	private CurationDao dao = new CurationDao();
	
	public CurationVo readFoodInfo(String foodname){
		CurationVo result = null;
		Connection conn = getConnection();
		result = dao.readFoodInfo(conn, foodname);
		close(conn);
		return result;
	}
}
