package kh.semi.bobn.community.model.vo;

public class NtPlatingImgVo {
	
	//오라클-DESC NTPI;
//	PI_NO   NOT NULL NUMBER        
//	PI_FILE NOT NULL VARCHAR2(300) 
//	PB_NO   NOT NULL NUMBER 
	
	//변수 이름짓기
	private int piNo;
	private String piFile;
	private int pbNo;
	
	//생성자
	public NtPlatingImgVo() {}
	
	public NtPlatingImgVo(int piNo, String piFile, int pbNo) {
		super();
		this.piNo = piNo;
		this.piFile = piFile;
		this.pbNo = pbNo;
	}

	//toString
	@Override
	public String toString() {
		return "NtPlatingImgVo [piNo=" + piNo + ", piFile=" + piFile + ", pbNo=" + pbNo + "]";
	}

	//게터세터
	public int getPiNo() {
		return piNo;
	}

	public void setPiNo(int piNo) {
		this.piNo = piNo;
	}

	public String getPiFile() {
		return piFile;
	}

	public void setPiFile(String piFile) {
		this.piFile = piFile;
	}

	public int getPbNo() {
		return pbNo;
	}

	public void setPbNo(int pbNo) {
		this.pbNo = pbNo;
	}
	
	
	
	
	
	

}
