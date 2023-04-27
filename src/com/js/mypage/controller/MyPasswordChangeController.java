package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;

public class MyPasswordChangeController implements Action {
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		Long userId = Long.valueOf(req.getParameter("userId"));
		
		req.setAttribute("userId", userId);
		result.setPath("templates/mypage-jin/password-change.jsp");
		return result;
	}
}
