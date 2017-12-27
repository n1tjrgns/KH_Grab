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

import model.*;
import repository.MemberSessionRepository;

@Controller
public class MemberController {
   @Autowired
   MemberSessionRepository memberSessionRepository;

   @RequestMapping(value="/MemberDelete", method = RequestMethod.POST)
	public String deleteMember(Member member ,Model model, HttpServletRequest request) {
		HttpSession session = request.getSession();
		Member deletemember = (Member) session.getAttribute("loginInfo");
		System.out.println("deletemember.getmPw() : " + deletemember.getmPw());
		System.out.println("request.getParameter(\"mPw\") : " + request.getParameter("mPw"));
		if (deletemember.getmPw().equals(request.getParameter("mPw"))) {
			Integer result=memberSessionRepository.deleteMember(deletemember);
			session.invalidate();
			model.addAttribute("result",result);
			System.out.println(result);
		}
		
		return "redirect:/Main";
	}
   
   
   
   @RequestMapping(value="/Main_login_find", method = RequestMethod.GET)
   public String handleStep8(Model model) {
      model.addAttribute("comment",new Comment());
      return "findPw";
   }
   
   
   @RequestMapping(value="/Main_info", method = RequestMethod.GET)
   public String handleStep9(Model model) {
      model.addAttribute("comment",new Comment());
      return "info";
   }
   
   @RequestMapping(value="/Main_mypage_drop", method = RequestMethod.GET)
   public String handleStep11(Model model) {
	   model.addAttribute("comment",new Comment());
      return "memberDrop";
   }
   
   @RequestMapping(value="/Main_info_enter", method = RequestMethod.GET)
   public String handleStep9_1(Model model) {
      model.addAttribute("comment",new Comment());
      return "infoEnter";
   }
   
   @RequestMapping(value="/Main_mypage_changePw", method = RequestMethod.GET)
   public String handleStep10(Model model) {
      model.addAttribute("comment",new Comment());
      return "changePw";
   }
   
   
   
}