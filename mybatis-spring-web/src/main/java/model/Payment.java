package model;

import java.util.Date;


public class Payment {
	private int payNum;
	private int buyNum;
	private String howPay;
	private int pTotal;
	private String pComment;


	public Payment(int payNum, int buyNum, String howPay, int pTotal, String pComment) {
		this.payNum = payNum;
		this.buyNum = buyNum;
		this.howPay = howPay;
		this.pTotal = pTotal;
		this.pComment = pComment;

	}

	public Payment() {

	}

	public int getPayNum() {
		return payNum;
	}

	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}

	public int getBuyNum() {
		return buyNum;
	}

	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}

	public String getHowPay() {
		return howPay;
	}

	public void setHowPay(String howPay) {
		this.howPay = howPay;
	}

	public int getpTotal() {
		return pTotal;
	}

	public void setpTotal(int pTotal) {
		this.pTotal = pTotal;
	}

	public String getpComment() {
		return pComment;
	}

	public void setpComment(String pComment) {
		this.pComment = pComment;
	}

	

}



