package com.js.mypage.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;

public class CheckPwOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Long userId = Long.valueOf(req.getParameter("userId"));
		
//		사용자가 입력한 기존 비밀번호
		String inputUserPassword = req.getParameter("inputUserPassword");
//		조회한 기존 비밀번호
		String userPassword = mypageDAO.selectPassword(userId);
		
//		위 두 값이 일치한지 확인
		boolean check = inputUserPassword.equals(userPassword);
		
		JSONObject result = new JSONObject();
		try {
			result.put("check", check);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print(result.toString());
		out.close();
		return null;
	}

}
