package kh.semi.bobn.community.model.vo;

import java.sql.Timestamp;

public class NtPlatingRecommentVo {
	
	//오라클-DESC NTPR;
//	PR_NO      NOT NULL NUMBER        
//	PR_CONTENT NOT NULL VARCHAR2(3300) 
//	PR_DATE    NOT NULL TIMESTAMP(6)  
//	PB_NO      NOT NULL NUMBER        
//	MEMBER_ID  NOT NULL VARCHAR2(20)
	
	//변수 이름짓기
	private int prNo;
	private String prContent;
	private Timestamp prDate;
	private int pbNo;
	private String memberId;
	private int prRecommentCnt;
	
	//생성자
	public NtPlatingRecommentVo() {}
	
	public NtPlatingRecommentVo(int prNo, String prContent, Timestamp prDate, int pbNo, String memberId, int prRecommentCnt) {
		super();
		this.prNo = prNo;
		this.prContent = prContent;
		this.prDate = prDate;
		this.pbNo = pbNo;
		this.memberId = memberId;
		this.prRecommentCnt = prRecommentCnt;
	}
	//toString
	@Override
	public String toString() {
		return "NtPlatingRecommentVo [prNo=" + prNo + ", prContent=" + prContent + ", prDate=" + prDate + ", pbNo="
				+ pbNo + ", memberId=" + memberId + ", prRecommentCnt=" + prRecommentCnt + "]";
	}

	//게터세터
	public int getPrNo() {
		return prNo;
	}

	public void setPrNo(int prNo) {
		this.prNo = prNo;
	}
	public String getPrContent() {
		return prContent;
	}
	public void setPrContent(String prContent) {
		this.prContent = prContent;
	}
	public Timestamp getPrDate() {
		return prDate;
	}
	public void setPrDate(Timestamp prDate) {
		this.prDate = prDate;
	}
	public int getPbNo() {
		return pbNo;
	}
	public void setPbNo(int pbNo) {
		this.pbNo = pbNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getPrRecommentCnt() {
		return prRecommentCnt;
	}

	public void setPrRecommentCnt(int prRecommentCnt) {
		this.prRecommentCnt = prRecommentCnt;
	}
	
	
	
	
	

}
