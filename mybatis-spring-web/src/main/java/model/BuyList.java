package model;

import java.util.Date;


public class BuyList {
	private int buyNum;
	private String prodName;
	private int bQuantity;


	public BuyList(int buyNum, String prodName, int bQuantity) {
		this.buyNum = buyNum;
		this.prodName = prodName;
		this.bQuantity = bQuantity;
	}

	public BuyList() {

	}

	public int getBuyNum() {
		return buyNum;
	}

	public void setBuyNum(int buyNum) {
		this.buyNum = buyNum;
	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public int getbQuantity() {
		return bQuantity;
	}

	public void setbQuantity(int bQuantity) {
		this.bQuantity = bQuantity;
	}

	

}