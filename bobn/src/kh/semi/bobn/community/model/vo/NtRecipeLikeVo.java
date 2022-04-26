package kh.semi.bobn.community.model.vo;

public class NtRecipeLikeVo {
	
	//오라클-DESC NTRL;
//	MEMBER_ID NOT NULL VARCHAR2(20) 
//	RB_NO     NOT NULL NUMBER  
	
	//변수 이름짓기
	private String memberId;
	private int rbNo;
	
	//생성자
	public NtRecipeLikeVo() {}
	
	public NtRecipeLikeVo(String memberId, int rbNo) {
		super();
		this.memberId = memberId;
		this.rbNo = rbNo;
	}
	
	//toString
	@Override
	public String toString() {
		return "NtRecipeLikeVo [memberId=" + memberId + ", rbNo=" + rbNo + "]";
	}

	//게터세터
	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getRbNo() {
		return rbNo;
	}

	public void setRbNo(int rbNo) {
		this.rbNo = rbNo;
	}
	
	
	
	
	

}
