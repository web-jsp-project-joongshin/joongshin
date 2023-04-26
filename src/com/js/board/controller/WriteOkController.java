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
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class WriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardVO boardVO = new BoardVO();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		
		HttpSession session = req.getSession();
		String root = req.getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 20;

		MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		boardVO.setBoardTitle(multipartRequest.getParameter("boardTitle"));
		boardVO.setBoardContent(multipartRequest.getParameter("boardContent"));
		boardVO.setUserId((Long)session.getAttribute("userId"));
			
//		boardDAO.insert(boardVO);
		result.setPath(req.getContextPath() + "/listOk.board");
		result.setRedirect(true);
		
		return result;
	}

}










