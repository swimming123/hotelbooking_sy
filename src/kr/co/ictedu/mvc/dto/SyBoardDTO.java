package kr.co.ictedu.mvc.dto;

import org.springframework.web.multipart.MultipartFile;

public class SyBoardDTO {
	private int bNum;
	private String bTitle;
	private String bSummary;
	private String bContent;
	private String bImgx;
	private String bDate;
	private int bHit;
	private MultipartFile mfile;
	
	public int getbHit() {
		return bHit;
	}
	public void setbHit(int bHit) {
		this.bHit = bHit;
	}
	public int getbNum() {
		return bNum;
	}
	public void setbNum(int bNum) {
		this.bNum = bNum;
	}
	public String getbTitle() {
		return bTitle;
	}
	public void setbTitle(String bTitle) {
		this.bTitle = bTitle;
	}
	public String getbSummary() {
		return bSummary;
	}
	public void setbSummary(String bSummary) {
		this.bSummary = bSummary;
	}
	public String getbContent() {
		return bContent;
	}
	public void setbContent(String bContent) {
		this.bContent = bContent;
	}
	public String getbImgx() {
		return bImgx;
	}
	public void setbImgx(String bImgx) {
		this.bImgx = bImgx;
	}
	public String getbDate() {
		return bDate;
	}
	public void setbDate(String bDate) {
		this.bDate = bDate;
	}
	public MultipartFile getMfile() {
		return mfile;
	}
	public void setMfile(MultipartFile mfile) {
		this.mfile = mfile;
	}
	
	
}
