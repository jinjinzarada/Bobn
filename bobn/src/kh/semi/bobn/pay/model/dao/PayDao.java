package kh.semi.bobn.pay.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import kh.semi.bobn.pay.model.vo.PayVo;

public class PayDao {
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	public int insertPay(Connection conn, PayVo vo) {
		int result = 0;

		String sql = "insert into payment values (?,?,?,?,?,?,default)";
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

	public ArrayList<PayVo> selectPayList(Connection conn, String memberId) {
		ArrayList<PayVo> volist =null;
		
		String sql = "select * from product p, detail_image d, basket_item b where p.p_id = d.p_id and d.p_id = b.p_id order by b.member_id";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
		
			if(rs.next()) {
				volist = new ArrayList<PayVo>();
				
				do {
				PayVo vo = new PayVo();
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
	public int selectPayAmount(Connection conn, String pId, String memberId) {
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

	public int deletePayAmount(Connection conn, String pId, String memberId) {
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
