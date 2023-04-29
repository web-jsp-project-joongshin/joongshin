package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;

public class DetailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		Long boardId = Long.valueOf(req.getParameter("boardId"));
//		boardDAO.updateReadCount(boardId);
//
//		req.setAttribute("board", boardDAO.select(boardId));
		
		result.setPath("templates/junior-board/junior-article-view.jsp");
		return result;
	}

}
