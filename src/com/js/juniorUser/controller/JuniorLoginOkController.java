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
import com.js.user.dao.UserDAO;

public class JuniorLoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		JuniorUserDAO juniorUserDAO = new JuniorUserDAO();
		
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");
		Long userId = 0L;
		HttpSession session = req.getSession();
		Result result = new Result();
		result.setRedirect(true);
		
		if(userEmail == null) {
			if(req.getHeader("Cookie") != null){
				Cookie[] cookies = req.getCookies();
				
				for(Cookie cookie: cookies){
					if(cookie.getName().equals("userEmail")) {
						userEmail = cookie.getValue();
					}
					if(cookie.getName().equals("userPassword")) {
						userPassword = cookie.getValue();
					}
				}
			}
		}
		
		userId = juniorUserDAO.login(userEmail, userPassword);
		if(userId == null) {
//			로그인 실패
			System.out.println("왜 실패냐");
			result.setPath(req.getContextPath() + "/gosuLogin.juniorUser?login=false");
		}else {
	        // 로그인 성공
	        session.setAttribute("userId", userId);
	        
	        // userEmail, userPassword가 "8888"인 경우, 관리자 페이지로 이동
	        if (userEmail.equals("8888") && userPassword.equals("8888")) {
	            result.setPath(req.getContextPath() + "/listBoardOk.admin");
	        } 
//	        아니면 메인페이지 이동
	        else {
	            result.setPath(req.getContextPath() + "/listOk.board");
	        }
	    }
		return result;
	}

}






















