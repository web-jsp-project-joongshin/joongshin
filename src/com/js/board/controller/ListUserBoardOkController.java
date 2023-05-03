package com.js.board.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardDTO;
import com.js.board.domain.BoardVO;
import com.js.board.domain.Criteria;
import com.js.board.domain.Search;

public class ListUserBoardOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		BoardDTO boardDTO = new BoardDTO();
		JSONArray jsonArray = new JSONArray();
		String type = req.getParameter("type");
		String keyword = Optional.ofNullable(req.getParameter("keyword")).orElse("");
		
		
		boardDAO.listSelectUser(keyword).stream().map(user -> new JSONObject(user)).forEach(jsonArray::put);
		req.setAttribute("users", jsonArray.toString());
		req.setAttribute("type", type);
		System.out.println(type);
		req.setAttribute("keyword", keyword);				
		result.setPath("templates/manager-doeunn/userBoardList.jsp");
		
		return result;
	}
}
