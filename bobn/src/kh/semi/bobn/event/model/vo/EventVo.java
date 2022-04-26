package kh.semi.bobn.event.model.vo;

public class EventVo {
	
	//ev_content table
//	E_NO        NOT NULL NUMBER         
//	E_POSTDATE  NOT NULL TIMESTAMP(6)   
//	E_TITLE     NOT NULL VARCHAR2(300)  
//	E_CONTENT   NOT NULL VARCHAR2(3900) 
//	E_STARTDATE NOT NULL DATE           
//	E_ENDDATE   NOT NULL DATE      
	
	//ev_content_image table
//	EVC_IMAGENO    NOT NULL NUMBER        
//	E_NO           NOT NULL NUMBER        
//	EVC_IMAGEROUTE NOT NULL VARCHAR2(300) 
	
	private int eNo;
	private String ePostDate;
	private String eTitle;
	private String eContent;
	private String String;
	private String eStartDate;
	private String eEndDate;

	private int eImageNo;
	private String eImageRoute;
	
	@Override
	public String toString() {
		return "EventVo [eNo=" + eNo + ", ePostDate=" + ePostDate + ", eTitle=" + eTitle + ", eContent=" + eContent
				+ ", String=" + String + ", eStartDate=" + eStartDate + ", eEndDate=" + eEndDate + ", eImageNo="
				+ eImageNo + ", eImageRoute=" + eImageRoute + "]";
	}

	public int geteNo() {
		return eNo;
	}

	public void seteNo(int eNo) {
		this.eNo = eNo;
	}

	public String getePostDate() {
		return ePostDate;
	}

	public void setePostDate(String ePostDate) {
		this.ePostDate = ePostDate;
	}

	public String geteTitle() {
		return eTitle;
	}

	public void seteTitle(String eTitle) {
		this.eTitle = eTitle;
	}

	public String geteContent() {
		return eContent;
	}

	public void seteContent(String eContent) {
		this.eContent = eContent;
	}

	public String getString() {
		return String;
	}

	public void setString(String string) {
		String = string;
	}

	public String geteStartDate() {
		return eStartDate;
	}

	public void seteStartDate(String eStartDate) {
		this.eStartDate = eStartDate;
	}

	public String geteEndDate() {
		return eEndDate;
	}

	public void seteEndDate(String eEndDate) {
		this.eEndDate = eEndDate;
	}

	public int geteImageNo() {
		return eImageNo;
	}

	public void seteImageNo(int eImageNo) {
		this.eImageNo = eImageNo;
	}

	public String geteImageRoute() {
		return eImageRoute;
	}

	public void seteImageRoute(String eImageRoute) {
		this.eImageRoute = eImageRoute;
	}
}
