package cn.edu.nwsuaf.controller.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.FoodDao;
import cn.edu.nwsuaf.entity.Food;

/**
 * @author 陈一婷
 */
@Controller
public class FoodSearchAction {
	@RequestMapping("/foodSerch.action")
	public String foodSearch(HttpServletRequest request, HttpServletResponse response)throws ServletException,IOException{
		ApplicationContext ctx = new ClassPathXmlApplicationContext("springMVC.xml");
		FoodDao food=ctx.getBean(FoodDao.class);
		
		List<Food> foodList=food.findAllFood();
		
		request.setAttribute("foodList", foodList);
		
		return "/Admin/ProductManage";
	}
}