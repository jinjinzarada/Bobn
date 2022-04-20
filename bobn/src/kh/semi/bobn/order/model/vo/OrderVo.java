package kh.semi.bobn.order.model.vo;

import java.sql.Timestamp;

public class OrderVo {

	private String orderNumber;
	private int orderContact;
	private String orderRequest;
	private Timestamp orderDate;
	private String orderStatus;
	private int payTotal;
	private int payMethod;
	private String memberId;
	private String orderDelivery;
	
	public OrderVo() {
		super();
		}
	
	@Override
	public String toString() {
		return "OrderVo [orderNumber=" + orderNumber + ", orderContact=" + orderContact + ", orderRequest=" + orderRequest + ""
				+ ", orderDate=" + orderDate + ", orderStatus=" + orderStatus + ", payTotal=" + payTotal + ""
				+ ", payMethod=" + payMethod + ", memberId=" + memberId + ", orderDelivery=" + orderDelivery + "]";
	}
	
	
	public String getorderNumber() {
		return orderNumber;
	}
	public void setorderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}
	public int getorderContact() {
		return orderContact;
	}
	public void setorderContact(int orderContact) {
		this.orderContact = orderContact;		
	}
	public String getorderRequest() {
		return orderRequest;
	}
	public void setorderRequest(String orderRequest) {
		this.orderRequest = orderRequest;			
	}
	public Timestamp getorderDate() {
		return orderDate;
	}
	public void setorderDate(Timestamp orderDate) {
		this.orderDate = orderDate;			
	}
	public String getorderStatus() {
		return orderStatus;
	}
	public void setorderStatus(String orderStatus) {
		this.orderStatus = orderStatus;					
	}
	public int getpayTotal() {
		return payTotal;
	}
	public void setpayTotal(int payTotal) {
		this.payTotal = payTotal;					
	}
	public int getpayMethod() {
		return payMethod;
	}
	public void setpayMethod(int payMethod) {
		this.payMethod = payMethod;			
	}
	public String getmemberId() {
		return memberId;
	}
	public void setmemberId(String memberId) {
		this.memberId = memberId;				
	}
	public String getorderDelivery() {
		return orderDelivery;
	}
	public void setorderDelivery(String orderDelivery) {
		this.orderDelivery = orderDelivery;					
	}

}
