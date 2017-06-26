package cn.edu.nwsuaf.controller.cart;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.UserAddressDao;
import cn.edu.nwsuaf.entity.User;
import cn.edu.nwsuaf.entity.UserAddress;

 @Controller
public class GotoOrderAction {
	@RequestMapping("/gotoOrder.action")
	public void ShowAllAddress(HttpServletRequest request,HttpServletResponse response){//获取收货地址
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		try {
			response.sendRedirect("showAddress.action");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}	
}
