package kr.co.ictedu.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class TodayHtDTO {
	private Integer tHtNum;
	private String tHtName;
	private Integer tHtGrade;
	private Integer tHtPrice;
	private String tHtImg;
	private String tHtWrtDt;
	private MultipartFile mfile;
	public Integer gettHtNum() {
		return tHtNum;
	}
	public void settHtNum(Integer tHtNum) {
		this.tHtNum = tHtNum;
	}
	public String gettHtName() {
		return tHtName;
	}
	public void settHtName(String tHtName) {
		this.tHtName = tHtName;
	}
	public Integer gettHtGrade() {
		return tHtGrade;
	}
	public void settHtGrade(Integer tHtGrade) {
		this.tHtGrade = tHtGrade;
	}
	public Integer gettHtPrice() {
		return tHtPrice;
	}
	public void settHtPrice(Integer tHtPrice) {
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
