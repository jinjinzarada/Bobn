package kh.semi.bobn.mypage.model.service;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import java.sql.Connection;

import kh.semi.bobn.mypage.model.vo.MypageVo;
import kh.semi.bobn.mypage.model.dao.MypageDao;


public class MypageService {
	
	private MypageDao dao = new MypageDao();
	
	// 멤버 정보 조회
	public MypageVo readMdetail(String MEMBER_ID) {
		Connection conn = getConnection();
		MypageVo vo = dao.readMdetail(conn, "MEMBER_ID");
		close(conn);
		return vo;
	}

}
