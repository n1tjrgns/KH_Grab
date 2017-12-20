package model;

import java.util.Date;

public class CustomService {
	private int csNum;
	private String csSort;
	private String csTitle;
	private String csContent;
	private Date csDate;
	private String aEmail;
	
	

	public CustomService(int csNum, String csSort, String csTitle, String csContent, Date csDate, String aEmail) {
		this.csNum=csNum;
		this.csSort=csSort;
		this.csTitle=csTitle;
		this.csContent=csContent;
		this.csDate=csDate;
		this.aEmail=aEmail;
	}
	
	
	public CustomService() {
		
	}
	
	public String getaEmail() {
		return aEmail;
	}


	public void setaEmail(String aEmail) {
		this.aEmail = aEmail;
	}

	public int getCsNum() {
		return csNum;
	}
	public void setCsNum(int csNum) {
		this.csNum = csNum;
	}
	public String getCsSort() {
		return csSort;
	}
	public void setCsSort(String csSort) {
		this.csSort = csSort;
	}
	public String getCsTitle() {
		return csTitle;
	}
	public void setCsTitle(String csTitle) {
		this.csTitle = csTitle;
	}
	public String getCsContent() {
		return csContent;
	}
	public void setCsContent(String csContent) {
		this.csContent = csContent;
	}
	public Date getCsDate() {
		return csDate;
	}
	public void setCsDate(Date csDate) {
		this.csDate = csDate;
	}
}
