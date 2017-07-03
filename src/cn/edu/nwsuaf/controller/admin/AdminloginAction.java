package cn.edu.nwsuaf.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.AdminDao;
import cn.edu.nwsuaf.entity.Admin;

@Controller
public class AdminloginAction {
	/**
	 * @throws IOException
	 * @throws ServletException
	 *             创建时间：2017-6-26 开发者：黄旭琴
	 * 
	 * @参数： @param userName
	 * @参数： @param password
	 * @参数： @param request
	 * @参数： @return
	 * @return String
	 * @throws
	 */
	@RequestMapping("/Admin/adminlogin.action")
	public String login(String userName, String password,
			HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"springMVC.xml");
		AdminDao adminDao = ctx.getBean(AdminDao.class);
		/*Qian*/
		HttpSession session=request.getSession();
		
		// String encrypt_pwd=EncryptUtil.md5Encrypt(password);
		// //将密码转码后再去和数据库中比较

		System.out.println(userName + "  管理员"+password+"  密码");
		// Admin admin_is_exist = adminDao.findByUserName(userName); //
		// 查email是否在数据库中
		
		Admin user = new Admin();
		user.setAdminName(userName);
		user.setPassword(password);

		Admin admin = adminDao.findByLogin(user);
		//Admin admin = adminDao.findByLogin1(userName,password);
		if (admin == null) {
			return "/Admin/AdminLogin";
		} else {
			/*Qian*/
			session.setAttribute("AdminName", userName);
			System.out.println("userName"+userName);
			return "/Admin/AdminMsg";

		}
		/*
		 * if (admin_is_exist != null) { // 数据库中有这个email; 再查是否email和password匹配
		 * 
		 * Admin admin = adminDao.findByLogin(userName, password); if (admin !=
		 * null) { // 登陆成功
		 * 
		 * // adminLastLogin.setEmail(userName); //
		 * adminDao.updateLastLogin(userLastLogin); //登陆成功就更新最后一次登陆时间 和 // IP
		 * 
		 * // boolean isVerified = IsVerifyEmail.isVerifyEmail(userName); // //
		 * 判断是否验证过邮箱了
		 * 
		 * return "AdminMsg"; // 跳主页面
		 * 
		 * } else { // 用户名密码不对 request.setAttribute("loginError", "登录失败");
		 * return "AdminLogin";// TODO //跳回登录页面 //
		 * request.getRequestDispatcher("/page/UserLogin.jsp").forward(request,
		 * // response); }
		 * 
		 * } else { // 数据库中没有这个email request.setAttribute("loginError",
		 * "该用户未注册"); return "AdminLogin";// TODO 这里要跳回登录页面 需要将登录页面改为jsp //
		 * request.getRequestDispatcher("/page/UserLogin.jsp").forward(request,
		 * // response);
		 * 
		 * }
		 * 
		 * }
		 */
	}
}
