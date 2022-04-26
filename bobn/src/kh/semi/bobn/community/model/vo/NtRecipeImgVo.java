package kh.semi.bobn.community.model.vo;

public class NtRecipeImgVo {
	
	//오라클-DESC NTRI;
//	RI_NO   NOT NULL NUMBER        
//	RI_FILE NOT NULL VARCHAR2(300) 
//	RB_NO   NOT NULL NUMBER   
	
	//변수 이름짓기
	private int riNo;
	private String riFile;
	private int rbNo;
	
	//생성자
	public NtRecipeImgVo() {}
	
	public NtRecipeImgVo(int riNo, String riFile, int rbNo) {
		super();
		this.riNo = riNo;
		this.riFile = riFile;
		this.rbNo = rbNo;
	}
	
	//toString
	@Override
	public String toString() {
		return "NtRecipeImgVo [riNo=" + riNo + ", riFile=" + riFile + ", rbNo=" + rbNo + "]";
	}

	//게터세터
	public int getRiNo() {
		return riNo;
	}

	public void setRiNo(int riNo) {
		this.riNo = riNo;
	}

	public String getRiFile() {
		return riFile;
	}

	public void setRiFile(String riFile) {
		this.riFile = riFile;
	}

	public int getRbNo() {
		return rbNo;
	}

	public void setRbNo(int rbNo) {
		this.rbNo = rbNo;
	}
	
	
	
	
	
	
	
	

}
