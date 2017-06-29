package cn.edu.nwsuaf.dao;

import java.util.List;

import cn.edu.nwsuaf.entity.Cart;
import cn.edu.nwsuaf.entity.Product;

/**
 * @author 刘志伟
 *
 * 2017-6-23
 */
public interface ProductDao {
	public Product findProductById(int id);
	public List<Product> findAllProduct();	//home.jsp加载时动态显示商品
	
	/* 陈一婷 */
	public List<Product> findAllProduct1();
	public List<Product> findProductById1(int id);
	public List<Product> findProductByName(String name);
	public List<Product> findProductByCategory(String category);
	public List<Product> findProductByPrice(double price);
	public List<Product> findProductByAddTime(long addTime);
	
	public void addProduct(Product product);
	public void deleteProductById(int id);
	public void updateProductPrice(Product product);
	public void updateProductCategory(Product product);
	public void updateProductInfo(Product product);
}
