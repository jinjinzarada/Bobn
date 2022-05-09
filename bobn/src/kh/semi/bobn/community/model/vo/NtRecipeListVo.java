package kh.semi.bobn.community.model.vo;

public class NtRecipeListVo {
	
	//오라클-DESC NTPC;
//	RB_NO      NOT NULL NUMBER         
//	RB_CONCEPT NOT NULL VARCHAR2(20)   
//	RB_TITLE   NOT NULL VARCHAR2(300)  
//	RB_CONTENT NOT NULL VARCHAR2(3900) 
//	RB_DATE    NOT NULL TIMESTAMP(6)   
//	MEMBER_ID  NOT NULL VARCHAR2(20) 
	
	//오라클-DESC NTPI;
//	RI_NO   NOT NULL NUMBER        
//	RI_FILE NOT NULL VARCHAR2(300) 
//	RB_NO   NOT NULL NUMBER   
	
	//변수 이름짓기
	private int rbNo;
	private String rbTitle;
	private String rbContent;
	private String rbConcept;
	private String memberId;
	private String riFile;
	
	//생성자
	public NtRecipeListVo() {}
	public NtRecipeListVo(int rbNo, String rbTitle, String rbContent, String rbConcept, String memberId,
			String riFile) {
		super();
		this.rbNo = rbNo;
		this.rbTitle = rbTitle;
		this.rbContent = rbContent;
		this.rbConcept = rbConcept;
		this.memberId = memberId;
		this.riFile = riFile;
	}

	//toString
	@Override
	public String toString() {
		return "NtRecipeListVo [rbNo=" + rbNo + ", rbTitle=" + rbTitle + ", rbContent=" + rbContent + ", rbConcept="
				+ rbConcept + ", memberId=" + memberId + ", riFile=" + riFile + "]";
	}
	
	//게터세터
	public int getRbNo() {
		return rbNo;
	}
	public void setRbNo(int rbNo) {
		this.rbNo = rbNo;
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
	public String getRbConcept() {
		return rbConcept;
	}
	public void setRbConcept(String rbConcept) {
		this.rbConcept = rbConcept;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getRiFile() {
		return riFile;
	}
	public void setRiFile(String riFile) {
		this.riFile = riFile;
	}
	
	
	
	
	
	
	

}
