package controller;

import java.io.File;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import model.Comment;
import model.Member;
import repository.MemberSessionRepository;

@Controller
public class MemberController {
	@Autowired
	MemberSessionRepository memberSessionRepository;
/////////////개인회원가입
	@RequestMapping(value = "/Main_login_regist1", method = RequestMethod.GET)
	public String insrtStep11(HttpServletRequest request, Model model) {
		System.out.println("aaa");
		return "register2";
	}
	
	@RequestMapping(value = "/Main_login_regist1", method =  RequestMethod.POST)
	public String insrtStep1(HttpServletRequest httpServletRequest, Model model) {
		String mName = httpServletRequest.getParameter("mName");
		String mEmail = httpServletRequest.getParameter("mEmail1");
		String mPw = httpServletRequest.getParameter("mPw");
		String mTel = httpServletRequest.getParameter("cell1")+'-'+httpServletRequest.getParameter("cell2")+'-'+httpServletRequest.getParameter("cell3");
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
		
		Integer result = memberSessionRepository.insertMember(member);
		model.addAttribute("member",member);
		return "main";
		
	}
/////////////업체회원가입	
	@RequestMapping(value = "/Main_login_regist2", method = RequestMethod.GET)
	public String insrtStep12(HttpServletRequest httpServletRequest, Model model) {
		return "registerEnter";
	}
	
	@RequestMapping(value = "/Main_login_regist2", method = RequestMethod.POST)
	public String insrtStep2(HttpServletRequest httpServletRequest, Model model) {
		String mName = httpServletRequest.getParameter("mName");
		String mEmail = httpServletRequest.getParameter("mEmail1");
		String mPw = httpServletRequest.getParameter("mPw");
		String mTel = httpServletRequest.getParameter("mTel1")+'-'+httpServletRequest.getParameter("mTel2")+'-'+httpServletRequest.getParameter("mTel3");
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

///////////정보수정	
	@RequestMapping(value="/Main_info", method = RequestMethod.GET)
	public String handleStep13(HttpServletRequest httpServletRequest,Model model) {
		return "info";
	}
	
	@RequestMapping(value="/Main_info", method = RequestMethod.POST)
	public String handleStep3(HttpServletRequest httpServletRequest,Model model) {	
		String mTel = httpServletRequest.getParameter("mTel1")+'-'+httpServletRequest.getParameter("mTel2")+'-'+httpServletRequest.getParameter("mTel3");
		HttpSession session = httpServletRequest.getSession();
		Member member = (Member)session.getAttribute("loginInfo");
		member.setmTel(mTel);
		System.out.println(mTel);
		Integer result = memberSessionRepository.updateMemberUpdate(member);	
		return "main";
		
	}
//////////비번찾기
	@RequestMapping(value="/Main_mypage_changePw", method = RequestMethod.GET)
	public String handleStep14(HttpServletRequest httpServletRequest,Model model) {
		String mPw = httpServletRequest.getParameter("mPw");
		HttpSession session = httpServletRequest.getSession();
		Member member = (Member)session.getAttribute("loginInfo");
		member.setmPw(mPw);
		return "changePw";
		
	}
	
	@RequestMapping(value="/Main_mypage_changePw", method = RequestMethod.POST)
	public String handleStep4(Model model,Member member) {
		model.addAttribute("member",member);
		return "main";
	}
	
	
	
	
/*	@RequestMapping("/Memberupdate")
	public ModelAndView info(Member member,MultipartFile upload) {
		
		String savePath="/img/"+upload.getOriginalFilename();	
		File file=new File(savePath);
		Integer result = memberSessionRepository.updateMemberUpdate(member);
		String msg=result>0?"수정완료":"수정실패";
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg",msg);
		mav.addObject("result",result);
		mav.setViewName("infoMsg");
		return mav;
	}*/

	/*
	 * @RequestMapping(value="/login.do", method = RequestMethod.GET) public String
	 * dropStep3(Model model, Member member) {
	 * System.out.println(member.getmEmail()); model.addAttribute("member",new
	 * Member()); return "main"; }
	 */
}
