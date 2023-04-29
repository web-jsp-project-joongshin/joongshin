package com.js.message.controller;

import java.io.IOException;
import java.util.Optional;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.js.Action;
import com.js.Result;
import com.js.message.dao.MessageDAO;
import com.js.message.domain.MessageVO;

public class WriteOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MessageDAO dao = new MessageDAO();
		MessageVO messageVO = new MessageVO();
		HttpSession session = req.getSession();
		
		String contents = req.getParameter("contents");
		Long sendUserId = Long.parseLong(Optional.ofNullable(String.valueOf(session.getAttribute("userId"))).orElse("0"));
		Long recieveUserId = Long.parseLong(Optional.ofNullable(req.getParameter("receiveUserId")).orElse("0"));
		
		messageVO.setSendUserId(sendUserId);
		messageVO.setRecieveUserId(recieveUserId);
		messageVO.setMessageContents(contents);
		dao.insert(messageVO);
		resp.getWriter().print(true);
		
		return null;
	}
}
