package kh.semi.bobn.shopbasket.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

public class ShopbasketDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// insert 같은 경우는 넣어줄 데이터가 좀 많을 가능성이 높죠. 그래서 각각의 pid, memberid, amout을 자료형
	// 1개(ShopbasketVo)에 다가 담아서 온거에요.
	public int insertShopbasket(Connection conn, ShopbasketVo vo) {
		int result = 0;

		String sql = "insert into basket_item values (?,?,?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getpId());
			pstmt.setString(2, vo.getMemberId());
			pstmt.setInt(3, vo.getBasketitemAmount());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public ArrayList<ShopbasketVo> selectShopbasketList(Connection conn, String memberId) {
		ArrayList<ShopbasketVo> volist = null;

//	    String sql = "select * from product p join basket_item b using(p_id) where b.member_id = ?";
		String sql = "select * from product p, detail_image d, basket_item b where p.p_id = d.p_id and d.p_id = b.p_id order by b.member_id";
		try {
			pstmt = conn.prepareStatement(sql);
//			pstmt.setString(1, memberId);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				volist = new ArrayList<ShopbasketVo>();

				do {
					ShopbasketVo vo = new ShopbasketVo();
					vo.setpId(rs.getString("p_id"));
					vo.setMemberId(rs.getString("member_id"));
					vo.setBasketitemAmount(rs.getInt("basketitem_amount"));
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
					vo.setD_file(rs.getString("d_file"));
					volist.add(vo);
				} while (rs.next());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("dao shopbasket_main volist :" + volist);
		return volist;
	}

	// 업데이트의 경우는 where나 업데이트할 것만 필요 각각 들고 오기가능 1개의 자료형에 싣지 않고 각각
	public int updateAmount(Connection conn, String pId, String memberId, int updateValue) {

		int result = 0;

		String sql = "update basket_item set basketitem_amount = ? where member_id =? and p_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			// sql 순서 맞추기
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

	public int selectShopbasketProductAmount(Connection conn, String pId, String memberId) {

		int result = 0;

		String sql = "select basketitem_amount from basket_item where member_id =? and p_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, pId);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		System.out.println("result" + result);
		return result;
	}

	public int deleteShopbasketProductAmount(Connection conn, String pId, String memberId) {
		int result = 0;

		String sql = "delete from basket_item where member_id =? and p_id=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberId);
			pstmt.setString(2, pId);

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
