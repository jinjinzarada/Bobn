package kh.semi.bobn.curation.model.vo;

public class RecipeVo {
	//CRRECONTENT_NO       NOT NULL NUMBER         
	//CRRECONTENT_POSTDATE NOT NULL TIMESTAMP(6)   
	//CRRECONTENT_TITLE    NOT NULL VARCHAR2(300)  
	//CRRECONTENT_CONTENT  NOT NULL VARCHAR2(3900)
	//CRRECONTENT_CONCEPT  NOT NULL number
	
	//CRRECIPECOTENTIMAGE_NO    NOT NULL NUMBER        
	//CRRECONTENT_NO            NOT NULL NUMBER        
	//CRRECONTENTIMAGE_LOCATION NOT NULL VARCHAR2(300) 
	
	private int rNo;	
	private String rdate;
	private String rTitle;
	private String rContent;
	private String rConcept;
	private String rImgloc;
	
	
	
	public RecipeVo(int rNo, String rdate, String rTitle, String rContent, String rConcept, String rImgloc) {
		super();
		this.rNo = rNo;
		this.rdate = rdate;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rConcept = rConcept;
		this.rImgloc = rImgloc;
	}

	public RecipeVo() {
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "RecipeVo [rNo=" + rNo + ", rdate=" + rdate + ", rTitle=" + rTitle + ", rContent=" + rContent
				+ ", rConcept=" + rConcept + ", rImgloc=" + rImgloc + "]";
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getRdate() {
		return rdate;
	}

	public void setRdate(String rdate) {
		this.rdate = rdate;
	}

	public String getrTitle() {
		return rTitle;
	}

	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public String getrConcept() {
		return rConcept;
	}

	public void setrConcept(String rConcept) {
		this.rConcept = rConcept;
	}

	public String getrImgloc() {
		return rImgloc;
	}

	public void setrImgloc(String rImgloc) {
		this.rImgloc = rImgloc;
	}
	
	
	
	
	
}
