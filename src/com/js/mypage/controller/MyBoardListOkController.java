package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;

public class MyBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		Long userId = Long.valueOf(req.getParameter("userId"));
		
		JSONArray jsonArray = new JSONArray();
		mypageDAO.selectAllBoardList(userId).stream().map(item -> new JSONObject(item)).forEach(jsonArray::put);
		
		req.setAttribute("userId", userId); // cookie로 관리될 경우 없어도 됩니다.
		req.setAttribute("myBoardList", jsonArray.toString());
		
		result.setPath("templates/mypage-jin/board-list.jsp");
		return result;
	}

}
