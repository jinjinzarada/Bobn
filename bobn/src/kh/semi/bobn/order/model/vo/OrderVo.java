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
		return "OrderVo [orderNumber=" + orderNumber + ", orderContact=" + orderContact + ", orderRequest="
				+ orderRequest + ", orderDate=" + orderDate + ", orderStatus=" + orderStatus + ", payTotal=" + payTotal
				+ ", payMethod=" + payMethod + ", memberId=" + memberId + ", orderDelivery=" + orderDelivery + "]";
	}

	public String getOrderNumber() {
		return orderNumber;
	}

	public void setOrderNumber(String orderNumber) {
		this.orderNumber = orderNumber;
	}

	public int getOrderContact() {
		return orderContact;
	}

	public void setOrderContact(int orderContact) {
		this.orderContact = orderContact;
	}

	public String getOrderRequest() {
		return orderRequest;
	}

	public void setOrderRequest(String orderRequest) {
		this.orderRequest = orderRequest;
	}

	public Timestamp getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Timestamp orderDate) {
		this.orderDate = orderDate;
	}

	public String getOrderStatus() {
		return orderStatus;
	}

	public void setOrderStatus(String orderStatus) {
		this.orderStatus = orderStatus;
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

	public String getOrderDelivery() {
		return orderDelivery;
	}

	public void setOrderDelivery(String orderDelivery) {
		this.orderDelivery = orderDelivery;
	}
	
	
}
