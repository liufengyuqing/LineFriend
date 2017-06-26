package cn.edu.nwsuaf.entity;

import java.util.List;

/**
 * @author 刘志伟
 * 
 * 2017-6-23
 */

public class Cart {
	private int id; //购物车编号
	private Product product;  
	private User user;  
    private int product_count;//数量
    
    
    private List <Product> productList;
    
    
	
    
    
    public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getProduct_count() {
		return product_count;
	}
	public void setProduct_count(int productCount) {
		product_count = productCount;
	}
	@Override
	public String toString() {
		return "Cart [id=" + id + ", product=" + product + ", product_count="
				+ product_count + ", user=" + user + "]";
	}
	
    
   
}
