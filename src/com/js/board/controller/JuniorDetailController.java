package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardDTO;
import com.js.board.domain.BoardVO;

public class JuniorDetailController implements Action{
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		BoardDTO boardDTO = new BoardDTO();
		Result result = new Result();
		BoardVO boardVO = new BoardVO();
		
		
		Long boardId = Long.valueOf(req.getParameter("boardId"));
		
		boardDTO = boardDAO.select(boardId);
		String boardContent = boardDTO.getBoardContent();
		String boardRegisterDate = boardDTO.getBoardRegisterDate();
		String userName = boardDTO.getUserName();
		String boardTitle = boardDTO.getBoardTitle();
		
		req.setAttribute("boardId", boardId);
		req.setAttribute("boardContent", boardContent);
		req.setAttribute("userName", userName);
		req.setAttribute("boardTitle", boardTitle);
		req.setAttribute("boardRegisterDate", boardRegisterDate);
		
		result.setPath("templates/manager-doeunn/juniorBoardDetail.jsp");
		
		return result;
	}
}
