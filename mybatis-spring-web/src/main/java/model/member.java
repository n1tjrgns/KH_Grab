package model;

import java.util.Date;

public class member {
   private String m_email;
   private String m_pw;
   private String m_name;
   private String m_tel;
   private Date m_birth;
   private String m_gen;
   private String m_addr;
   private int m_attendcount;
   private String m_profile;
   private int m_license;
   private String m_authority;
   private String bank;
   private String account;
   
public member(String m_email) {
   this.m_email = m_email;    
}
   
public member() {
      
}

public String getM_email() {
	return m_email;
}

public void setM_email(String m_email) {
	this.m_email = m_email;
}

public String getM_pw() {
	return m_pw;
}

public void setM_pw(String m_pw) {
	this.m_pw = m_pw;
}

public String getM_name() {
	return m_name;
}

public void setM_name(String m_name) {
	this.m_name = m_name;
}

public String getM_tel() {
	return m_tel;
}

public void setM_tel(String m_tel) {
	this.m_tel = m_tel;
}

public Date getM_birth() {
	return m_birth;
}

public void setM_birth(Date m_birth) {
	this.m_birth = m_birth;
}

public String getM_gen() {
	return m_gen;
}

public void setM_gen(String m_gen) {
	this.m_gen = m_gen;
}

public String getM_addr() {
	return m_addr;
}

public void setM_addr(String m_addr) {
	this.m_addr = m_addr;
}

public int getM_attendcount() {
	return m_attendcount;
}

public void setM_attendcount(int m_attendcount) {
	this.m_attendcount = m_attendcount;
}

public String getM_profile() {
	return m_profile;
}

public void setM_profile(String m_profile) {
	this.m_profile = m_profile;
}

public int getM_license() {
	return m_license;
}

public void setM_license(int m_license) {
	this.m_license = m_license;
}

public String getM_authority() {
	return m_authority;
}

public void setM_authority(String m_authority) {
	this.m_authority = m_authority;
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
   
}