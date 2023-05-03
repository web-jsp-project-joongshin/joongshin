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
/*import com.js.board.domain.Criteria;
import com.js.board.domain.Search;*/

public class ReqOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		 
		String temp = req.getParameter("page");
		int page = temp ==null? 1 : Integer.parseInt(temp);
		
		Criteria criteria = new Criteria(page,boardDAO.getReqTotal());
		
		boardDAO.reqSelectAll(criteria).stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("boards", jsonArray.toString());
		req.setAttribute("reqTotal", boardDAO.getReqTotal());
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());
		
		System.out.println(criteria.getEndPage());
		System.out.println(criteria.getStartPage());
		
		
		result.setPath("templates/request-board/request-board.jsp");
		return result;
	}

}
