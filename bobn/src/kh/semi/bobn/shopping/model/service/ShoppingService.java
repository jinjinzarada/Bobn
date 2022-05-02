package kh.semi.bobn.shopping.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.bobn.shopping.model.dao.ShoppingDao;
import kh.semi.bobn.shopping.model.vo.ShoppingVo;
import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

public class ShoppingService {
	public ArrayList<ShoppingVo> selectShoppingList(String pId){
		ArrayList<ShoppingVo> volist = null;
		Connection conn = getConnection();
		volist = new ShoppingDao().selectShoppingList(conn, pId);
		close(conn);
		return volist;
	}
}
