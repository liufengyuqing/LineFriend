package cn.edu.nwsuaf.controller.order;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cn.edu.nwsuaf.dao.OrderDao;
import cn.edu.nwsuaf.dao.UserAddressDao;
import cn.edu.nwsuaf.entity.Order;
import cn.edu.nwsuaf.entity.OrderDetails;
import cn.edu.nwsuaf.entity.Orders;
import cn.edu.nwsuaf.entity.User;

/**
 * 我的订单
 * 
 * @author 吴思颖 2017-6-22
 */
@Controller
public class UserOrderAction {
	@RequestMapping("/userOrder.action")
	public String searchProduct(String product_name,
			HttpServletRequest request, HttpServletResponse response) {
		System.out.println("LOG : userOrder.action");
		HttpSession session = request.getSession();
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"springMVC.xml");
		UserAddressDao dao = ctx.getBean(UserAddressDao.class);
		Integer user_id = (Integer) session.getAttribute("userid");// 获取userid
		// 登录验证

		if (user_id == null) {
			return "UserLogin";
		} else { // 自定义userid
			user_id = 1;
			// (1, 'zq11', ' 123', 2, '1.1.1.1', 4324234, 'y', '2134214'); }

			// 自定义设置，测试

			User user = dao.findUserAddressById(user_id);// 得到用户
			// 根据用户查询我的订单

			OrderDao orderDao = ctx.getBean(OrderDao.class);// 实例化

			// 需要根据dao查询得到order对象List
			
			List orders = new ArrayList<Order>();
			orders = orderDao.findUserOrder();

			request.setAttribute("orders", orders);
			request.setAttribute("user", user);
			return "UserOrder";
		}
	}
}
