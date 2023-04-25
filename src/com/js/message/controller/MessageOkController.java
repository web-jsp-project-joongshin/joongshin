package com.js.message.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.message.dao.MessageDAO;
import com.js.message.domain.MessageDTO;

public class MessageOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		
		MessageDAO dao = new MessageDAO();
		Long messageId = Long.valueOf(req.getParameter("messageId"));
		MessageDTO message = dao.selectOne(messageId);
		Result result = new Result();
		
		JSONObject jsonResult = new JSONObject(message);
		
		req.setAttribute("message", jsonResult.toString());
		result.setPath("/templates/message/detail-msg.jsp");
		
		return result;
	}

}
