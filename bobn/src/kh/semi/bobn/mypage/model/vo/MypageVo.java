package kh.semi.bobn.mypage.model.vo;

public class MypageVo {
	
	//member table
//	MEMBER_ID          NOT NULL VARCHAR2(20) 
//	MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//	MEMBER_NAME        NOT NULL VARCHAR2(20) 
//	MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//	MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//	MEMBER_GENDER      NOT NULL CHAR(1)      
//	MEMBER_BIRTHOFDATE NOT NULL DATE   
	
	
	//order_order table
//	ORDER_NUMBER   NOT NULL VARCHAR2(20)  
//	ORDER_CONTACT  NOT NULL NUMBER        
//	ORDER_REQUEST  NOT NULL VARCHAR2(150) 
//	ORDER_DATE     NOT NULL TIMESTAMP(6)  
//	ORDER_STATUS            VARCHAR2(30)  
//	PAY_TOTAL      NOT NULL NUMBER        
//	PAY_METHOD     NOT NULL NUMBER        
//	MEMBER_ID      NOT NULL VARCHAR2(20)  
//	ORDER_DELIVERY NOT NULL VARCHAR2(100) 

	//delivery table
//	ORDER_NUMBER NOT NULL VARCHAR2(20)  
//	D_DATE       NOT NULL TIMESTAMP(6)  
//	D_COMPANY    NOT NULL VARCHAR2(100) 
//	D_NUMBER     NOT NULL NUMBER        
//	D_STATUS     NOT NULL NUMBER        
//	D_TYPE       NOT NULL VARCHAR2(50)  
	
	private String loginId;
	private String loginPwd;
	private String mEmail;
	private String mPhone;
	private String orNum;
	private String orStatus;
	private String deSattus;
	
	@Override
	public String toString() {
		return "MypageVo [loginId=" + loginId + ", loginPwd=" + loginPwd + ", mEmail=" + mEmail + ", mPhone=" + mPhone
				+ ", orNum=" + orNum + ", orStatus=" + orStatus + ", deSattus=" + deSattus + "]";
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

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	public String getmPhone() {
		return mPhone;
	}

	public void setmPhone(String mPhone) {
		this.mPhone = mPhone;
	}

	public String getOrNum() {
		return orNum;
	}

	public void setOrNum(String orNum) {
		this.orNum = orNum;
	}

	public String getOrStatus() {
		return orStatus;
	}

	public void setOrStatus(String orStatus) {
		this.orStatus = orStatus;
	}

	public String getDeSattus() {
		return deSattus;
	}

	public void setDeSattus(String deSattus) {
		this.deSattus = deSattus;
	}

}
