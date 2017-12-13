package model;

import java.util.Date;

public class member {
   private String mEmail;
   private String mPw;
   private String mName;
   private String mTel;
   private Date mBirth;
   private String mGen;
   private String mAddr;
   private int mAttendcount;
   private String mProfile;
   private int mLicense;
   private String mAuthority;
   private String bank;
   private String account;
   
public member(String mEmail) {
   this.mEmail = mEmail;    
}
   
public String getmEmail() {
	return mEmail;
}

public void setmEmail(String mEmail) {
	this.mEmail = mEmail;
}

public String getmPw() {
	return mPw;
}

public void setmPw(String mPw) {
	this.mPw = mPw;
}

public String getmName() {
	return mName;
}

public void setmName(String mName) {
	this.mName = mName;
}

public String getmTel() {
	return mTel;
}

public void setmTel(String mTel) {
	this.mTel = mTel;
}

public Date getmBirth() {
	return mBirth;
}

public void setmBirth(Date mBirth) {
	this.mBirth = mBirth;
}

public String getmGen() {
	return mGen;
}

public void setmGen(String mGen) {
	this.mGen = mGen;
}

public String getmAddr() {
	return mAddr;
}

public void setmAddr(String mAddr) {
	this.mAddr = mAddr;
}

public int getmAttendcount() {
	return mAttendcount;
}

public void setmAttendcount(int mAttendcount) {
	this.mAttendcount = mAttendcount;
}

public String getmProfile() {
	return mProfile;
}

public void setmProfile(String mProfile) {
	this.mProfile = mProfile;
}

public int getmLicense() {
	return mLicense;
}

public void setmLicense(int mLicense) {
	this.mLicense = mLicense;
}

public String getmAuthority() {
	return mAuthority;
}

public void setmAuthority(String mAuthority) {
	this.mAuthority = mAuthority;
}


public String getBank() {
	return bank;
}

public void setBank(String bank) {
	this.bank = bank;
}

public String getAccount() {
	return account;
}

public void setAccount(String account) {
	this.account = account;
}

public member() {
      
}

}