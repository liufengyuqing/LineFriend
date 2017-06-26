package cn.edu.nwsuaf.controller.product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.edu.nwsuaf.dao.SearchProductDao;
import cn.edu.nwsuaf.entity.Product;

/**
 * 搜索商品
 * @author 张琼
 * 2017-6-22
 */
@Controller
public class SearchProductAction {
	@RequestMapping("/searchProduct.action")
	public String searchProduct(String product_name,
			HttpServletRequest request, HttpServletResponse response) {

		HttpSession session = request.getSession();
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"springMVC.xml");

		SearchProductDao searchProductDao = ctx.getBean(SearchProductDao.class);
	
		String searchContent = "%" + product_name + "%"; // 拼接一下 用于执行sql模糊查询

		List<Product> productList = searchProductDao
				.findProductsByName(searchContent);// 查询商品
		int productTotalCount = productList.size();// 商品总数

		System.out.println(productTotalCount);
		// productTotalCount=searchProductsTotalCountDao.findProductsTotalCountByName(searchContent);
		
		
		int countPage = (productTotalCount / 8) + 1; // 总页数，每页8个商品

		session.setAttribute("productList", productList); // list传过去

		session.setAttribute("countPage", countPage); // 页数传过去

		
		int pageNos=1; //页码；初始为1
		session.setAttribute("pageNos", pageNos);
		
		// productList.get(0).getProduct_name();

		// System.out.println(productList.toString());

		return "GoodsSearch";
	}

/*	public static void main(String[] args) {
		ApplicationContext ctx = new ClassPathXmlApplicationContext(
				"springMVC.xml");
		SearchProductDao searchProductDao = ctx.getBean(SearchProductDao.class);

		
		 * Product p=new Product(); p.setProduct_name("草莓干");
		 
		List<Product> list = searchProductDao.findProductsByName("%" + "草莓干" + "%");
		System.out.println(list.size());
		System.out.println(list.size() / 8 + 1);
		// for (Product product : list) {
		// System.out.println(product);

		// }

		if (list.get(100) == null) {
			System.out.println("dadsads");
		}

	}*/

}
