package kh.semi.bobn.pay.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;

import kh.semi.bobn.pay.model.vo.PayVo;

public class PayDao {
	private PreparedStatement pstmt = null;

	public int insertPay(Connection conn, PayVo vo) {
		int result = 0;

//		private int payNumber;
//		private String orderNumber;
//		private String payName;
//		private Timestamp payDate;
//		private int payTotal;
//		private int payMethod;
//		private String memberId;

		String sql = "insert into payment values (?,?,?,?,?,?,default)";
//		(select nvl(max (basketitem_amount),0)+1 from basket_item)
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getPayNumber());
			pstmt.setString(2, vo.getOrderNumber());
			pstmt.setString(3, vo.getPayName());
			pstmt.setTimestamp(4, vo.getPayDate());
			pstmt.setInt(5, vo.getPayTotal());
			pstmt.setInt(6, vo.getPayMethod());
			pstmt.setString(7, vo.getMemberId());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
}
