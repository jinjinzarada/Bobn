package kh.semi.bobn.community.model.vo;

import java.sql.Timestamp;

public class NtContestListVo {
	
	//오라클-DESC NTCC;
//	CB_NO      NOT NULL NUMBER        
//	CB_TITLE   NOT NULL VARCHAR2(60)  
//	CB_CONTENT NOT NULL VARCHAR2(900) 
//	CB_DATE    NOT NULL TIMESTAMP(6)  
//	MEMBER_ID  NOT NULL VARCHAR2(20)
	
	//오라클-DESC NTCI;
//	CI_NO   NOT NULL NUMBER        
//	CI_FILE NOT NULL VARCHAR2(300) 
//	CB_NO   NOT NULL NUMBER 

	//변수 이름짓기
	private int cbNo;
	private String cbTitle;
	private String cbContent;
	private Timestamp cbDate;
	private String memberId;
	private String ciFile;
	
	//생성자
	public NtContestListVo() {}
	public NtContestListVo(int cbNo, String cbTitle, String cbContent, Timestamp cbDate, String memberId,
			String ciFile) {
		super();
		this.cbNo = cbNo;
		this.cbTitle = cbTitle;
		this.cbContent = cbContent;
		this.cbDate = cbDate;
		this.memberId = memberId;
		this.ciFile = ciFile;
	}



	//toString
	@Override
	public String toString() {
		return "NtContestListVo [cbNo=" + cbNo + ", cbTitle=" + cbTitle + ", cbContent=" + cbContent + ", cbDate="
				+ cbDate + ", memberId=" + memberId + ", ciFile=" + ciFile + "]";
	}
	
	//게터세터
	public int getCbNo() {
		return cbNo;
	}
	public void setCbNo(int cbNo) {
		this.cbNo = cbNo;
	}
	public String getCbTitle() {
		return cbTitle;
	}
	public void setCbTitle(String cbTitle) {
		this.cbTitle = cbTitle;
	}
	public String getCbContent() {
		return cbContent;
	}
	public void setCbContent(String cbContent) {
		this.cbContent = cbContent;
	}
	public Timestamp getCbDate() {
		return cbDate;
	}
	public void setCbDate(Timestamp cbDate) {
		this.cbDate = cbDate;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getCiFile() {
		return ciFile;
	}
	public void setCiFile(String ciFile) {
		this.ciFile = ciFile;
	}
	

	
	
	
	
}
