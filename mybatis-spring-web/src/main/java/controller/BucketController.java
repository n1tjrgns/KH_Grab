package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Comment;
import repository.CommentSessionRepository;

public class BucketController {
	@Autowired
	private CommentSessionRepository commentSessionRepository;
	
	@RequestMapping(value="/Bucket_main", method = RequestMethod.GET)
	public String handleStep2(Model model) {
		
		
		model.addAttribute("comment",new Comment());
		return "Bucket_main";
	}
	
}
