package kh.semi.bobn.event.model.service;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.bobn.event.model.dao.EventDao;
import kh.semi.bobn.event.model.vo.EventVo;

public class EventService {
	
	// 이벤트 게시글 목록
	public ArrayList<EventVo> evlist(){
		
		Connection conn = getConnection();
	
		ArrayList<EventVo> evlist = new EventDao().evlist(0, 0);
		System.out.println("evlist" + evlist); //확인용 코드 
		
		close(conn);
		
		return evlist;

	}
}
