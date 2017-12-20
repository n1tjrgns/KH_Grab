package controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Product;
import repository.BuyListSessionRepository;
import repository.BuyProductSessionRepository;
import repository.PaymentSessionRepository;
import repository.ProductSessionRepository;

@Controller
public class ProductController {

	@Autowired
	ProductSessionRepository productSessionRepository;
	
	@Autowired
	BuyProductSessionRepository buyProductSessionRepository;
	
	@Autowired
	PaymentSessionRepository paymentSessionRepository;
	
	@Autowired
	BuyListSessionRepository buyListSessionRepository;
	
	
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
	
	//수정중
	@RequestMapping(value="/paying", method = RequestMethod.POST)
	public String shopStep4(HttpServletRequest httpServletRequest, Model model) {
		Date today = new Date();
		
		int qty = Integer.parseInt(httpServletRequest.getParameter("qty"));
		String total_price = httpServletRequest.getParameter("p_totalprice");
		String howPay = httpServletRequest.getParameter("kyejae");
		String rv_name = httpServletRequest.getParameter("rcvr_nm");
		String addr = "("+httpServletRequest.getParameter("sample4_postcode") +") "+ httpServletRequest.getParameter("sample4_roadAddress") +" "+ httpServletRequest.getParameter("roadAddress_detail");
		String m_email = httpServletRequest.getParameter("member_email");
		String dlv_msg = httpServletRequest.getParameter("dlv_msg");
		String how_del = "택배";
		String memberName = httpServletRequest.getParameter("dlv_msg");
		System.out.println("날짜:"+today);
		System.out.println("총액:"+total_price);
		System.out.println("결제방법:"+howPay);
		System.out.println("받는사람:"+rv_name);
		System.out.println("주소:"+addr);
		System.out.println("이메일:"+m_email); //이메일로 회원 전화번호 DB 받기
		
		//BuyNum 최대값 출력
		int maxBuyNum = buyProductSessionRepository.selectMaxBuyNum() + 1;
	
		//PayNum 최대값 출력
		int maxPayNum = paymentSessionRepository.selectMaxPayNum() + 1;
		
		//구매 DB 넣은 결과
		int buyResult = buyProductSessionRepository.insertBuyProduct(maxBuyNum, today, total_price, how_del, rv_name, addr, m_email);
			
		//결제 DB 넣은 결과
		int payResult = paymentSessionRepository.insertPayment(maxPayNum, maxBuyNum, howPay, Integer.parseInt(total_price), dlv_msg);
		
		//구매리스트 DB 넣은 결과
		int listResult = buyListSessionRepository.insertBuyList(maxBuyNum, memberName, qty);
		
		model.addAttribute("result", listResult);
		
		
		return "shop";
	}
}
