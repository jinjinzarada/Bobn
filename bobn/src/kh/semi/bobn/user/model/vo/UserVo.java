package kh.semi.bobn.user.model.vo;

import java.sql.Date;

public class UserVo {

//	MEMBER_ID          NOT NULL VARCHAR2(20) 
//	MEMBER_PASSWORD    NOT NULL VARCHAR2(20) 
//	MEMBER_NAME        NOT NULL VARCHAR2(20) 
//	MEMBER_EMAIL       NOT NULL VARCHAR2(50) 
//	MEMBER_PHONE       NOT NULL VARCHAR2(20) 
//	MEMBER_GENDER      NOT NULL CHAR(1)      
//	MEMBER_BIRTHOFDATE NOT NULL DATE 
	
	private String mId;
	private String mpassword;
	private String mname;
	private String memail;
	private String mphone;
	private String mgender;
	private String mbdate;
	
	@Override
	public String toString() {
		return "UserVo [mId=" + mId + ", mpassword=" + mpassword + ", mname=" + mname + ", memail=" + memail
				+ ", mphone=" + mphone + ", mgender=" + mgender + ", mbdate=" + mbdate + "]";
	}

	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public String getMpassword() {
		return mpassword;
	}

	public void setMpassword(String mpassword) {
		this.mpassword = mpassword;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMemail() {
		return memail;
	}

	public void setMemail(String memail) {
		this.memail = memail;
	}

	public String getMphone() {
		return mphone;
	}

	public void setMphone(String mphone) {
		this.mphone = mphone;
	}

	public String getMgender() {
		return mgender;
	}

	public void setMgender(String mgender) {
		this.mgender = mgender;
	}

	public String getMbdate() {
		return mbdate;
	}

	public void setMbdate(String mbdate) {
		this.mbdate = mbdate;
	}

	
}
