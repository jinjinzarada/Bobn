package kh.semi.bobn.shopping.model.vo;

import java.sql.Timestamp;

public class ShoppingVo {

	private String pId;
	private String pName;
	private int pCategory;
	private int pPrice;
	private int pSellamount;
	private int pWeight;
	private int pCalorie;
	private String pFlavor;
	private Timestamp pPostDate;
	private String pSaleCheck;
	private String pDetail;
	
	
	public ShoppingVo() {
	super();
	}
//	public ShoppingVo(String bTitle, String bContent) {
//		this.bTitle = bTitle;
//		this.bContent = bContent;
//	}
//	public ShoppingVo(int bNo, String bTitle, String bContent, int bCount, Timestamp bWriteDate, String bWriter,
//			String mId, int reCommentCnt) {
//		super();
//		this.pId = pId;
//		this.pName = pName;
//		this.pCategory = pCategory;
//		this.pPrice = pPrice;
//		this.pSellamount = pSellamount;
//		this.pWeight = pWeight;
//		this.pCalorie = pCalorie;
//		this.pFlavor = pFlavor;
//		this.pPostDate = pPostDate;
//		this.pSaleCheck = pSaleCheck;
//		this.pDetail = pDetail;	
		
//	}
	
	@Override
	public String toString() {
		return "ShoppingVo [pId=" + pId + ", pName=" + pName + ", pCategory=" + pCategory + ", pPrice=" + pPrice
				+ ", pSellamount=" + pSellamount + ", pWeight=" + pWeight + ", pCalorie=" + pCalorie + ", pFlavor="
				+ pFlavor + ", pPostDate=" + pPostDate + ", pSaleCheck=" + pSaleCheck + ", pDetail=" + pDetail + "]";
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	public int getpCategory() {
		return pCategory;
	}
	public void setpCategory(int pCategory) {
		this.pCategory = pCategory;
	}
	public int getpPrice() {
		return pPrice;
	}
	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}
	public int getpSellamount() {
		return pSellamount;
	}
	public void setpSellamount(int pSellamount) {
		this.pSellamount = pSellamount;
	}
	public int getpWeight() {
		return pWeight;
	}
	public void setpWeight(int pWeight) {
		this.pWeight = pWeight;
	}
	public int getpCalorie() {
		return pCalorie;
	}
	public void setpCalorie(int pCalorie) {
		this.pCalorie = pCalorie;
	}
	public String getpFlavor() {
		return pFlavor;
	}
	public void setpFlavor(String pFlavor) {
		this.pFlavor = pFlavor;
	}
	public Timestamp getpPostDate() {
		return pPostDate;
	}
	public void setpPostDate(Timestamp pPostDate) {
		this.pPostDate = pPostDate;		
	}
	public String getpSaleCheck() {
		return pSaleCheck;
	}
	public void setpSaleCheck(String pSaleCheck) {
		this.pSaleCheck = pSaleCheck;				
	}
	public String getpDetail() {
		return pDetail;
	}
	public void setpDetail(String pDetail) {
		this.pDetail = pDetail;			
	}
	
}
