package kh.semi.bobn.main.model.dao;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import kh.semi.bobn.main.model.vo.MainVo;


public class MainDao {
	
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// Best 쇼핑 목록 조회
	public ArrayList<MainVo> bslist(Connection conn) {
		ArrayList<MainVo> bslist = new ArrayList<MainVo>();

		String sql = "select d.D_FILE, p.P_NAME, p.P_PRICE"
				+ " from product p left outer join detail_image d"
				+ " using (p_id) where P_CATEGORY=1";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int count=0;
			
			while (rs.next()) {
				MainVo vo = new MainVo();
				
				vo.setdFile(rs.getString("D_FILE"));
				vo.setpName(rs.getString("P_NAME"));
				vo.setpPrice(rs.getString("P_PRICE"));

				bslist.add(vo);
				// 5개만 저장
				count++;
				if(count >= 5) 
					break;
				System.out.println("bslist" + bslist); // 확인용 코드
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("dao bslist" + bslist);
		return bslist;
	}
	
	// Best 레시피 목록 조회 
	
	// Best 플레이팅 목록 조회

}
