package com.js.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;

public class UserListOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		boardDAO.boardSelectAll().stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("users", jsonArray.toString());
		result.setPath("templates/manager-doeunn/userBoardList.jsp");
		
		return result;
	}
}
