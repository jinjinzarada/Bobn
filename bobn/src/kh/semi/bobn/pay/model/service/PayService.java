package kh.semi.bobn.pay.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.bobn.pay.model.dao.PayDao;
import kh.semi.bobn.pay.model.vo.PayVo;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

public class PayService {
	public int insertPay(PayVo vo) {
		int result = 0;
		
		Connection conn = getConnection();
		
		return result;
	}
	public ArrayList<PayVo> selectPayList(String memberId){
		ArrayList<PayVo> volist = null;
		Connection conn = getConnection();
		volist = new PayDao().selectPayList(conn,memberId);
		close(conn);
		return volist;
	}
	public int updateAmount(String pId, String memberId, int updateValue) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new PayDao().updateAmount(conn, pId, memberId, updateValue);
		close(conn);

		return result;
		
	}
	public int selectPayAmount(String pId, String memberId) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new PayDao().selectPayAmount(conn, pId, memberId);
		close(conn);

		return result;
		
	}
	public int deleteAmount(String pId, String memberId) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new PayDao().deletePayAmount(conn, pId, memberId);
		close(conn);
		
		return result;
	}
}
