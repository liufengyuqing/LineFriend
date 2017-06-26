package cn.edu.nwsuaf.controller.user;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.UserDao;
import cn.edu.nwsuaf.entity.User;

/**
 * @author 刘志伟
 * 
 *         2017-6-22
 */
@Controller
public class EditUserInfoAction {
	@RequestMapping("/editUserInfo.action")
	public void edit(HttpServletRequest request, HttpServletResponse response,
			User user) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"springMVC.xml");
		UserDao dao = ctx.getBean(UserDao.class);

		HttpSession session = request.getSession();// 获取session
		Integer userid = (Integer) session.getAttribute("userid");// 获取userid

		user.setId(userid);
		
		System.out.println(user.toString());

		dao.editUserInfo(user);

		try {
			response.sendRedirect("findAllAddress.action");// 跳转到我的LINE FRIEND
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
