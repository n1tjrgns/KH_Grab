package controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.BuyList;
import model.BuyProduct;
import model.Payment;
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
		String buyType = httpServletRequest.getParameter("BuyType");
		System.out.println("p_name:"+p_name);
		System.out.println("p_payStock:"+p_payStock);
		Product result = productSessionRepository.selectProduct(p_name);
		result.setProdStock(Integer.parseInt(p_payStock));
		result.setProdPrice(Integer.parseInt(p_payStock) * result.getProdPrice());
		System.out.println("result:"+result);
		model.addAttribute("product",result);
		model.addAttribute("buyType",buyType);
		return "pay";
	}
	@RequestMapping(value="/shop_payment2")
	public String shopStep3_1(HttpServletRequest httpServletRequest, Model model) {
		return "pay2";
	}
	
	@RequestMapping(value="/addProductList", method = RequestMethod.POST)
	public String shopStep4(HttpServletRequest httpServletRequest, Model model) {
		String prodName = httpServletRequest.getParameter("p_name");
		System.out.println("p_name:"+prodName);
		int qty = Integer.parseInt(httpServletRequest.getParameter("p_payStock"));
		System.out.println("qty:"+qty);
		
		int total_price = qty * Integer.parseInt(httpServletRequest.getParameter("p_price"));
		System.out.println("total_price:"+total_price);
		HttpSession session = httpServletRequest.getSession(false);
		Product prod = productSessionRepository.selectProduct(prodName);
		prod.setProdStock(qty);
		prod.setProdPrice(total_price);
		ArrayList<Product> list = (ArrayList)session.getAttribute("productList");
		if(list == null) {
			list= new ArrayList();
			list.add(prod);
			session.setAttribute("productList", list);
		}else {
			int confirm = 0;
			for(int i=0; i<list.size();i++) {
				if(prodName.equals(list.get(i).getProdName())) {
					list.get(i).setProdStock(list.get(i).getProdStock()+prod.getProdStock());
					list.get(i).setProdPrice(list.get(i).getProdPrice()+prod.getProdPrice());
					confirm = 1;
				}
			}
			if(confirm ==0) {
				list.add(prod);
				session.setAttribute("productList", list);
			}
		}

		System.out.println("장바구니세션:"+(ArrayList)session.getAttribute("productList"));
		return "addProductListComplete";
	}
	
	@RequestMapping(value="/deleteShoppingBasket", method = RequestMethod.POST)
	public String shopStep4_1(HttpServletRequest httpServletRequest, Model model) {
		String delSB = httpServletRequest.getParameter("del_SB");
		System.out.println("delSB:"+delSB);
		HttpSession session = httpServletRequest.getSession(false);
		ArrayList<Product> list = (ArrayList)session.getAttribute("productList");
		ArrayList<Product> tempList= new ArrayList();
		for(int i=0; i<list.size();i++) {
			if(list.get(i).getProdName().equals(delSB)) {
			}else {
				tempList.add(list.get(i));
			}
		}
		session.removeAttribute("productList");
		if(tempList.size() == 0) {
			session.removeAttribute("tempList");
		}else {
			session.setAttribute("productList", tempList);
		}
		
		return "ShoppingBasket";
	}
	
	
	@RequestMapping(value="/paying", method = RequestMethod.POST)
	public String shopStep5(HttpServletRequest httpServletRequest, Model model) {
		Date today = new Date();
		HttpSession session = httpServletRequest.getSession(false);
		int qty = 0;
		String total_price = httpServletRequest.getParameter("p_totalprice"); //총 금액
		String m_email = httpServletRequest.getParameter("member_email"); //회원이메일
		String prodName = null;
		//BuyNum 최대값 출력
		int maxBuyNum = buyProductSessionRepository.selectMaxBuyNum().getBuyNum() + 1;
		System.out.println("maxBuyNum:"+maxBuyNum);

		//PayNum 최대값 출력
		int maxPayNum = paymentSessionRepository.selectMaxPayNum().getBuyNum() + 1;
		System.out.println("maxPayNum:"+maxPayNum);
		
		String howPay = httpServletRequest.getParameter("kyejae"); //결제방법
		String rv_name = httpServletRequest.getParameter("rcvr_nm"); //받는사람
		String receiAddr = "("+httpServletRequest.getParameter("sample4_postcode") +") "+
							httpServletRequest.getParameter("sample4_roadAddress") +" "+
							httpServletRequest.getParameter("roadAddress_detail");//주소
		String dlv_msg = httpServletRequest.getParameter("dlv_msg");//배송메시지
		String how_del = "택배"; //배송방법
		
		//구매 DB 넣은 결과
		BuyProduct buyProduct = new BuyProduct(maxBuyNum, today, total_price, how_del, rv_name, receiAddr, m_email);
		int buyResult = buyProductSessionRepository.insertBuyProduct(buyProduct);
		System.out.println("buyResult:"+buyResult);
		
		//결제 DB 넣은 결과
		Payment payment = new Payment(maxPayNum, maxBuyNum, howPay, Integer.parseInt(total_price), dlv_msg);
		int payResult = paymentSessionRepository.insertPayment(payment);
		System.out.println("payResult:"+payResult);
		int listResult =0;
		qty = Integer.parseInt(httpServletRequest.getParameter("qty")); //수량
		prodName = httpServletRequest.getParameter("prod_name"); //물건이름	
			
		//구매리스트 DB 넣은 결과
		BuyList buyList = new BuyList(maxBuyNum, prodName, qty);
		int temp = buyListSessionRepository.insertBuyList(buyList);
		listResult = temp;
		System.out.println("listResult:"+listResult);
		model.addAttribute("result", listResult);
			
		session.removeAttribute("productList");
		
		return "payComplete";
	}
	
	@RequestMapping(value="/paying2", method = RequestMethod.POST)
	public String shopStep5_1(HttpServletRequest httpServletRequest, Model model) {
		Date today = new Date();
		HttpSession session = httpServletRequest.getSession(false);
		ArrayList<Product> list = null;
		int qty = 0;
		String total_price = httpServletRequest.getParameter("p_totalprice"); //총 금액
		String m_email = httpServletRequest.getParameter("member_email"); //회원이메일
		String prodName = null;
		//BuyNum 최대값 출력
		int maxBuyNum = buyProductSessionRepository.selectMaxBuyNum().getBuyNum() + 1;
		System.out.println("maxBuyNum:"+maxBuyNum);

		//PayNum 최대값 출력
		int maxPayNum = paymentSessionRepository.selectMaxPayNum().getBuyNum() + 1;
		System.out.println("maxPayNum:"+maxPayNum);
		
		String howPay = httpServletRequest.getParameter("kyejae"); //결제방법
		String rv_name = httpServletRequest.getParameter("rcvr_nm"); //받는사람
		String receiAddr = "("+httpServletRequest.getParameter("sample4_postcode") +") "+
							httpServletRequest.getParameter("sample4_roadAddress") +" "+
							httpServletRequest.getParameter("roadAddress_detail");//주소
		String dlv_msg = httpServletRequest.getParameter("dlv_msg");//배송메시지
		String how_del = "택배"; //배송방법
		
		//구매 DB 넣은 결과
		BuyProduct buyProduct = new BuyProduct(maxBuyNum, today, total_price, how_del, rv_name, receiAddr, m_email);
		int buyResult = buyProductSessionRepository.insertBuyProduct(buyProduct);
		System.out.println("buyResult:"+buyResult);
		
		//결제 DB 넣은 결과
		Payment payment = new Payment(maxPayNum, maxBuyNum, howPay, Integer.parseInt(total_price), dlv_msg);
		int payResult = paymentSessionRepository.insertPayment(payment);
		System.out.println("payResult:"+payResult);
		int listResult =0;
		
		list = (ArrayList)session.getAttribute("productList");
		for(int i=0; i<list.size();i++){
			qty = list.get(i).getProdStock();
			prodName = list.get(i).getProdName();
			//구매리스트 DB 넣은 결과
			BuyList buyList = new BuyList(maxBuyNum, prodName, qty);
			int temp = buyListSessionRepository.insertBuyList(buyList);
			listResult +=temp;
			model.addAttribute("result", listResult);
		}
		session.removeAttribute("productList");

		return "payComplete";
	}
	
	
	@RequestMapping(value="/ShoppingBasket")
	public String shopStep6(HttpServletRequest httpServletRequest) {
		HttpSession session = httpServletRequest.getSession(false);
		if(session != null) {
			return "ShoppingBasket";
		}
		else {
			return "ShoppingBasketError";
		}
	}
	
	@RequestMapping(value="/AddProduct")
	public String shopStep7() {
		return "addProduct";
	}
	
	@RequestMapping(value="/ModifyProduct")
	public String shopStep8() {
		return "modifyProduct";
	}
}
