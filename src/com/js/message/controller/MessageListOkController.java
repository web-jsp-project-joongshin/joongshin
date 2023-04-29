package com.js.message.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONException;
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
		Map<String, Object> data = new HashMap<>();
		HttpSession session = req.getSession();
		
		session.setAttribute("userId", 3);
		
		//TODO user id by session
		Long userId = Long.valueOf(Optional.ofNullable(String.valueOf(session.getAttribute("userId"))).orElse("0"));
		Boolean receive = Boolean.valueOf(req.getParameter("receive"));
		String keyword = Optional.ofNullable(req.getParameter("keyword")).orElse("");
		
		data.put("userId", userId);
		data.put("receive", receive);
		data.put("keyword", keyword);
		
		messages = dao.selectList(data);
		
//		System.out.println(userId);
//		System.out.println(receive);
//		System.out.println(keyword);
//		System.out.println(messages);
		
		JSONArray jsonResult = new JSONArray();
				
		messages.stream().map(message -> {
			JSONObject json = new JSONObject(message);
			try {
				json.put("contentsList", new JSONArray(message.getContentsByLine()));
				json.remove("messageContents");
			} catch (JSONException e) {e.printStackTrace();}
			
			return json;
		}).forEach(jsonResult::put);
		
		req.setAttribute("messages", jsonResult.toString());
		req.setAttribute("receive", receive.toString());
		if(!keyword.isEmpty()) req.setAttribute("keyword", keyword);
		
		//System.out.println(jsonResult);
		//System.out.println(req.getParameter("receive"));
		
		result.setPath("templates/message/msg-list.jsp");
		
		return result;
	}
}
