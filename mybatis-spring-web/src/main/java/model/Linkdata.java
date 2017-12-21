package model;

import java.util.Date;

public class Linkdata {
   private int dataNum;
   private int bkrvNum;
   private String snsSort;
   private String snsUrl;
   private Date bkrvDate;
  
   
public Linkdata(int dataNum, int bkrvNum, String snsSort, String snsUrl, Date bkrvDate) {
	   this.dataNum = dataNum; 
	   this.bkrvNum = bkrvNum;
	   this.snsSort = snsSort;
	   this.snsUrl = snsUrl;
	   this.bkrvDate= bkrvDate;
}

public Linkdata() {
      
}

public Date getBkrvDate() {
	return bkrvDate;
}

public void setBkrvDate(Date bkrvDate) {
	this.bkrvDate = bkrvDate;
}


public int getDataNum() {
	return dataNum;
}

public void setDataNum(int dataNum) {
	this.dataNum = dataNum;
}

public int getBkrvNum() {
	return bkrvNum;
}

public void setBkrvNum(int bkrvNum) {
	this.bkrvNum = bkrvNum;
}

public String getSnsSort() {
	return snsSort;
}

public void setSnsSort(String snsSort) {
	this.snsSort = snsSort;
}

public String getSnsUrl() {
	return snsUrl;
}

public void setSnsUrl(String snsUrl) {
	this.snsUrl = snsUrl;
}


}