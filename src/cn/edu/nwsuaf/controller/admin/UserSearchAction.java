package cn.edu.nwsuaf.controller.admin;

import java.util.List;

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
 * @author Qian
 *
 */
@Controller
public class UserSearchAction {
	@RequestMapping("/userSearch.action")
	public String userSearch(HttpServletRequest request,HttpServletResponse response){
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
		"springMVC.xml");
		UserDao user=ctx.getBean(UserDao.class);
		
		List<User> userList=user.findAllUser();
		/*HttpSession session=request.getSession();
		session.setAttribute("userList", userList);*/
		request.setAttribute("userList", userList);
		return "/Admin/UserManage";
	}
}
