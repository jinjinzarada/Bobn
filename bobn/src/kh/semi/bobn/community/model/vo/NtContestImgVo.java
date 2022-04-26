package kh.semi.bobn.community.model.vo;

public class NtContestImgVo {
	
	//오라클-DESC NTCI;
//	CI_NO   NOT NULL NUMBER        
//	CI_FILE NOT NULL VARCHAR2(300) 
//	CB_NO   NOT NULL NUMBER 

	//변수 이름짓기
	private int ciNo;
	private String ciFile;
	private int cbNo;
	
	//생성자
	public NtContestImgVo() {}
	
	public NtContestImgVo(int ciNo, String ciFile, int cbNo) {
		super();
		this.ciNo = ciNo;
		this.ciFile = ciFile;
		this.cbNo = cbNo;
	}

	//toString
	@Override
	public String toString() {
		return "NtContestImgVo [ciNo=" + ciNo + ", ciFile=" + ciFile + ", cbNo=" + cbNo + "]";
	}

	//게터세터
	public int getCiNo() {
		return ciNo;
	}

	public void setCiNo(int ciNo) {
		this.ciNo = ciNo;
	}

	public String getCiFile() {
		return ciFile;
	}

	public void setCiFile(String ciFile) {
		this.ciFile = ciFile;
	}

	public int getCbNo() {
		return cbNo;
	}

	public void setCbNo(int cbNo) {
		this.cbNo = cbNo;
	}
	
	
	
	
	
	
}
