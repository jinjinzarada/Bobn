package kh.semi.bobn.curation.model.vo;

public class CurationVo {
//	FOOD_NAME NOT NULL VARCHAR2(200) 
//	CALORIE   NOT NULL NUMBER        
//	SODIUM    NOT NULL NUMBER
	
	// 사용은 id 와 비밀번호 이름, 이메일 주소뿐
		private String foodName;
		private String caloInfo;
		private String sodiumInfo;
		
		@Override
		public String toString() {
			return "CurationVo [foodName=" + foodName + ", caloInfo=" + caloInfo + ", sodiumInfo=" + sodiumInfo + "]";
		}

		public String getFoodName() {
			return foodName;
		}

		public void setFoodName(String foodName) {
			this.foodName = foodName;
		}

		public String getCaloInfo() {
			return caloInfo;
		}

		public void setCaloInfo(String caloInfo) {
			this.caloInfo = caloInfo;
		}

		public String getSodiumInfo() {
			return sodiumInfo;
		}

		public void setSodiumInfo(String sodiumInfo) {
			this.sodiumInfo = sodiumInfo;
		}
		
		
}
