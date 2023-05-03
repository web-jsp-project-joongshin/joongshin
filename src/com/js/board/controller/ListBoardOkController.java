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
import com.js.board.domain.Criteria;
import com.js.board.domain.Search;

public class ListBoardOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		BoardDTO boardDTO = new BoardDTO();
		JSONArray jsonArray = new JSONArray();
		String type = req.getParameter("type");
		String keyword = Optional.ofNullable(req.getParameter("keyword")).orElse("");
		String boardStatus = "답변완료";
		boardStatus = boardDTO.getBoardStatus();
		
		
		boardDAO.selectInquiryList(keyword).stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("type", type);
		req.setAttribute("keyword", keyword);				
		req.setAttribute("boards1", jsonArray.toString());
		req.setAttribute("boardStatus", boardStatus);
		result.setPath("templates/manager-doeunn/inquiriesList.jsp");
		
		return result;
	}

}
