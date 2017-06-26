package cn.edu.nwsuaf.dao;

import java.util.List;

import cn.edu.nwsuaf.entity.Product;

/**
 * @author 刘志伟
 *
 * 2017-6-23
 */
public interface ProductDao {
	public Product findProductById(int id);
	public List<Product> findAllProduct();	//home.jsp加载时动态显示商品
	
	
	
	
}
