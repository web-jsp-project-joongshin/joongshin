package com.js.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardDTO;
import com.js.board.domain.Criteria;
import com.js.board.domain.Search;

public class ListOkCommunityController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		String temp = req.getParameter("page");
		String sort = req.getParameter("sort");
		String type = req.getParameter("type");
		String keyword = req.getParameter("keyword");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		
		
		sort = sort == null ? "recent" : sort;
		
		Search search = new Search(type, keyword);
		Criteria criteria = new Criteria(page, boardDAO.getTotal(search), sort);
		HashMap<String, Object> pagable = new HashMap<String, Object>();
		pagable.put("types", search.getTypes());
		pagable.put("keyword", search.getKeyword());
		
		boardDAO.selectComuAll(pagable).stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("boards", jsonArray.toString());




//		req.setAttribute("total", boardDAO.getTotal(search));
		req.setAttribute("page", page);
		req.setAttribute("sort", sort);
		req.setAttribute("type", type);
		req.setAttribute("keyword", keyword);

		req.setAttribute("total", boardDAO.getTotal(search));
		

		System.out.println("hi");
		result.setPath("templates/community-users-wmoon/community-main.jsp");

		return result;
	}
}









