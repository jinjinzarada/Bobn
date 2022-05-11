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
	public ArrayList<MainVo> brlist(Connection conn) {
		ArrayList<MainVo> brlist = new ArrayList<MainVo>();

		String sql = "select i.CRRECONTENTIMAGE_LOCATION, c.CRRECONTENT_TITLE "
				+ " from cr_recipe_content c left outer join cr_recipe_content_image i"
				+ " using (CRRECONTENT_NO) order by CRRECONTENT_NO desc";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int count=0;
			
			while (rs.next()) {
				MainVo vo = new MainVo();
				
				
				vo.setCrImgLoc(rs.getString("CRRECONTENTIMAGE_LOCATION"));
				vo.setCrTitle(rs.getString("CRRECONTENT_TITLE"));

				brlist.add(vo);
				// 5개만 저장
				count++;
				if(count >= 5) 
					break;
				System.out.println("brlist" + brlist); // 확인용 코드
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("dao brlist" + brlist);
		return brlist;
	}
	
	// Best 플레이팅 목록 조회
	public ArrayList<MainVo> bplist(Connection conn) {
		ArrayList<MainVo> bplist = new ArrayList<MainVo>();

		String sql = "select i.PI_FILE, p.PB_TITLE "
				+ " from NTPI i left outer join NTPC p"
				+ " using (PB_NO) order by PB_NO";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			int count=0;
			
			while (rs.next()) {
				MainVo vo = new MainVo();
				
				vo.setPbImgLoc(rs.getString("PI_FILE"));
				vo.setPbTitle(rs.getString("PB_TITLE"));

				bplist.add(vo);
				// 5개만 저장
				count++;
				if(count >= 5) 
					break;
				System.out.println("bplist" + bplist); // 확인용 코드
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}
		System.out.println("dao bplist" + bplist);
		return bplist;
	}

}
