package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardVO;

public class comuWriteController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardVO boardVO = new BoardVO();
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		
		//HttpSession session = req.getSession();
		//String root = req.getServletContext().getRealPath("/") + "upload/";


		boardVO.setBoardTitle(req.getParameter("boardTitle"));
		boardVO.setBoardContent(req.getParameter("boardContent"));
//		boardVO.setUserId((Long)session.getAttribute("userId"));
		System.out.println(req.getParameter("boardTitle"));
		System.out.println(req.getParameter("boardContent"));
		boardVO.setUserId(1L);
		boardVO.setBoardType(req.getParameter("boardType"));
		
		result.setPath(req.getContextPath() + "/comulistOk.board");
		result.setRedirect(true);
		
		String boardType = req.getParameter("boardType");
		System.out.println(req.getParameter("boardType"));
		 // boardType에 따른 추가 처리 수행
        if (boardType != null) {
            if (boardType.equals("provider-square")) {
                // 구직일 때의 처리
            	boardVO.setBoardType("구직");
            } else if (boardType.equals("qna")) {
                // 구인일 때의 처리
            	boardVO.setBoardType("구인");
            }
        }
        
        boardDAO.comuinsert(boardVO);
		System.out.println("이게 왜안뎀");

		
		return result;
	}

}










