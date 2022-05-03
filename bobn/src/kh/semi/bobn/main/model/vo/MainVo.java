package kh.semi.bobn.main.model.vo;

public class MainVo {

//product
	//P_ID         NOT NULL VARCHAR2(20)   
	//P_NAME       NOT NULL VARCHAR2(100)  
	//P_CATEGORY   NOT NULL NUMBER         
	//P_PRICE      NOT NULL NUMBER         
	//P_SELLAMOUNT NOT NULL NUMBER         
	//P_WEIGHT              NUMBER         
	//P_CALORIE             NUMBER         
	//P_FLAVOR              VARCHAR2(20)   
	//P_POSTDATE   NOT NULL TIMESTAMP(6)   
	//P_SALECHECK  NOT NULL CHAR(1)        
	//P_DETAIL     NOT NULL VARCHAR2(3900) 
	
//detail_image (쇼핑 이미지)
	//P_ID   NOT NULL VARCHAR2(20)  
	//D_FILE NOT NULL VARCHAR2(300) 
	
//cr_recipe_content 큐레이션 - 레시피 
	//CRRECONTENT_NO       NOT NULL NUMBER         
	//CRRECONTENT_POSTDATE NOT NULL TIMESTAMP(6)   
	//CRRECONTENT_TITLE    NOT NULL VARCHAR2(300)  
	//CRRECONTENT_CONTENT  NOT NULL VARCHAR2(3900) 
	
//cr_recipe_content_image 큐레이션 - 레시피 이미지 
	//CRRECIPECOTENTIMAGE_NO    NOT NULL NUMBER        
	//CRRECONTENT_NO            NOT NULL NUMBER        
	//CRRECONTENTIMAGE_LOCATION NOT NULL VARCHAR2(300) 
	
//ntpc (플레이팅 게시글)
	//PB_NO      NOT NULL NUMBER         
	//PB_CONCEPT NOT NULL VARCHAR2(20)   
	//PB_TITLE   NOT NULL VARCHAR2(300)  
	//PB_CONTENT NOT NULL VARCHAR2(3900) 
	//PB_DATE    NOT NULL TIMESTAMP(6)   
	//MEMBER_ID  NOT NULL VARCHAR2(20)

//ntpi (플레이팅 이미지)
	//PI_NO   NOT NULL NUMBER        
	//PI_FILE NOT NULL VARCHAR2(300) 
	//PB_NO   NOT NULL NUMBER  
	
	private String loginId;
	private String loginPwd;
	private String pId;
	private int pCategory;
	private String pName;
	private String dFile;
	private String pPrice;
	private int crNo;
	private String crTitle;
	private String crImgLoc;
	private int pbNo;
	private String pbTitle;
	private String pbImgLoc;
	
	@Override
	public String toString() {
		return "MainVo [loginId=" + loginId + ", loginPwd=" + loginPwd + ", pId=" + pId + ", pCategory=" + pCategory
				+ ", pName=" + pName + ", dFile=" + dFile + ", pPrice=" + pPrice + ", crNo=" + crNo + ", crTitle="
				+ crTitle + ", crImgLoc=" + crImgLoc + ", pbNo=" + pbNo + ", pbTitle=" + pbTitle + ", pbImgLoc="
				+ pbImgLoc + "]";
	}

	public String getLoginId() {
		return loginId;
	}

	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}

	public String getLoginPwd() {
		return loginPwd;
	}

	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public int getpCategory() {
		return pCategory;
	}

	public void setpCategory(int pCategory) {
		this.pCategory = pCategory;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getdFile() {
		return dFile;
	}

	public void setdFile(String dFile) {
		this.dFile = dFile;
	}

	public String getpPrice() {
		return pPrice;
	}

	public void setpPrice(String pPrice) {
		this.pPrice = pPrice;
	}

	public int getCrNo() {
		return crNo;
	}

	public void setCrNo(int crNo) {
		this.crNo = crNo;
	}

	public String getCrTitle() {
		return crTitle;
	}

	public void setCrTitle(String crTitle) {
		this.crTitle = crTitle;
	}

	public String getCrImgLoc() {
		return crImgLoc;
	}

	public void setCrImgLoc(String crImgLoc) {
		this.crImgLoc = crImgLoc;
	}

	public int getPbNo() {
		return pbNo;
	}

	public void setPbNo(int pbNo) {
		this.pbNo = pbNo;
	}

	public String getPbTitle() {
		return pbTitle;
	}

	public void setPbTitle(String pbTitle) {
		this.pbTitle = pbTitle;
	}

	public String getPbImgLoc() {
		return pbImgLoc;
	}

	public void setPbImgLoc(String pbImgLoc) {
		this.pbImgLoc = pbImgLoc;
	}
}
