package br.com.netgfix.conf;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AutorizadorInterceptor extends HandlerInterceptorAdapter {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		String requestURI = request.getRequestURI();
		
		if(requestURI.endsWith("login") || requestURI.endsWith("efetuaLogin")){
			return true;
		}
		
		if(request.getSession().getAttribute("usuario") != null){
			return true;
		}
		
		response.sendRedirect("login");
		return false;
	}
	

}
