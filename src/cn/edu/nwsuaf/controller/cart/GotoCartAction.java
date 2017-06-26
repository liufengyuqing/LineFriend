package cn.edu.nwsuaf.controller.cart;


import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.CartDao;
import cn.edu.nwsuaf.dao.ProductDao;
import cn.edu.nwsuaf.dao.UserDao;
import cn.edu.nwsuaf.entity.Cart;
import cn.edu.nwsuaf.entity.Product;
import cn.edu.nwsuaf.entity.User;
/**
 * @author 刘志伟
 *
 * 2017-6-23
 */
 @Controller
public class GotoCartAction {
	/**
	 * @param request
	 * @param response
	 */
	@RequestMapping("/gotoCart.action")
	public void gotoCart(HttpServletRequest request,HttpServletResponse response){
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		
		
		CartDao dao = ctx.getBean(CartDao.class);
		ProductDao productDao = ctx.getBean(ProductDao.class);
		UserDao  userDao = ctx.getBean(UserDao.class);
		
		//获取商品
		String pid = request.getParameter("id");
		System.out.println("获取商品 +"+pid);
		Product p = productDao.findProductById(Integer.parseInt(pid));
		//获取用户
		HttpSession session = request.getSession();
		Integer uid = (Integer) session.getAttribute("userid");//获取userid
		
		System.out.println("获取用户+"+uid);
		User u = userDao.findUserById(uid);
		//获取商品数量
		String count = request.getParameter("num");
		System.out.println("获取商品数量+"+count);
		

		//创建购物车
		Cart cart = new Cart();
		cart.setProduct(p);
		cart.setUser(u);
		cart.setProduct_count(Integer.parseInt(count));
		System.out.println(cart.toString());
		//加入数据库购物车表
		dao.addCart(cart);
		//跳转到购物页面
		
		try {
			response.sendRedirect("showCart.action");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//return "userCart";
	}
}
