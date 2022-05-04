package kh.semi.bobn.shopbasket.model.vo;

import java.sql.Timestamp;

public class ShopbasketVo {

	private String pId;
	private String memberId;
	private int basketitemAmount;
	
	private String p_name;
	private int p_category;
	private int p_price;
	private int  p_sellamount;
	private int p_weight;
	private int p_calorie;
	private String p_flavor;
	private Timestamp p_postdate;
	private String p_salecheck;
	private String p_detail;
	
//	Delivery
	private String orderNumber;
	private Timestamp dDate;
	private String  dCompany;
	private int dNumber;
	private int dStatus;
	private String dType;
	
//  file	
	private String d_file;

	@Override
	public String toString() {
		return "ShopbasketVo [pId=" + pId + ", memberId=" + memberId + ", basketitemAmount=" + basketitemAmount
				+ ", p_name=" + p_name + ", p_category=" + p_category + ", p_price=" + p_price + ", p_sellamount="
				+ p_sellamount + ", p_weight=" + p_weight + ", p_calorie=" + p_calorie + ", p_flavor=" + p_flavor
				+ ", p_postdate=" + p_postdate + ", p_salecheck=" + p_salecheck + ", p_detail=" + p_detail
				+ ", orderNumber=" + orderNumber + ", dDate=" + dDate + ", dCompany=" + dCompany + ", dNumber="
				+ dNumber + ", dStatus=" + dStatus + ", dType=" + dType + ", d_file=" + d_file + "]";
	}

	public String getpId() {
		return pId;
	}

	public void setpId(String pId) {
		this.pId = pId;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}

	public int getBasketitemAmount() {
		return basketitemAmount;
	}

	public void setBasketitemAmount(int basketitemAmount) {
		this.basketitemAmount = basketitemAmount;
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public int getP_category() {
		return p_category;
	}

	public void setP_category(int p_category) {
		this.p_category = p_category;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public int getP_sellamount() {
		return p_sellamount;
	}

	public void setP_sellamount(int p_sellamount) {
		this.p_sellamount = p_sellamount;
	}

	public int getP_weight() {
		return p_weight;
	}

	public void setP_weight(int p_weight) {
		this.p_weight = p_weight;
	}

	public int getP_calorie() {
		return p_calorie;
	}

	public void setP_calorie(int p_calorie) {
		this.p_calorie = p_calorie;
	}

	public String getP_flavor() {
		return p_flavor;
	}

	public void setP_flavor(String p_flavor) {
		this.p_flavor = p_flavor;
	}

	public Timestamp getP_postdate() {
		return p_postdate;
	}

	public void setP_postdate(Timestamp p_postdate) {
		this.p_postdate = p_postdate;
	}

	public String getP_salecheck() {
		return p_salecheck;
	}

	public void setP_salecheck(String p_salecheck) {
		this.p_salecheck = p_salecheck;
	}

	public String getP_detail() {
		return p_detail;
	}

	public void setP_detail(String p_detail) {
		this.p_detail = p_detail;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public Timestamp getdDate() {
		return dDate;
	}

	public void setdDate(Timestamp dDate) {
		this.dDate = dDate;
	}

	public String getdCompany() {
		return dCompany;
	}

	public void setdCompany(String dCompany) {
		this.dCompany = dCompany;
	}

	public int getdNumber() {
		return dNumber;
	}

	public void setdNumber(int dNumber) {
		this.dNumber = dNumber;
	}

	public int getdStatus() {
		return dStatus;
	}

	public void setdStatus(int dStatus) {
		this.dStatus = dStatus;
	}

	public String getdType() {
		return dType;
	}

	public void setdType(String dType) {
		this.dType = dType;
	}

	public String getD_file() {
		return d_file;
	}

	public void setD_file(String d_file) {
		this.d_file = d_file;
	}
	
}
