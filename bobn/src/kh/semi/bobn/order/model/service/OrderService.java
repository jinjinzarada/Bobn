package kh.semi.bobn.order.model.service;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import java.sql.Connection;

import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

public class OrderService {
	public int insertShopbasket(ShopbasketVo vo) {
		int result = 0;

		Connection conn = getConnection();

		return result;
	}
}
