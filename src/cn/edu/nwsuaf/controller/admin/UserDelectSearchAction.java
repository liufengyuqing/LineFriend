package cn.edu.nwsuaf.controller.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.UserDao;
import cn.edu.nwsuaf.entity.User;

 @Controller
public class UserDelectSearchAction {
	 @RequestMapping("/Admin/userDelectSearch.action")
	 public String userSearch(HttpServletRequest request,HttpServletResponse response){
			ApplicationContext ctx = new ClassPathXmlApplicationContext(
			"springMVC.xml");
			UserDao userDao=ctx.getBean(UserDao.class);
			List<User> userList2=null;
			//HttpSession session=request.getSession();
			//User user=null;
			String sel=request.getParameter("sel");
			String condtion=request.getParameter("condtion");
			System.out.print(sel);
			System.out.print(condtion);
			if(sel.equals("1")){
				//查询所有用户
				System.out.print("oK");
				userList2=userDao.findAllUser();
			}
			if(sel.equals("2")){
				//邮箱
				System.out.print("oK");
				userList2=userDao.findUserByEmail(condtion);
			}
			if(sel.equals("3")){
				//性别
				System.out.print("oK");
				userList2=userDao.findUserBySex(condtion);
			}
			if(sel.equals("4")){
				//ID
				System.out.print("oK");
				userList2=userDao.findUserById2(Integer.parseInt(condtion));
			}
			
			if(sel.equals("5")){
				//昵称
				System.out.print("oK");
				userList2=userDao.findUserByNickName(condtion);
			}
			
			/*if(userList==null){
				request.setAttribute("userNull", "没有此用户的信息");
			}else{
				request.setAttribute("user", user);
			}*/
			
			if(userList2==null){
				request.setAttribute("userListNull", "没有此用户的信息");
			}else{
				request.setAttribute("userList2", userList2);

			}
			return "/Admin/UserManage";
		}
}