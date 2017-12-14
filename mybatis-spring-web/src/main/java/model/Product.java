package model;

import java.util.Date;
import java.util.List;


public class Product {
	private String prodName;
	private String prodCategory;
	private int prodStock;
	private String prodContent;
	private int prodPrice;
	private String prodPic;
	private String cEmail;
	private List<Product> products;



	public Product(String prodName, String prodCategory, int prodStock, String prodContent, int prodPrice,
			String prodPic, String cEmail) {
		this.prodName = prodName;
		this.prodCategory = prodCategory;
		this.prodStock = prodStock;
		this.prodContent = prodContent;
		this.prodPrice = prodPrice;
		this.prodPrice = prodPrice;
		this.cEmail = cEmail;
	}

	public Product() {

	}

	public String getProdName() {
		return prodName;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public String getProdCategory() {
		return prodCategory;
	}

	public void setProdCategory(String prodCategory) {
		this.prodCategory = prodCategory;
	}

	public int getProdStock() {
		return prodStock;
	}

	public void setProdStock(int prodStock) {
		this.prodStock = prodStock;
	}

	public String getProdContent() {
		return prodContent;
	}

	public void setProdContent(String prodContent) {
		this.prodContent = prodContent;
	}

	public int getProdPrice() {
		return prodPrice;
	}

	public void setProdPrice(int prodPrice) {
		this.prodPrice = prodPrice;
	}

	public String getProdPic() {
		return prodPic;
	}

	public void setProdPic(String prodPic) {
		this.prodPic = prodPic;
	}

	public String getcEmail() {
		return cEmail;
	}

	public void setcEmail(String cEmail) {
		this.cEmail = cEmail;
	}

	public List<Product> getProducts() {
		return products;
	}

	public void setProducts(List<Product> products) {
		this.products = products;
	}
	
}