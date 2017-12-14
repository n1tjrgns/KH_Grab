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
public class ProductController {
	@Autowired
	CommentSessionRepository commentSessionRepository;
	@Autowired
	ProductSessionRepository productSessionRepository;
	//마이바티스와 DB 정보를 받아서  
	
	
	
	@RequestMapping(value="/Main_shop", method = RequestMethod.GET)
	public String handleStep4(Product product, Model model) {
		List<Product> result = productSessionRepository.selectProductList();
		model.addAttribute("product", result);
		return "shop";
	}
	
	@RequestMapping(value="/Main_shop_cotent", method = RequestMethod.GET)
	public String handleStep4_1(Model model) {
		model.addAttribute("comment",new Comment());
		return "shop_content";
	}
	
}
