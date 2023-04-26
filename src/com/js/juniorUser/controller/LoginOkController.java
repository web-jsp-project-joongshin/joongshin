package com.js.juniorUser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.juniorUser.dao.JuniorUserDAO;

public class LoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
//		JuniorUserDAO juniorUserDAO = new JuniorUserDAO();
//		String userEmail = req.getParameter("userEmail");
//		String userPassword = req.getParameter("userPassword");
//		Long userId = 0L;
//		HttpSession session = req.getSession();
//		Result result = new Result();
//		result.setRedirect(true);
//		
//		if(userEmail == null) {
//			if(req.getHeader("Cookie") != null){
//				Cookie[] cookies = req.getCookies();
//				
//				for(Cookie cookie: cookies){
//					if(cookie.getName().equals("userEmail")) {
//						userEmail = cookie.getValue();
//					}
//					if(cookie.getName().equals("userPassword")) {
//						userPassword = cookie.getValue();
//					}
//				}
//			}
//		}
//		
//		userId = juniorUserDAO.login(userEmail, userPassword);
//		System.out.println(userId);
//		if(userId == null) {
////			로그인 실패
//			result.setPath(req.getContextPath() + "/login.juniorUser?login=false");
//		}else {
////			로그인 성공
//			session.setAttribute("userId", userId);
//			result.setPath(req.getContextPath() + "/listOk.board");
//		}
//		return result;
		return null;
	}

}






















