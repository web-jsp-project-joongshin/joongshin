package com.js.board.controller;
//http://localhost:8090/updateOK.admin
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardVO;

public class UpdateBoardOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = new BoardVO();
		Result result = new Result();
		
		Long boardId = Long.valueOf(req.getParameter("boardId"));
		String boardContent = req.getParameter("answer");
		String boardStatus = "답변완료";
		
		System.out.println("ok컨트롤러 들어왔다");
		System.out.println(boardId);
		System.out.println(boardContent);
		
		boardVO.setBoardId(boardId);
		boardVO.setBoardContent(boardContent);
		boardVO.setBoardStatus(boardStatus);
		boardDAO.updateBoard(boardVO);
		
		result.setPath("/listBoardOk.admin");
		return result;
	}
}
