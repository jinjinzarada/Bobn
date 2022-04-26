package kh.semi.bobn.community.model.vo;

public class NtContestLikeVo {
	
	//오라클-DESC NTCL;
//	MEMBER_ID NOT NULL VARCHAR2(20) 
//	CB_NO     NOT NULL NUMBER   
	
	//변수 이름짓기
	private String memberId;
	private int cbNo;
	
	//생성자
	public NtContestLikeVo() {}
	public NtContestLikeVo(String memberId, int cbNo) {
		super();
		this.memberId = memberId;
		this.cbNo = cbNo;
	}
	
	//toString
	@Override
	public String toString() {
		return "NtContestLikeVo [memberId=" + memberId + ", cbNo=" + cbNo + "]";
	}
	
	//게터세터
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getCbNo() {
		return cbNo;
	}
	public void setCbNo(int cbNo) {
		this.cbNo = cbNo;
	}
	
	
	
	

}
