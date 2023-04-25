package com.js.message.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.json.JSONParser;
import org.json.JSONArray;
import org.json.JSONObject;
import com.js.Action;
import com.js.Result;
import com.js.message.dao.MessageDAO;
import com.js.message.domain.MessageDTO;

public class MessageListOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		List<MessageDTO> messages = null;
		MessageDAO dao = new MessageDAO();
		Result result = new Result();
		
		//TODO ���ǿ��� user id ��������
		Long userId = Long.valueOf(req.getParameter("userId"));
		Boolean isReceivedMsgList = Boolean.valueOf(req.getParameter("receive"));
		
		messages = isReceivedMsgList 
				? dao.selectListByReceiveUserId(userId) 
				: dao.selectListBySendUserId(userId);
		
		JSONArray jsonResult = new JSONArray(messages.stream()
				.map(message -> new JSONObject(message))
				.collect(Collectors.toList())
		);
		
		req.setAttribute("messages", jsonResult.toString());
		req.setAttribute("receive", isReceivedMsgList.toString());
		//System.out.println(userId);
		//System.out.println(req.getParameter("receive"));
		
		result.setPath("/templates/message/msg-list.jsp");
		
		return result;
	}
}
