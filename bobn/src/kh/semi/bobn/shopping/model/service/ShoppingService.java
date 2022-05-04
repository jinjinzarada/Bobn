package kh.semi.bobn.shopping.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.bobn.shopbasket.model.dao.ShopbasketDao;
import kh.semi.bobn.shopping.model.dao.ShoppingDao;
import kh.semi.bobn.shopping.model.vo.ShoppingVo;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

public class ShoppingService {

	public int countShoppingList(String pCountry) {
		Connection conn = getConnection();
		int result = new ShoppingDao().countShoppingList(conn, pCountry);

		close(conn);
		return result;
	}

	public ArrayList<ShoppingVo> listShoppingCountry(String pCountry, int startRnum, int endRnum) {
		Connection conn = getConnection();
		
		ArrayList<ShoppingVo> volist = new ShoppingDao().listShoppingCountry(conn, pCountry, startRnum, endRnum);
		
		close(conn);
		return volist;
	}

	public ArrayList<ShoppingVo> selectShoppingList(String pId) {
		// TODO Auto-generated method stub
		return null;
	}
	public int updateAmount(String pId, String memberId, int updateValue) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new ShopbasketDao().updateAmount(conn, pId, memberId, updateValue);
		close(conn);

		return result;
	}

}
