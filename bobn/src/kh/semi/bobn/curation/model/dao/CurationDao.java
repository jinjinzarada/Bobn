package kh.semi.bobn.curation.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import kh.semi.bobn.curation.model.vo.CurationVo;


public class CurationDao {
	private Statement stmt = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public CurationVo readFoodInfo(Connection conn, String foodname){
		CurationVo result = null;
		//String sql = "select AVG(CALORIE), AVG(SODIUM) from cr_restaurant where FOOD_NAME LIKE '%' || ? || '%'";
		String sql = "select TRUNC(AVG(CALORIE)), TRUNC(AVG(SODIUM)) from cr_restaurant where FOOD_NAME LIKE '%' || ? || '%'";
		//String sql = "select CALORIE, SODIUM from cr_restaurant where FOOD_NAME=?";
		try { 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, foodname);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = new CurationVo();
				result.setCaloInfo(rs.getString("TRUNC(AVG(CALORIE))"));
				result.setSodiumInfo(rs.getString("TRUNC(AVG(SODIUM))"));
				//result.setCaloInfo(rs.getString("CALORIE"));
				//result.setSodiumInfo(rs.getString("SODIUM"));	
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			close(rs);
			close(pstmt);
		}
		return result;
	}
}
