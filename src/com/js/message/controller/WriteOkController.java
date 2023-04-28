package com.js.message.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.message.dao.MessageDAO;
import com.js.message.domain.MessageVO;

public class WriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		MessageDAO dao = new MessageDAO();
		MessageVO messaggeVO = new MessageVO();
		String contents = req.getParameter("contents");
		
		messaggeVO.setSendUserId(null);
		messaggeVO.setRecieveUserId(null);
		messaggeVO.setMessageContents(contents);
		
		dao.insert(null);
		
		return null;
	}

}
