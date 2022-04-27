package kh.semi.bobn.loginregister.model.vo;

public class LoginVo {
	// member table
//	MEMBER_ID          NOT NULL VARCHAR2(20) 
//	MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//	MEMBER_NAME        NOT NULL VARCHAR2(20) 
//	MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//	MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//	MEMBER_GENDER      NOT NULL CHAR(1)      
//	MEMBER_BIRTHOFDATE NOT NULL DATE 

	// 사용은 id 와 비밀번호 이름, 이메일 주소뿐
	private String loginId;
	private String loginPwd;
	private String mEmail;
	private String mName;
	
	
	public String getmEmail() {
		return mEmail;
	}

	public String getmName() {
		return mName;
	}

	public void setmName(String mName) {
		this.mName = mName;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}

	@Override
	public String toString() {
		return "LoginVo [loginId=" + loginId + ", loginPwd=" + loginPwd + ", mEmail=" + mEmail + ", mName=" + mName
				+ "]";
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

	
}
