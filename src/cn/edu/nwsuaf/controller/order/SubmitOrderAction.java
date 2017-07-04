/**
 * author 刘志伟
 * 2017-6-28
 */
package cn.edu.nwsuaf.controller.order;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author 刘志伟
 *
 * 2017-6-28
 */
@Controller
public class SubmitOrderAction {
	@RequestMapping("/order.action")
	public void submitOrder(HttpServletRequest request,HttpServletResponse response){
		try {
			response.sendRedirect("toPay.action");
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//return "payWay";
		
	}
	
	
}
