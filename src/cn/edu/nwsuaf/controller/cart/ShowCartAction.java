/**
 * author 刘志伟
 * 2017-6-26
 */
package cn.edu.nwsuaf.controller.cart;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.CartDao;
import cn.edu.nwsuaf.entity.Product;

/**
 * @author 刘志伟
 *
 * 2017-6-26
 */
@Controller
public class ShowCartAction {
	@RequestMapping("/showCart.action")
	public String showCart(HttpServletRequest request,HttpServletResponse response){
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		CartDao cartDao = ctx.getBean(CartDao.class);
		
		HttpSession session = request.getSession();
		Integer uid = (Integer) session.getAttribute("userid");//获取userid
		System.out.println("获取用户+"+uid);
		
		//List<Product> productList = cartDao.findAllProduct(uid);
	
		//request.setAttribute("productList", productList);
		return "userCart";
	}
	
	

}
