package kh.semi.bobn.curation.model.vo;

import java.sql.Timestamp;

public class RecipeRecommentVo {

//	CRRERECOMMENT_NO       NOT NULL NUMBER         
//	CRRERECOMMENT_POSTDATE NOT NULL TIMESTAMP(6)   
//	CRRERECOMMENT_CONTENT  NOT NULL VARCHAR2(3900) 
//	MEMBER_ID              NOT NULL VARCHAR2(20)   
//	CRRECONTENT_NO         NOT NULL NUMBER
	
	private int recNo;
	private String recContent;
	private Timestamp recDate;
	private int rNo;
	private String memberId;
	private int recCnt;
	public int getRecNo() {
		return recNo;
	}
	public void setRecNo(int recNo) {
		this.recNo = recNo;
	}
	public String getRecContent() {
		return recContent;
	}
	public void setRecContent(String recContent) {
		this.recContent = recContent;
	}
	public Timestamp getRecDate() {
		return recDate;
	}
	public void setRecDate(Timestamp recDate) {
		this.recDate = recDate;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getRecCnt() {
		return recCnt;
	}
	public void setRecCnt(int recCnt) {
		this.recCnt = recCnt;
	}
	@Override
	public String toString() {
		return "RecipeRecommentVo [recNo=" + recNo + ", recContent=" + recContent + ", recDate=" + recDate + ", rNo="
				+ rNo + ", memberId=" + memberId + ", recCnt=" + recCnt + "]";
	}
	public RecipeRecommentVo() {
		super();
	}
	
	
}
