package controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Comment;
import model.Product;
import repository.CommentSessionRepository;
import repository.ProductSessionRepository;

@Controller
public class CommentController {
	@Autowired
	CommentSessionRepository commentSessionRepository;
	@Autowired
	ProductSessionRepository productSessionRepository;
	//마이바티스와 DB 정보를 받아서  
	
	@RequestMapping(value="/Main", method = RequestMethod.GET)
	public String handleStep0(Model model) {
		model.addAttribute("comment",new Comment());
		return "main";
	}
	
	@RequestMapping(value="/Main_graph", method = RequestMethod.GET)
	public String handleStep1(Model model) {
		model.addAttribute("comment",new Comment());
		return "graph";
	}
	
	@RequestMapping(value="/Bucket_main", method = RequestMethod.GET)
	public String handleStep2(Model model) {
		model.addAttribute("comment",new Comment());
		return "Bucket_main";
	}
	
	@RequestMapping(value="/Main_bucket", method = RequestMethod.GET)
	public String handleStep3(Model model) {
		model.addAttribute("comment",new Comment());
		return "Main_bucket";
	}
	
	
	@RequestMapping(value="/Main_cs", method = RequestMethod.GET)
	public String handleStep5(Model model) {
		model.addAttribute("comment",new Comment());
		return "CS";
	}
	
	@RequestMapping(value="/Main_login", method = RequestMethod.GET)
	public String handleStep6(Model model) {
		model.addAttribute("comment",new Comment());
		return "login";
	}
	
	@RequestMapping(value="/Main_login_regist1", method = RequestMethod.GET)
	public String handleStep7_1(Model model) {
		model.addAttribute("comment",new Comment());
		return "register2";
	}
	
	@RequestMapping(value="/Main_login_regist2", method = RequestMethod.GET)
	public String handleStep7_2(Model model) {
		model.addAttribute("comment",new Comment());
		return "registerEnter";
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
	
	@RequestMapping(value="/Main_mypage_drop", method = RequestMethod.GET)
	public String handleStep11(Model model) {
		model.addAttribute("comment",new Comment());
		return "memberDrop";
	}
	
	@RequestMapping(value="/Buket_mypage_complite", method = RequestMethod.GET)
	public String handleStep12_1(Model model) {
		model.addAttribute("comment",new Comment());
		return "My_bucket";
	}
	
	@RequestMapping(value="/Buket_mypage_wish", method = RequestMethod.GET)
	public String handleStep12_2(Model model) {
		model.addAttribute("comment",new Comment());
		return "My_bucket2";
	}
	
	@RequestMapping(value="/comment_select", method = RequestMethod.POST)
	public String commentSelect(Comment comment ,Model model) {
		//commentSessionRepository = new  CommentSessionRepository(); spring 없을 때
		List<Comment> result=commentSessionRepository.selectComment(comment);
		model.addAttribute("result",result);
		return "/comment_select";
	}	
	
	
	@RequestMapping(value="/comment_insert", method = RequestMethod.POST)
	public String commentInsert(Comment comment ,Model model) {
		//commentSessionRepository = new  CommentSessionRepository(); spring 없을 때
		Integer result=commentSessionRepository.insertComment(comment);
		model.addAttribute("result",result);
		return "/comment_insert";
	}
	
	@RequestMapping(value="/comment_update", method = RequestMethod.POST)
	public String commentUpdate(Comment comment ,Model model) {
		//commentSessionRepository = new  CommentSessionRepository(); spring 없을 때
		Integer result=commentSessionRepository.updateComment(comment);
		model.addAttribute("result",result);
		return "/comment_update";
	}	

}
