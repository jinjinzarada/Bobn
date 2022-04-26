package kh.semi.bobn.community.model.vo;

import java.sql.Timestamp;

public class NtRecipeRecommentVo {
	
	//오라클-DESC NTRR;
//	RR_NO      NOT NULL NUMBER        
//	RR_CONTENT NOT NULL VARCHAR2(3300) 
//	RR_DATE    NOT NULL TIMESTAMP(6)  
//	RB_NO      NOT NULL NUMBER        
//	MEMBER_ID  NOT NULL VARCHAR2(20) 

	//변수 이름짓기
	private int rrNo;
	private String rrContent;
	private Timestamp rrDate;
	private int rbNo;
	private String memberId;
	
	//생성자
	public NtRecipeRecommentVo() {}
	
	public NtRecipeRecommentVo(int rrNo, String rrContent, Timestamp rrDate, int rbNo, String memberId) {
		super();
		this.rrNo = rrNo;
		this.rrContent = rrContent;
		this.rrDate = rrDate;
		this.rbNo = rbNo;
		this.memberId = memberId;
	}
	
	//toString
	@Override
	public String toString() {
		return "NtRecipeRecommentVo [rrNo=" + rrNo + ", rrContent=" + rrContent + ", rrDate=" + rrDate + ", rbNo="
				+ rbNo + ", memberId=" + memberId + "]";
	}

	//게터세터
	public int getRrNo() {
		return rrNo;
	}

	public void setRrNo(int rrNo) {
		this.rrNo = rrNo;
	}

	public String getRrContent() {
		return rrContent;
	}

	public void setRrContent(String rrContent) {
		this.rrContent = rrContent;
	}

	public Timestamp getRrDate() {
		return rrDate;
	}

	public void setRrDate(Timestamp rrDate) {
		this.rrDate = rrDate;
	}

	public int getRbNo() {
		return rbNo;
	}

	public void setRbNo(int rbNo) {
		this.rbNo = rbNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	
	
}
