package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
 
	@RequestMapping(value="/loginProcess", method=RequestMethod.POST)
	public String LoginMember(Member member, Model model, HttpServletRequest request) {
		Member result = loginSessionRepository.selectLoginMember(member);
		HttpSession session = request.getSession(false);
		if(result != null) {
			if(session != null) {
				session.invalidate();
			}
			session = request.getSession(true);
			System.out.println("로그인 성공시 세션만들고 메인페이지로");
			session.setAttribute("loginInfo", result);
			System.out.println(result.getmEmail());			
			return "redirect:/Main";
		}
		else {
		/*model.addAttribute("msg", "메세지"); 
		model.addAttribute("url", "Main_login");*/
		return "redirect:/Main_login";
		}		
	}
	@RequestMapping(value="/Logout")
	public String LogoutMember(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.invalidate();			
		return "redirect:/Main";
	}
	
	/*@RequestMapping(value="/loginFail")
	public String LoginFail() {			
		return "loginFail";
	}*/
	
}
