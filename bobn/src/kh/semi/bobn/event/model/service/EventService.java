package kh.semi.bobn.event.model.service;

import static kh.semi.bobn.common.jdbc.JdbcDBCP.*;

import java.sql.Connection;
import java.util.ArrayList;

import kh.semi.bobn.event.model.dao.EventDao;
import kh.semi.bobn.event.model.vo.EventVo;

public class EventService {
	
	private EventDao dao = new EventDao();
	
	// 이벤트 게시글 목록
	public ArrayList<EventVo> evlist(int startRnum, int endRnum){
		
		Connection conn = getConnection();
	
		ArrayList<EventVo> evlist = new EventDao().evlist(startRnum,endRnum);
		System.out.println("evlist service" + evlist); //확인용 코드 
		close(conn);
		return evlist;

	}
	
	public int countBoardList() {
		Connection conn = getConnection();
		int result = dao.countBoardList(conn);
		close(conn);
		return result;
	}
}
