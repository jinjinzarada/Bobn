package kh.semi.bobn.community.model.vo;

import java.sql.Timestamp;

public class NtContestRecommentVo {
	
	//오라클-DESC NTCR;
//	CR_NO      NOT NULL NUMBER        
//	CR_CONTENT NOT NULL VARCHAR2(3300) 
//	CR_DATE    NOT NULL TIMESTAMP(6)  
//	CB_NO      NOT NULL NUMBER        
//	MEMBER_ID  NOT NULL VARCHAR2(20)  
	
	//변수 이름짓기
	private int crNo;
	private String crContent;
	private Timestamp crDate;
	private int cbNo;
	private String memberId;
	
	//생성자
	public NtContestRecommentVo() {}
	
	public NtContestRecommentVo(int crNo, String crContent, Timestamp crDate, int cbNo, String memberId) {
		super();
		this.crNo = crNo;
		this.crContent = crContent;
		this.crDate = crDate;
		this.cbNo = cbNo;
		this.memberId = memberId;
	}

	//toString
	@Override
	public String toString() {
		return "NtContestRecommentVo [crNo=" + crNo + ", crContent=" + crContent + ", crDate=" + crDate + ", cbNo="
				+ cbNo + ", memberId=" + memberId + "]";
	}

	//게터세터
	public int getCrNo() {
		return crNo;
	}

	public void setCrNo(int crNo) {
		this.crNo = crNo;
	}

	public String getCrContent() {
		return crContent;
	}

	public void setCrContent(String crContent) {
		this.crContent = crContent;
	}

	public Timestamp getCrDate() {
		return crDate;
	}

	public void setCrDate(Timestamp crDate) {
		this.crDate = crDate;
	}

	public int getCbNo() {
		return cbNo;
	}

	public void setCbNo(int cbNo) {
		this.cbNo = cbNo;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	
	
	
	

}
