package kh.semi.bobn.shopping.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kh.semi.bobn.shopping.model.vo.ShoppingVo;

public class ShoppingDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

public ArrayList<ShoppingVo> selectShoppingList(Connection conn, String pId) {
	ArrayList<ShoppingVo> volist= null;
	
	String sql="select * from product where p_id = ?";
	
	try {
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, pId);
		rs = pstmt.executeQuery();
	
		if(rs.next()) {
			volist = new ArrayList<ShoppingVo>();
			
			do {
			ShoppingVo vo = new ShoppingVo();
			vo.setpId(rs.getString("p_id"));
			vo.setP_name(rs.getString("p_name"));
			vo.setP_category(rs.getInt("p_category"));
			vo.setP_price(rs.getInt("p_price"));
			vo.setP_sellamount(rs.getInt("p_sellamount"));
			vo.setP_weight(rs.getInt("p_weight"));
			vo.setP_calorie(rs.getInt("p_calorie"));
			vo.setP_flavor(rs.getString("p_flavor"));
			vo.setP_postdate(rs.getTimestamp("p_postdate"));
			vo.setP_salecheck(rs.getString("p_salecheck"));
			vo.setP_detail(rs.getString("p_detail"));
			volist.add(vo);
			}while(rs.next());
		}
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		close(rs);
		close(pstmt);
	}
	return volist;
}
}