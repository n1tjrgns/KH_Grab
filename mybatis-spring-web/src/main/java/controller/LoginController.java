package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.member;
import repository.LoginSessionRepository;

@Controller
public class LoginController {
	@Autowired
	LoginSessionRepository loginSessionRepository;
	
	@RequestMapping(value="/login_process.do", method = RequestMethod.GET)
	public String loginProcess(Model model) {
		model.addAttribute("member",new member());
		return "process/login_pro";
	}
}
