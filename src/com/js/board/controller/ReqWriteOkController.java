package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardVO;

public class ReqWriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardVO boardVO = new BoardVO();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		
		HttpSession session = req.getSession();
		
		session.setAttribute("userId", 1L);
		
		boardVO.setBoardType(req.getParameter("reqType"));;
		boardVO.setBoardTitle(req.getParameter("reqTitle"));
		boardVO.setBoardContent(req.getParameter("reqContent"));
		boardVO.setBoardEmail(req.getParameter("reqEmail"));
		boardVO.setBoardUserPhoneNumber(req.getParameter("reqNumber"));
		boardVO.setUserId(Long.parseLong(String.valueOf(session.getAttribute("userId"))));
		

		boardDAO.reqInsert(boardVO);
		
		result.setPath(req.getContextPath() + "/reqBoard.board");
		result.setRedirect(true);
		
		return result;
	}

}
