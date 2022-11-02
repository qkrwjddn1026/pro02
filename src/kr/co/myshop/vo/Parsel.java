package kr.co.myshop.vo;

public class Parsel {
	private int parselNo;		//배송코드
	private String parselAddr;	//배송지
	private String cusTel;
	private String parselConpany;	//배송회사
	private String parselTel;
	private int parselState;	//배송상태
	public int getParselNo() {
		return parselNo;
	}
	public void setParselNo(int parselNo) {
		this.parselNo = parselNo;
	}
	public String getParselAddr() {
		return parselAddr;
	}
	public void setParselAddr(String parselAddr) {
		this.parselAddr = parselAddr;
	}
	public String getCusTel() {
		return cusTel;
	}
	public void setCusTel(String cusTel) {
		this.cusTel = cusTel;
	}
	public String getParselConpany() {
		return parselConpany;
	}
	public void setParselConpany(String parselConpany) {
		this.parselConpany = parselConpany;
	}
	public String getParselTel() {
		return parselTel;
	}
	public void setParselTel(String parselTel) {
		this.parselTel = parselTel;
	}
	public int getParselState() {
		return parselState;
	}
	public void setParselState(int parselState) {
		this.parselState = parselState;
	}
	
}
