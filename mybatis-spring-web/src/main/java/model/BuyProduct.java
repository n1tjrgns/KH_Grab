package model;

import java.util.Date;


public class BuyProduct {
	private int buyNum;
	private Date buyDate;
	private String totalPrice;
	private String howDeliver;
	private String receiver;
	private String receiAddr;
	private String mEmail;



	public BuyProduct(int buyNum, Date buyDate, String totalPrice, String howDeliver, String receiver,
			String receiAddr, String mEmail) {
		this.buyNum = buyNum;
		this.buyDate = buyDate;
		this.totalPrice = totalPrice;
		this.howDeliver = howDeliver;
		this.receiver = receiver;
		this.receiver = receiver;
		this.mEmail = mEmail;
	}

	public BuyProduct() {

	}

	public int getBuyNum() {
		return buyNum;
	}

	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}

	public Date getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getHowDeliver() {
		return howDeliver;
	}

	public void setHowDeliver(String howDeliver) {
		this.howDeliver = howDeliver;
	}

	public String getReceiver() {
		return receiver;
	}

	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}

	public String getReceiAddr() {
		return receiAddr;
	}

	public void setReceiAddr(String receiAddr) {
		this.receiAddr = receiAddr;
	}

	public String getmEmail() {
		return mEmail;
	}

	public void setmEmail(String mEmail) {
		this.mEmail = mEmail;
	}


}