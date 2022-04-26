package kh.semi.bobn.shopbasket.model.vo;

public class ShopbasketVo {

	private String pId;
	private String memberId;
	private int basketitemAmount;
	
	@Override
	public String toString() {
		return "ShopbasketVo [pId=" + pId + ", memberId=" + memberId + ", basketitemAmount=" + basketitemAmount + "]";
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
	
	

	
}
