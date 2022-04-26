package kh.semi.bobn.community.model.dao;
//Dao 에서 하는 일 : SQL문 실행
import static kh.semi.bobn.common.jdbc.JdbcDBCP.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import kh.semi.bobn.community.model.vo.NtPlatingContentVo;
import kh.semi.bobn.community.model.vo.NtPlatingImgVo;

public class NtPlatingDao {
	
	private PreparedStatement pstmt = null;
	
	//TODO : USER 회원가입 및 login 후 재수정
	//TODO : 임시 memberId : hyemi
	
	//게시글등록
	public int insertPlatingContent(Connection conn, NtPlatingContentVo ntpcVo) {
		int result = 0;
		String memberId = "hyemi";	//TODO : 삭제
		System.out.println("PreparedStatement vo :" + ntpcVo);
		
//		String sql = "insert into ntpc(pb_no, pb_concept, pb_title, pb_content, pb_date, member_id)"
//				+ "values ((select nvl(max(pb_no),0)+1 from ntpc),?,?,?,default,(select member_id from member where member_id='"+memberId+"'))";
		
		String sql = "insert into ntpc(pb_no, pb_concept, pb_title, pb_content, member_id)"
				+ "values ((select nvl(max(pb_no),0)+1 from ntpc),?,?,?,'hyemi')";
			
		//vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntpcVo.getPbConcept());
			pstmt.setString(2, ntpcVo.getPbTitle());
			pstmt.setString(3, ntpcVo.getPbContent());
			
			//실행시켜주고 결과를 result에 담아줌
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
			//다 사용하고 close
		} finally {
			close(pstmt);
		}
		
		System.out.println("PreparedStatement result :" + result);
		//담아놨던 결과 result를 리턴
		return result;
		
	}
	//이미지등록
	public int insertPlatingImg(Connection conn, NtPlatingImgVo ntpiVo) {
		int result = 0;
		String memberId = "hyemi";	//TODO : 삭제
		System.out.println("PreparedStatement vo :" + ntpiVo);
		
		String sql = "insert into ntpi(pi_no, pi_file, pb_no)"
				+ "values ((select nvl(max(pi_no),0)+1 from ntpi),?,(select pb_no from(select * from ntpc order by pb_date desc)where rownum=1))";
			
		//vo에 가져온걸 sql문에 넣어줌
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, ntpiVo.getPiFile());

			
			//실행시켜주고 결과를 result에 담아줌
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
			
			//다 사용하고 close
		} finally {
			close(pstmt);
		}
		
		System.out.println("PreparedStatement result :" + result);
		//담아놨던 결과 result를 리턴
		return result;
		
	}

}
