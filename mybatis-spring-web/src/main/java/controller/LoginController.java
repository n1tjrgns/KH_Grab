package controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Member;
import repository.CommentSessionRepository;
import repository.LoginSessionRepository;

@Controller
public class LoginController {
	@Autowired
	CommentSessionRepository commentSessionRepository;
	@Autowired
	LoginSessionRepository loginSessionRepository;
	
	@RequestMapping(value="/login_process.do", method = RequestMethod.POST)
	public String loginProcess(Member member, Model model, HttpServletRequest request) {
		Member result =loginSessionRepository.selectLogin(member);
		HttpSession session = request.getSession(false);
		if(result!=null) {			
			if(session != null) {
				session.invalidate();
			}
			session = request.getSession(true);
			System.out.println("로그인성공 result != null");
			session.setAttribute("loginInfo", result);
		}else if(result==null){
			System.out.println("로그인실패 result = null");
		}		
		model.addAttribute("member",result);		
		return "process/login_pro";
	}
}
