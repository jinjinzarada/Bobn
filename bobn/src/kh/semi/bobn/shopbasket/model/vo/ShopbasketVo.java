package kh.semi.bobn.shopbasket.model.vo;

public class ShopbasketVo {

	private String pId;
	private String memberId;
	private int basketAmount;
	
	public ShopbasketVo() {
		super();
		}
	
	@Override
	public String toString() {
		return "ShoppingVo [pId=" + pId + ", memberId=" + memberId + ", basketAmount=" + basketAmount + "]";
	}
	public String getpId() {
		return pId;
	}
	public void setpId(String pId) {
		this.pId = pId;
	}
	public String getmemberId() {
		return memberId;
	}
	public void setmemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getbasketAmount() {
		return basketAmount;
	}
	public void setbasketAmount(int basketAmount) {
		this.basketAmount = basketAmount;		
	}

}
