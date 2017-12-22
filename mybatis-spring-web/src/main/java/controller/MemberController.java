package controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Member;
import repository.MemberSessionRepository;

@Controller
public class MemberController {
	@Autowired
	MemberSessionRepository memberSessionRepository;

	@RequestMapping(value = "/registing", method = RequestMethod.POST)
	public String insrtStep1(HttpServletRequest httpServletRequest, Model model) {
		String mName = httpServletRequest.getParameter("mName");
		String mPw = httpServletRequest.getParameter("mPw");
		String mEmail = httpServletRequest.getParameter("mEmail1");
		String mTel = httpServletRequest.getParameter("cell1") +"-"+httpServletRequest.getParameter("cell2")+"-"+httpServletRequest.getParameter("cell3");
		Date mBirth = java.sql.Date.valueOf(httpServletRequest.getParameter("mBirth"));
		String mGen = httpServletRequest.getParameter("mGen");
		String mPost = httpServletRequest.getParameter("mPost");
		String mAddr = httpServletRequest.getParameter("mAddr");
		String mAddr_d = httpServletRequest.getParameter("mAddr_d");
		Long mAttendcount = 0L;
		String mAuthority = httpServletRequest.getParameter("mAuthority");
		Long mLicense = 0L;
		String mProfile = "";
		String bank = "";
		String account = "";

		Member member = new Member(mEmail,mPw, mName, mTel, mBirth, mGen, mPost, mAddr, mAddr_d, mAttendcount, mAuthority,
				mLicense, mProfile, bank, account);

		Integer result = memberSessionRepository.insertMember(member);
		model.addAttribute("member", member);
		return "main";
		
	}
	
	@RequestMapping(value = "/registingEnter", method = RequestMethod.POST)
	public String insrtStep2(HttpServletRequest httpServletRequest, Model model) {
		String mName = httpServletRequest.getParameter("mName");
		String mEmail = httpServletRequest.getParameter("mEmail1");
		String mPw = httpServletRequest.getParameter("mPw");
		String mTel = httpServletRequest.getParameter("cell1") +"-"+httpServletRequest.getParameter("cell2")+"-"+httpServletRequest.getParameter("cell3");
		Long mLicense = 0L;
		String mPost = httpServletRequest.getParameter("mPost");
		String mAddr = httpServletRequest.getParameter("mAddr");
		String mAddr_d = httpServletRequest.getParameter("mAddr_d");
		Date mBirth = java.sql.Date.valueOf(httpServletRequest.getParameter("mBirth"));
		String mGen = httpServletRequest.getParameter("mGen");
		Long mAttendcount = 0L;
		String mAuthority = httpServletRequest.getParameter("mAuthority");
		String mProfile = "";
		String bank = "";
		String account = "";

		Member member = new Member(mEmail,mPw, mName, mTel, mBirth, mGen, mPost, mAddr, mAddr_d, mAttendcount, mAuthority,
				mLicense, mProfile, bank, account);

		Integer result = memberSessionRepository.insertMemberEnter(member);
		model.addAttribute("member", member);
		return "main";
		
	}

	/*
	 * @RequestMapping(value="/login.do", method = RequestMethod.GET) public String
	 * dropStep3(Model model, Member member) {
	 * System.out.println(member.getmEmail()); model.addAttribute("member",new
	 * Member()); return "main"; }
	 */
}
