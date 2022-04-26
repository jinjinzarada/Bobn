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
		return "PayVo [payNumber=" + payNumber + ", orderNumber=" + orderNumber + ", payName=" + payName + ", payDate="
				+ payDate + ", payTotal=" + payTotal + ", payMethod=" + payMethod + ", memberId=" + memberId + "]";
	}

	public int getPayNumber() {
		return payNumber;
	}

	public void setPayNumber(int payNumber) {
		this.payNumber = payNumber;
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public String getPayName() {
		return payName;
	}

	public void setPayName(String payName) {
		this.payName = payName;
	}

	public Timestamp getPayDate() {
		return payDate;
	}

	public void setPayDate(Timestamp payDate) {
		this.payDate = payDate;
	}

	public int getPayTotal() {
		return payTotal;
	}

	public void setPayTotal(int payTotal) {
		this.payTotal = payTotal;
	}

	public int getPayMethod() {
		return payMethod;
	}

	public void setPayMethod(int payMethod) {
		this.payMethod = payMethod;
	}

	public String getMemberId() {
		return memberId;
	}

	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


}
