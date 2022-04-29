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
}
