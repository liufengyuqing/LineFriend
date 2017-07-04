/**
 * author 刘志伟
 * 2017-6-28
 */
package cn.edu.nwsuaf.controller.order;

import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 刘志伟
 *
 * 2017-6-28
 * @param <Cart>
 */
@Controller
public class SubmitOrderAction<Cart> {
	@RequestMapping("/submitOrder.action")
	public void submitOrder(HttpServletRequest request,HttpServletResponse response){
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		//List<Cart> list = request.getParameterValues(list);
		
		UUID r = UUID.randomUUID();//UUID无构造函数，不可改
		String price = "0.02";
		try {
			response.sendRedirect("toPay.action?orderId="+r.toString()+"&price="+price);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//return "payWay";
		
	}
	
	
}
