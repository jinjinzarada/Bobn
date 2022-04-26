package kh.semi.bobn.shopbasket.model.vo;

public class ShopbasketdeskVo {

	private String pName;
	private String pOption;
	private int pPrice;
	private int pNumber;
	private int pTotalprice;
	private int pDeliprice;
	private int payTotal;

	@Override
	public String toString() {
		return "ShopbasketdeskVo [pName=" + pName + ", pOption=" + pOption + ", pPrice=" + pPrice + ", pNumber="
				+ pNumber + ", pTotalprice=" + pTotalprice + ", pDeliprice=" + pDeliprice + ", payTotal=" + payTotal
				+ "]";
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public String getpOption() {
		return pOption;
	}

	public void setpOption(String pOption) {
		this.pOption = pOption;
	}

	public int getpPrice() {
		return pPrice;
	}

	public void setpPrice(int pPrice) {
		this.pPrice = pPrice;
	}

	public int getpNumber() {
		return pNumber;
	}

	public void setpNumber(int pNumber) {
		this.pNumber = pNumber;
	}

	public int getpTotalprice() {
		return pTotalprice;
	}

	public void setpTotalprice(int pTotalprice) {
		this.pTotalprice = pTotalprice;
	}

	public int getpDeliprice() {
		return pDeliprice;
	}

	public void setpDeliprice(int pDeliprice) {
		this.pDeliprice = pDeliprice;
	}

	public int getPayTotal() {
		return payTotal;
	}

	public void setPayTotal(int payTotal) {
		this.payTotal = payTotal;
	}

}
