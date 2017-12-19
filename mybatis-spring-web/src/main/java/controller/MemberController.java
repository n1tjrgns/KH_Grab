package controller;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Member;
import repository.MemberSessionRepository;

public class MemberController {

	MemberSessionRepository  memberSessionRepository;
	@RequestMapping(value="/Main_login_regist1", method = RequestMethod.GET)
	public String reStep(Model model,Member member) {
		System.out.println(member.getmEmail());
		Integer Result = memberSessionRepository.insertComment(member);
		model.addAttribute("Result",Result);	
		return "Main";
	}
	
	@RequestMapping(value="/Main_login_regist2", method = RequestMethod.GET)
	public String handleStep7_2(Model model) {
		model.addAttribute("member",new Member());
		return "registerEnter";
	}
	
	@RequestMapping(value="/Main_login_find", method = RequestMethod.GET)
	public String findPwStep(Model model) {
		model.addAttribute("member",new Member());
		return "findPw";
	}
	
	
	@RequestMapping(value="/Main_info", method = RequestMethod.GET)
	public String infoStep(Model model) {
		model.addAttribute("member",new Member());
		return "info";
	}
	
	@RequestMapping(value="/Main_info_enter", method = RequestMethod.GET)
	public String infoEnterStep(Model model) {
		model.addAttribute("member",new Member());
		return "infoEnter";
	}
	
	@RequestMapping(value="/Main_mypage_changePw", method = RequestMethod.GET)
	public String changePwStep(Model model) {
		model.addAttribute("member",new Member());
		return "changePw";
	}
	
	@RequestMapping(value="/Main_mypage_drop", method = RequestMethod.GET)
	public String dropStep(Model model) {
		model.addAttribute("member",new Member());
		return "memberDrop";
	}
	
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String dropStep2(Model model, Member  member) {
		System.out.println(member.getmEmail());
		model.addAttribute("member",new Member());
		return "main";
	}

	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String dropStep3(Model model, Member  member) {
		System.out.println(member.getmEmail());
		model.addAttribute("member",new Member());
		return "main";
	}
}
