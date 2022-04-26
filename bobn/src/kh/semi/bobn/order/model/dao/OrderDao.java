package kh.semi.bobn.order.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import kh.semi.bobn.order.model.vo.OrderVo;
import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

public class OrderDao {
	private PreparedStatement pstmt = null;
	
	public int insertShopbasket(Connection conn, OrderVo vo) {
		int result = 0;
		
//		private String orderNumber;
//		private int orderContact;
//		private String orderRequest;
//		private Timestamp orderDate;
//		private String orderStatus;
//		private int payTotal;
//		private int payMethod;
//		private String memberId;
//		private String orderDelivery;
		
		String sql = "insert into payment values (?,?,?,?,?,?,default)";
//		(select nvl(max (basketitem_amount),0)+1 from basket_item)
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getOrderNumber());
			pstmt.setInt(2, vo.getOrderContact());
			pstmt.setString(3, vo.getOrderRequest());
			pstmt.setTimestamp(4, vo.getOrderDate());
			pstmt.setString(5, vo.getOrderStatus());
			pstmt.setInt(6, vo.getPayTotal());
			pstmt.setInt(7, vo.getPayMethod());
			pstmt.setString(8, vo.getMemberId());
			pstmt.setString(9, vo.getOrderDelivery());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
