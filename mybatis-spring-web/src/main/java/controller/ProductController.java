package controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import model.BuyList;
import model.BuyProduct;
import model.JoinBuyListABuyProduct;
import model.Member;
import model.Payment;
import model.Product;
import repository.BuyListSessionRepository;
import repository.BuyProductSessionRepository;
import repository.JoinBuyListABuyProductRepository;
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
	
	@Autowired
	JoinBuyListABuyProductRepository joinBuyListABuyProductRepository;
	//마이바티스와 DB 정보를 받아서  
	//정보들
	
	
	@RequestMapping(value="/Main_shop")
	public String shopStep1(Model model) {
		List<Product> products = productSessionRepository.selectProductList();

		model.addAttribute("products", products);
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
		Member member = (Member) session.getAttribute("loginInfo");
		
		String m_email = member.getmEmail(); //회원이메일
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
		
		Product product = productSessionRepository.selectProduct(prodName);
		product.setProdStock(product.getProdStock() - qty);
		int result = productSessionRepository.updateProduct(product);
		
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
		Member member = (Member) session.getAttribute("loginInfo");
		
		
		String m_email = member.getmEmail(); //회원이메일
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
			
			Product product = productSessionRepository.selectProduct(prodName);
			product.setProdStock(product.getProdStock() - qty);
			int result = productSessionRepository.updateProduct(product);
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
	
	@RequestMapping(value="/AddProductComplete")
	public String shopStep7_1(HttpServletRequest httpServletRequest, MultipartFile uploadFile,  Model model) throws IOException {
		String product_name = httpServletRequest.getParameter("product_name");
		String category = httpServletRequest.getParameter("category");
		int product_stock = Integer.parseInt(httpServletRequest.getParameter("product_stock"));
		int product_price = Integer.parseInt(httpServletRequest.getParameter("product_price"));
		String product_content = httpServletRequest.getParameter("product_content");
		
		
		MultipartHttpServletRequest multipartRequest=(MultipartHttpServletRequest)httpServletRequest;
		MultipartFile file = multipartRequest.getFile("file");
		String uploadPath = httpServletRequest.getSession().getServletContext().getRealPath("/") + "img\\product\\";
		System.out.println("uploadPath:"+uploadPath);
		HttpSession session = httpServletRequest.getSession(false);
		Member member = (Member) session.getAttribute("loginInfo");
		File convFile = new File( file.getOriginalFilename());
		int pos = convFile.getName().lastIndexOf( "." );
		String ext = convFile.getName().substring( pos + 1 );

		System.out.println("conv path:"+convFile.getAbsolutePath());
		System.out.println("product_name : "+product_name);
		System.out.println("category : "+category);
		System.out.println("product_stock : "+product_stock);
		System.out.println("product_price : "+product_price);
		System.out.println("product_content : "+product_content);
		System.out.println("file name:"+file.getName());
		System.out.println("file path:"+file.getOriginalFilename());
		String savedName = member.getmEmail()+"_"+product_name+"."+ext;
		System.out.println("저장이름:"+savedName);
		System.out.println("지금위치:"+uploadPath);
		// 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		// FileCopyUtils.copy(바이트배열, 파일객체)
		FileCopyUtils.copy(file.getBytes(), new File(uploadPath, savedName));
		System.out.println("파일 복사 완료");
		
		Product product = new Product(product_name, category, product_stock, product_content, product_price,
				(uploadPath + savedName), member.getmEmail());
		System.out.println("product_name"+product.getProdName());
		System.out.println("category"+product.getProdCategory());
		System.out.println("product_stock"+product.getProdStock());
		System.out.println("product_content"+product.getProdContent());
		System.out.println("product_price"+product.getProdPrice());
		System.out.println("prod_pic"+product.getProdPic());
		System.out.println("email"+product.getcEmail());
		
		
		int result = productSessionRepository.insertProduct(product);
		
		model.addAttribute("result", result);
		
		return "addProductListComplete";
	}
	
	@RequestMapping(value="/CompanyProductList")
	public String shopStep8(HttpServletRequest httpServletRequest, Model model) {
		HttpSession session = httpServletRequest.getSession(false);
		Member member = (Member) session.getAttribute("loginInfo");
		List<Product> products = productSessionRepository.selectCompanyProductList(member.getmEmail());
		model.addAttribute("products", products);
		model.addAttribute("member", member);
		return "companyProductList";
	}
	
	@RequestMapping(value="/ModifyProduct")
	public String shopStep9(HttpServletRequest httpServletRequest, Model model) {
		HttpSession session = httpServletRequest.getSession(false);
		Member member = (Member) session.getAttribute("loginInfo");
		String p_name = httpServletRequest.getParameter("p_name");
		Product product = productSessionRepository.selectProduct(p_name);
		System.out.println("product:"+product);
		model.addAttribute("product",product);
		model.addAttribute("member",member);
		return "modifyProduct";
	}
	
	@RequestMapping(value="/ModifyProductComplete")
	public String shopStep10(HttpServletRequest httpServletRequest, Model model) {
		String product_name = httpServletRequest.getParameter("product_name");
		String category = httpServletRequest.getParameter("product_category");
		int product_stock = Integer.parseInt(httpServletRequest.getParameter("product_stock"));
		int product_price = Integer.parseInt(httpServletRequest.getParameter("product_price"));
		String product_content = httpServletRequest.getParameter("product_content");
		Product product_hidden = productSessionRepository.selectProduct(product_name);
		
		Product product = new Product(product_name, category, product_stock, product_content, product_price, product_hidden.getProdPic(), product_hidden.getcEmail());

		System.out.println("product_name"+product_name);
		System.out.println("category"+category);
		System.out.println("product_stock"+product_stock);
		System.out.println("product_price"+product_price);
		System.out.println("product_content"+product_content);
		
		int result = productSessionRepository.updateProduct(product);

		model.addAttribute("result", result);

		return "modifyProductResult";
	}
	
	@RequestMapping(value="/DeleteProduct")
	public String shopStep11(HttpServletRequest httpServletRequest, Model model) {
		String product_name = httpServletRequest.getParameter("product_name");
		Product product = productSessionRepository.selectProduct(product_name);

		File file = new File(product.getProdPic());
		if(file.exists()) {
			file.delete();
		}
		int result = productSessionRepository.deleteProduct(product);

		model.addAttribute("result", result);
		return "deleteProductResult";
	}
	
	
	@RequestMapping(value="/BoughtList")
	public String shopStep12(HttpServletRequest httpServletRequest, Model model) {
		HttpSession session = httpServletRequest.getSession(false);
		Member member = (Member) session.getAttribute("loginInfo");

		List<JoinBuyListABuyProduct> joinBuyListABuyProduct = joinBuyListABuyProductRepository.selectBuyProductListEmail(member.getmEmail());
		
		
		model.addAttribute("joinBuyListABuyProduct", joinBuyListABuyProduct);
		return "boughtList";
	}
	
	
}
