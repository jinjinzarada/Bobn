package kh.semi.bobn.community.model.vo;

public class NtPlatingLikeVo {
	
	//오라클-DESC NTPL;
//	MEMBER_ID NOT NULL VARCHAR2(20) 
//	PB_NO     NOT NULL NUMBER  
	
	//변수 이름짓기
	private String memberId;
	private int pbNo;
	
	//생성자
	public NtPlatingLikeVo() {}
	
	public NtPlatingLikeVo(String memberId, int pbNo) {
		super();
		this.memberId = memberId;
		this.pbNo = pbNo;
	}
	//toString
	@Override
	public String toString() {
		return "NtPlatingLikeVo [memberId=" + memberId + ", pbNo=" + pbNo + "]";
	}

	//게터세터
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getPbNo() {
		return pbNo;
	}

	public void setPbNo(int pbNo) {
		this.pbNo = pbNo;
	}
	
	
	
	
	

}
