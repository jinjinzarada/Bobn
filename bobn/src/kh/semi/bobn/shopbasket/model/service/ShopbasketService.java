package kh.semi.bobn.shopbasket.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import kh.semi.bobn.shopbasket.model.dao.ShopbasketDao;
import kh.semi.bobn.shopbasket.model.vo.ShopbasketVo;

public class ShopbasketService {
	public int insertShopbasket(ShopbasketVo vo) {
		int result = 0;

		Connection conn = getConnection();

		return result;
	}
	
	public ArrayList<ShopbasketVo> selectShopbasketList(String memberId){
		ArrayList<ShopbasketVo> volist = null;
		Connection conn = getConnection();
		volist = new ShopbasketDao().selectShopbasketList(conn, memberId);
		close(conn);
		return volist;
	}
	
	public int updateAmount(String pId, String memberId, int updateValue) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new ShopbasketDao().updateAmount(conn, pId, memberId, updateValue);
		close(conn);

		return result;
		
	}
	
	public int selectShopbasketProductAmount(String pId, String memberId) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new ShopbasketDao().selectShopbasketProductAmount(conn, pId, memberId);
		close(conn);

		return result;
		
	}
	
	public int deleteAmount(String pId, String memberId) {
		int result = 0;
		
		Connection conn = getConnection();
		result = new ShopbasketDao().deleteShopbasketProductAmount(conn, pId, memberId);
		close(conn);

		return result;
	}
	
}
