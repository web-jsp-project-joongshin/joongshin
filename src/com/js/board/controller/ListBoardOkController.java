

package com.js.board.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.Criteria;
import com.js.board.domain.Search;


//문우람임
public class ListBoardOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		String sort = req.getParameter("sort");
		String type = req.getParameter("type");
		String keyword = req.getParameter("keyword");
		
		Search search = new Search(type, keyword);
		Criteria criteria = new Criteria(page, boardDAO.getTotal(search), sort);
		HashMap<String, Object> pagable = new HashMap<String, Object>();
		pagable.put("types", search.getTypes());
		pagable.put("keyword", search.getKeyword());
		pagable.put("offset", criteria.getOffset());
		pagable.put("rowCount", criteria.getRowCount());
		pagable.put("sort", sort);
		
		boardDAO.boardSelectAll().stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("boards", jsonArray.toString());
		req.setAttribute("total", boardDAO.getTotal(search));
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());
		req.setAttribute("sort", sort);
		req.setAttribute("type", type);
		System.out.println(type);
		req.setAttribute("keyword", keyword);				
		req.setAttribute("boards1", jsonArray.toString());
		req.setAttribute("page", page);
		result.setPath("templates/manager-doeunn/inquiriesList.jsp");
		
		return result;
	}

}
