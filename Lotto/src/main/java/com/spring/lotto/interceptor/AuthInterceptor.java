package com.spring.lotto.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthInterceptor extends HandlerInterceptorAdapter {
	
	private static final Logger logger = LoggerFactory.getLogger(AuthInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		logger.info("=== preHandle 호출");
		// 로그인 상태 : register 컨트롤러 메소드 실행
		// 로그인 안된 상태 : 로그인 양식으로 redirect, 
		// 컨트롤러 메소드는 실행하지 않음
		
		HttpSession session = request.getSession();
		String member_id = (String) session.getAttribute("login_id");
		logger.info(member_id);
		if(member_id != null) {
			logger.info("로그인 상태!");
			return true;
		} else {
			logger.info("로그인 안된 상태! -> loginGet() 실행하겠슴다 ");
			
			// 로그인 성공 후에 redirect 될 페이지를 세션에 저장
			saveDestination(request);
			response.sendRedirect("../member/login");
			return false; // 컨트롤러를 실행하지 않음
		}
	}
	
	private void saveDestination(HttpServletRequest req) {
		logger.info("saveDestination 호출"); // 로그인이 안되어있다가 로그인을 하고 나면 redirect될 페이지를 기억해주는
		
		String uri = req.getRequestURI();
		logger.info("요쳥 uri : " + uri);
		
		String queryString = req.getQueryString();
		logger.info("쿼리스트링 : " + queryString);
		
		String url = "";
		if(queryString == null ) {
			url = uri;
		} else {
			url = uri + "?" + queryString;
		}
		req.getSession().setAttribute("dest", url);
	}
	
	
}