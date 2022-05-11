package kh.semi.bobn.curation.model.vo;

public class RecipeImageVo {
//	CRRECIPECOTENTIMAGE_NO    NOT NULL NUMBER        
//	CRRECONTENT_NO            NOT NULL NUMBER        
//	CRRECONTENTIMAGE_LOCATION NOT NULL VARCHAR2(300) 
	
	private int imgNo;
	private String imgLoc;
	private int rNo;
	@Override
	public String toString() {
		return "RecipeImageVo [imgNo=" + imgNo + ", imgLoc=" + imgLoc + ", rNo=" + rNo + "]";
	}
	public int getImgNo() {
		return imgNo;
	}
	public void setImgNo(int imgNo) {
		this.imgNo = imgNo;
	}
	public String getImgLoc() {
		return imgLoc;
	}
	public void setImgLoc(String imgLoc) {
		this.imgLoc = imgLoc;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	
	
	
	
}
