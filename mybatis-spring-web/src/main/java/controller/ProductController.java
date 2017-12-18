package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;

import repository.ProductSessionRepository;

@Controller
public class ProductController {

	@Autowired
	ProductSessionRepository productSessionRepository;
	//마이바티스와 DB 정보를 받아서  
	//정보들
	
	
	@RequestMapping(value="/Main_shop")
	public String shopStep1(Product product, Model model) {
		List<Product> result = productSessionRepository.selectProductList();
		model.addAttribute("product", result);
		return "shop";
	}
	
	@RequestMapping(value="/shop_content", method = RequestMethod.POST)
	public String shopStep2(HttpServletRequest httpServletRequest, Model model) {
		String p_name = httpServletRequest.getParameter("p_name");
		System.out.println("p_name:"+p_name);
		Product result = productSessionRepository.selectProduct(p_name);
		System.out.println("result:"+result);
		model.addAttribute("product",result);
		return "content";
	}
	
	@RequestMapping(value="/shop_payment", method = RequestMethod.POST)
	public String shopStep3(HttpServletRequest httpServletRequest, Model model) {
		String p_name = httpServletRequest.getParameter("p_name");
		String p_payStock = httpServletRequest.getParameter("p_payStock");
		System.out.println("p_name:"+p_name);
		System.out.println("p_payStock:"+p_payStock);
		Product result = productSessionRepository.selectProduct(p_name);
		System.out.println("result:"+result);
		model.addAttribute("product",result);
		return "pay";
	}
	
}
