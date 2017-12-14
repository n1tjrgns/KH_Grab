package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Member;
import repository.LoginSessionRepository;

@Controller
public class LoginController {
	@Autowired
	LoginSessionRepository loginSessionRepository;
	
	@RequestMapping(value="/login_process.do", method = RequestMethod.GET)
	public String loginProcess(Member member, Model model) {
		List<Member> result = loginSessionRepository.selectLogin();
		model.addAttribute("member",result);
		return "process/login_pro";
	}
}
