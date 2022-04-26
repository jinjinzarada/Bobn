package kh.semi.bobn.pay.model.service;

import java.sql.Connection;

import kh.semi.bobn.pay.model.vo.PayVo;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

public class PayService {
	public int insertPay(PayVo vo) {
		int result = 0;
		
		Connection conn = getConnection();
		
		return result;
	}
}
