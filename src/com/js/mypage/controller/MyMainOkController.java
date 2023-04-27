package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;

public class MyMainOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
//		Long userId = 0L;
		Long userId = Long.valueOf(req.getParameter("userId"));
		
//		if(userId == null) {
//			if(req.getHeader("Cookie") != null){
//				Cookie[] cookies = req.getCookies();
//				
//				for(Cookie cookie: cookies){
//					if(cookie.getName().equals("userId")) {
//						userId = Long.valueOf(cookie.getValue());
//					}
//				}
//			}
//		}
//		
//		System.out.println(userId);
		
		req.setAttribute("userId", userId); // cookie로 관리될 경우 없어도 됩니다.
		req.setAttribute("userType", mypageDAO.getUserType(userId));
		req.setAttribute("userInfo", new JSONObject(mypageDAO.getUserInfo(userId)).toString());
		
		result.setPath("templates/mypage-jin/mypage-main.jsp");
		return result;
		
	}

}
