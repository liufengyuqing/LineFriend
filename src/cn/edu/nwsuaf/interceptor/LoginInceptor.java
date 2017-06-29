package cn.edu.nwsuaf.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInceptor extends HandlerInterceptorAdapter{//implements HandlerInterceptor{
	    public boolean preHandle (HttpServletRequest request,HttpServletResponse response,Object handler) throws Exception{
	    	String username=(String) request.getSession().getAttribute("email");
	    	   if(username == null) {
		            response.sendRedirect(request.getContextPath() + "/toLogin.do");
		            return false;
		        }else{
		        	return true;
		        }
	    }	
	 /*   public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1,
	            Object arg2, ModelAndView arg3) throws Exception {
	        System.out.println("ActionController执行后，还没将处理结果返回时执行");
	    }
	   
	    public void afterCompletion(HttpServletRequest arg0,HttpServletResponse arg1, Object arg2, Exception arg3)
	            throws Exception {
	        System.out.println("ActionController执行后，将处理结果返回后执行");
	    }*/
	    
	    }
