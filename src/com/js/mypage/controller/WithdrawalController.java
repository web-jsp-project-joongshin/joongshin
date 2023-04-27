package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;

public class WithdrawalController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		Long userId = Long.valueOf(req.getParameter("userId"));
		
		req.setAttribute("userId", userId);
		result.setPath("templates/mypage-jin/withdrawal.jsp");
		return result;
	}
}
