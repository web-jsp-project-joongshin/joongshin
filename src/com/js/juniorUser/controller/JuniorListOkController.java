package com.js.juniorUser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.juniorUser.dao.JuniorUserDAO;

public class JuniorListOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		JuniorUserDAO juniorUserDAO = new JuniorUserDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		juniorUserDAO.selectJuniorAll().stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("juniors", jsonArray.toString());
		result.setPath("templates/manager-doeunn/juniorBoardList.jsp");
		
		return result;
	
	}
}
