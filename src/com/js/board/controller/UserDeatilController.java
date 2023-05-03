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

public class UserDeatilController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		BoardDTO boardDTO = new BoardDTO();
		Result result = new Result();
		BoardVO boardVO = new BoardVO();
		String boardContent = req.getParameter("boardContent");
		String boardRegisterDate = String.valueOf(req.getParameter("boardRegisterDate"));
		
		
		Long boardId = Long.valueOf(req.getParameter("boardId"));
		
//		boardDTO = boardDAO.select(boardId);
		
		req.setAttribute("boardId", boardId);
		req.setAttribute("boardContent", boardDTO.getBoardContent());
		req.setAttribute("boardContent", boardContent);
		req.setAttribute("boardRegisterDate", boardRegisterDate);
		
		result.setPath("templates/manager-doeunn/userBoardDetail.jsp");
		
		return result;
	}
}
