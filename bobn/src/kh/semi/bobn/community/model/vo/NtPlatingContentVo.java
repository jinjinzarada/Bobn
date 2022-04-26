package kh.semi.bobn.community.model.vo;

import java.sql.Timestamp;

public class NtPlatingContentVo {
	
	//오라클-DESC NTPC;
//	PB_NO      NOT NULL NUMBER         
//	PB_CONCEPT NOT NULL VARCHAR2(20)   
//	PB_TITLE   NOT NULL VARCHAR2(300)  
//	PB_CONTENT NOT NULL VARCHAR2(3900) 
//	PB_DATE    NOT NULL TIMESTAMP(6)   
//	MEMBER_ID  NOT NULL VARCHAR2(20) 
	
	//변수 이름짓기
	private int pbNo;
	private String pbConcept;
	private String pbTitle;
	private String pbContent;
	private Timestamp pbDate;
	private String memberId;
	
	//생성자
	public NtPlatingContentVo(){}
	
	public NtPlatingContentVo(int pbNo, String pbConcept, String pbTitle, String pbContent, Timestamp pbDate,
			String memberId) {
		super();
		this.pbNo = pbNo;
		this.pbConcept = pbConcept;
		this.pbTitle = pbTitle;
		this.pbContent = pbContent;
		this.pbDate = pbDate;
		this.memberId = memberId;
	}

	//toString
	@Override
	public String toString() {
		return "NtPlatingContentVo [pbNo=" + pbNo + ", pbConcept=" + pbConcept + ", pbTitle=" + pbTitle + ", pbContent="
				+ pbContent + ", pbDate=" + pbDate + ", memberId=" + memberId + "]";
	}

	//게터세터
	public int getPbNo() {
		return pbNo;
	}

	public void setPbNo(int pbNo) {
		this.pbNo = pbNo;
	}

	public String getPbConcept() {
		return pbConcept;
	}

	public void setPbConcept(String pbConcept) {
		this.pbConcept = pbConcept;
	}

	public String getPbTitle() {
		return pbTitle;
	}

	public void setPbTitle(String pbTitle) {
		this.pbTitle = pbTitle;
	}

	public String getPbContent() {
		return pbContent;
	}

	public void setPbContent(String pbContent) {
		this.pbContent = pbContent;
	}

	public Timestamp getPbDate() {
		return pbDate;
	}

	public void setPbDate(Timestamp pbDate) {
		this.pbDate = pbDate;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	
	
	
	
	
	
	
	
}