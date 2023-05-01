package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;

public class WithdrawalOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		HttpSession session = req.getSession();

		Long userId = (Long)session.getAttribute("userId");
		
		mypageDAO.deleteUser(userId);
		
		req.getSession().invalidate();
		
		if(req.getHeader("Cookie") != null){
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie: cookies){
				if(cookie.getName().equals("userEmail")) {
					cookie.setMaxAge(0); //초단위
					resp.addCookie(cookie);
				}
				if(cookie.getName().equals("userPassword")) {
					cookie.setMaxAge(0); //초단위
					resp.addCookie(cookie);
				}

			}
		}
		
		result.setRedirect(true);
		result.setPath("/listOk.board");
		return result;
	}

}
