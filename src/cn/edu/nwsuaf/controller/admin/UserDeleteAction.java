package cn.edu.nwsuaf.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.UserDao;

@Controller
public class UserDeleteAction {
	@RequestMapping("/Admin/UserDelect.action")
	public String UserDelect(String userId,HttpServletRequest request,HttpServletResponse response){
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		UserDao userDao=ctx.getBean(UserDao.class);
		//int userId = (Integer) request.getAttribute("userId2");//得到用户id;
		System.out.print("删除用户ID"+userId);
		//通过ID找到用户；
		//调用接口删除用户；
		//删除完成;
		int Id=Integer.parseInt(userId);
		try {
			
			userDao.deleteUserById(Id);
			System.out.print("成功删除");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			//e.printStackTrace();
			System.out.print("删除失败");
		}
		
		return "/Admin/UserManage";
		
		
	}
}
