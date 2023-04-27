package com.js.message.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

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
		
		Map<String, Object> data = new HashMap<>();
		MessageDAO dao = new MessageDAO();
		
		data.put("messageId", Long.valueOf(req.getParameter("messageId")));
		data.put("receive", req.getParameter("receive"));		
		MessageDTO messageDTO = dao.selectOne(data);
		Result result = new Result();
		
		req.setAttribute("userName", messageDTO.getUserName());
		req.setAttribute("messageContents", messageDTO.getMessageContents());
		result.setPath("/templates/message/detail-msg.jsp");
		
		return result;
	}

}
