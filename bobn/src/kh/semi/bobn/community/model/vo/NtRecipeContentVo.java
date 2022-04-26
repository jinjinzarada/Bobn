package kh.semi.bobn.community.model.vo;

import java.sql.Timestamp;

public class NtRecipeContentVo {
	
	//오라클-DESC NTRC;
//	RB_NO      NOT NULL NUMBER         
//	RB_CONCEPT NOT NULL VARCHAR2(20)   
//	RB_TITLE   NOT NULL VARCHAR2(300)  
//	RB_CONTENT NOT NULL VARCHAR2(3900) 
//	RB_DATE    NOT NULL TIMESTAMP(6)   
//	MEMBER_ID  NOT NULL VARCHAR2(20) 
	
	//변수 이름짓기
	private int rbNo;
	private String rbConcept;
	private String rbTitle;
	private String rbContent;
	private Timestamp rbDate;
	private String memberId;
	
	//생성자
	public NtRecipeContentVo() {}
	
	public NtRecipeContentVo(int rbNo, String rbConcept, String rbTitle, String rbContent, Timestamp rbDate,
			String memberId) {
		super();
		this.rbNo = rbNo;
		this.rbConcept = rbConcept;
		this.rbTitle = rbTitle;
		this.rbContent = rbContent;
		this.rbDate = rbDate;
		this.memberId = memberId;
	}
	
	//toString
	@Override
	public String toString() {
		return "NtRecipeContentVo [rbNo=" + rbNo + ", rbConcept=" + rbConcept + ", rbTitle=" + rbTitle + ", rbContent="
				+ rbContent + ", rbDate=" + rbDate + ", memberId=" + memberId + "]";
	}
	
	//게터세터
	public int getRbNo() {
		return rbNo;
	}

	public void setRbNo(int rbNo) {
		this.rbNo = rbNo;
	}

	public String getRbConcept() {
		return rbConcept;
	}

	public void setRbConcept(String rbConcept) {
		this.rbConcept = rbConcept;
	}

	public String getRbTitle() {
		return rbTitle;
	}

	public void setRbTitle(String rbTitle) {
		this.rbTitle = rbTitle;
	}

	public String getRbContent() {
		return rbContent;
	}

	public void setRbContent(String rbContent) {
		this.rbContent = rbContent;
	}

	public Timestamp getRbDate() {
		return rbDate;
	}

	public void setRbDate(Timestamp rbDate) {
		this.rbDate = rbDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	
	
	
	
	

}
