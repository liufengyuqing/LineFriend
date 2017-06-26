/**
 * author 刘志伟
 * 2017-6-26
 */
package cn.edu.nwsuaf.entity;

import java.util.List;

/**
 * @author 刘志伟
 *
 * 2017-6-26
 */
public class Cart2 {
	private int id;
	private User user;
	private List<CartItem> cartDetails;//一对多 一个用户对一个购物车，一个购物车对应多个购物项目
	
	@Override
	public String toString() {
		return "Cart2 [cartDetails=" + cartDetails + ", id=" + id + ", user="
				+ user + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<CartItem> getCartDetails() {
		return cartDetails;
	}
	public void setCartDetails(List<CartItem> cartDetails) {
		this.cartDetails = cartDetails;
	}
	
	
	
	

}
