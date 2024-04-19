package kr.co.ictedu.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class TodayHtDTO {
	private int tHtNum;
	private String tHtName;
	private int tHtGrade;
	private int tHtPrice;
	private String tHtImg;
	private String tHtWrtDt;
	private MultipartFile mfile;
	public int gettHtNum() {
		return tHtNum;
	}
	public void settHtNum(int tHtNum) {
		this.tHtNum = tHtNum;
	}
	public String gettHtName() {
		return tHtName;
	}
	public void settHtName(String tHtName) {
		this.tHtName = tHtName;
	}
	public int gettHtGrade() {
		return tHtGrade;
	}
	public void settHtGrade(int tHtGrade) {
		this.tHtGrade = tHtGrade;
	}
	public int gettHtPrice() {
		return tHtPrice;
	}
	public void settHtPrice(int tHtPrice) {
		this.tHtPrice = tHtPrice;
	}
	public String gettHtImg() {
		return tHtImg;
	}
	public void settHtImg(String tHtImg) {
		this.tHtImg = tHtImg;
	}
	public String gettHtWrtDt() {
		return tHtWrtDt;
	}
	public void settHtWrtDt(String tHtWrtDt) {
		this.tHtWrtDt = tHtWrtDt;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	
	
}
