package kh.semi.bobn.shopping.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import kh.semi.bobn.shopping.model.vo.ShoppingVo;

public class ShoppingDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	public ArrayList<ShoppingVo> selectShoppingList(Connection conn, String pId) {
		ArrayList<ShoppingVo> volist = null;

		String sql = "select * from product where p_id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
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
				} while (rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		return volist;
	}

	public int countShoppingList(Connection conn, String pCountry) {
		int result = 0;
		String sql = "";

		if (pCountry.equals("1")) {
			sql = "select count(*) from product";
		} else {
			sql = "select count(*) from product where p_category=?";
		}
		try {
			pstmt = conn.prepareStatement(sql);

			if (!pCountry.equals("1")) {
				pstmt.setString(1, pCountry);
			}
			rs = pstmt.executeQuery();
			if (rs.next()) {
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

	public ArrayList<ShoppingVo> listShoppingCountry(Connection conn, String pCountry, int startRnum, int endRnum) {
		ArrayList<ShoppingVo> volist = null;
		String sql = "";
		if (pCountry.equals("1")) {
			sql = "select * from product p join detail_image d using(p_id) ";
		} else {
			sql = "select * from product p join detail_image d using(p_id) where d.p_id = ?";
		}
		sql = "select * from (select ROWNUM rnum, tbl1.* from ("+sql+") tbl1) tbl2 where rnum>=? and rnum<=?";
		try {
			pstmt = conn.prepareStatement(sql);
			if (pCountry.equals("1")) {
				pstmt.setInt(1, startRnum);
				pstmt.setInt(2, endRnum);
			} else {
				pstmt.setString(1, pCountry);
				pstmt.setInt(2, startRnum);
				pstmt.setInt(3, endRnum);
			}
			rs = pstmt.executeQuery();
			volist = new ArrayList<ShoppingVo>();
//		private String pId;
//		private String p_name;
//		private int p_category;
//		private int p_price;
//		private int  p_sellamount;
//		private int p_weight;
//		private int p_calorie;
//		private String p_flavor;
//		private Timestamp p_postdate;
//		private String p_salecheck;
//		private String p_detail;
//		
//		private String d_file;
			while (rs.next()) {
				ShoppingVo shopVo = new ShoppingVo();
				shopVo.setpId(rs.getString("pId"));
				shopVo.setP_name(rs.getString("p_name"));
				shopVo.setP_category(rs.getInt("p_category"));
				shopVo.setP_price(rs.getInt("p_price"));
				shopVo.setP_sellamount(rs.getInt("p_sellamount"));
				shopVo.setP_weight(rs.getInt("p_weight"));
				shopVo.setP_calorie(rs.getInt("p_calorie"));
				shopVo.setP_flavor(rs.getString("p_flavor"));
				shopVo.setP_postdate(rs.getTimestamp("p_postdate"));
				shopVo.setP_salecheck(rs.getString("p_salecheck"));
				shopVo.setD_file(rs.getString("d_file"));

				volist.add(shopVo);
				System.out.println("volist :" + volist);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return volist;
	}

	public int updateAmount(Connection conn, String pId, String memberId, int updateValue) {

		int result = 0;

		String sql = "update basket_item set basketitem_amount = ? where member_id =? and p_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, updateValue);
			pstmt.setString(2, memberId);
			pstmt.setString(3, pId);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("result" + result);
		return result;
	}
}