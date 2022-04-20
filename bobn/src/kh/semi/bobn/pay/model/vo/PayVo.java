package kh.semi.bobn.pay.model.vo;

import java.sql.Timestamp;

public class PayVo {

	private int payNumber;
	private String orderNumber;
	private String payName;
	private Timestamp payDate;
	private int payTotal;
	private int payMethod;
	private String memberId;
	
	public PayVo() {
		super();
		}
	
	@Override
	public String toString() {
		return "PayVo [payNumber=" + payNumber + ", orderNumber=" + orderNumber + ", payName=" + payName + ""
				+ ", payDate=" + payDate + ", payTotal=" + payTotal + ", payMethod=" + payMethod + ""
				+ ", memberId=" + memberId + "]";
	}
	
	
	public int setpayNumber() {
		return payNumber;
	}
	public void setpayNumber(int payNumber) {
		this.payNumber = payNumber;
	}
	public String setorderNumber() {
		return orderNumber;
	}
	public void setorderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public String setpayName() {
		return payName;
	}
	public void setpayName(String payName) {
		this.payName = payName;
	}
	public Timestamp setpayDate() {
		return payDate;
	}
	public void setpayDate(Timestamp payDate) {
		this.payDate = payDate;		
	}
	public int setpayTotal() {
		return payTotal;
	}
	public void setpayTotal(int payTotal) {
		this.payTotal = payTotal;				
	}
	public int setpayMethod() {
		return payMethod;
	}
	public void setpayMethod(int payMethod) {
		this.payMethod = payMethod;			
	}
	public String setmemberId() {
		return memberId;
	}
	public void setmemberId(String memberId) {
		this.memberId = memberId;					
	}
	

	
}
