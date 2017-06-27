package cn.edu.nwsuaf.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.UserDao;

@Controller
public class UserDelectAction {
	@RequestMapping("UserDelect.action")
	public String UserDelect(HttpServletRequest request,HttpServletResponse response){
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		UserDao userDao=ctx.getBean(UserDao.class);
		int userId = (Integer) request.getAttribute("userId");//得到用户id;
		System.out.print(userId);
		//通过ID找到用户；
		//调用接口删除用户；
		//删除完成;
		userDao.delectUserById(userId);
		System.out.print("成功删除");
		return "/Admin/UserManage";
		
		
	}
}
