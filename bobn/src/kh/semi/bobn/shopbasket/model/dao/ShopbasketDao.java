package kh.semi.bobn.shopbasket.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

public class ShopbasketDao {
	private PreparedStatement pstmt = null;

	public int insertShopbasket(Connection conn, ShopbasketVo vo) {
		int result = 0;
		
		String sql = "insert into basket_item values (?,?,?)";
//		(select nvl(max (basketitem_amount),0)+1 from basket_item)
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
	
	public ArrayList<ShopbasketVo> selectShopbasketList(Connection conn, String memberId){
		ArrayList<ShopbasketVo> volist = null;
		memberId = "msson912"; // TODO 회원가입 후 삭제
		memberId = "minykim"; // TODO 회원가입 후 삭제
		memberId = "2seochoi"; // TODO 회원가입 후 삭제
		memberId = "jialee"; // TODO 회원가입 후 삭제
		memberId = "ziwoo123"; // TODO 회원가입 후 삭제
		String sql = "select * from product p join basket_item b using(p_id) where b.member_id = ?";
		
		try {
			pstmt = conn.prepareStatement(sql);
//			pstmt.setInt(1, memberId.getMemberId());
			
//			volist = pstmt.executeQuery();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return volist;
	}
}
