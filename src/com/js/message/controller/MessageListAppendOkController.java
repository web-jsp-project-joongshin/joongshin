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

public class MessageListAppendOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		
		Result result = new Result();
		HttpSession session = req.getSession();
		Integer page = Integer.parseInt(req.getParameter("start"));
		Long userId = Long.valueOf(Optional.ofNullable(String.valueOf(session.getAttribute("userId"))).orElse("0"));
		Boolean receive = Boolean.valueOf(req.getParameter("receive"));
		String keyword = Optional.ofNullable(req.getParameter("keyword")).orElse("");
		Map<String, Object> data = new HashMap<>();
		MessageDAO dao = new MessageDAO();
		
		data.put("receive", receive);
		data.put("userId", userId);
		data.put("keyword", keyword);
		data.put("start", page);
		System.out.println(data);
		
		List<MessageDTO> messages = dao.selectList(data);
		JSONArray jsonArray = new JSONArray();
		messages.stream().map(message -> {
			JSONObject json = new JSONObject(message);
			try {
				json.put("contentsList", new JSONArray(message.getContentsByLine()));
				json.remove("messageContents");
			} catch (JSONException e) {e.printStackTrace();}
			
			return json;
		}).forEach(jsonArray::put);
		
		System.out.println(jsonArray);
		resp.getWriter().print(jsonArray);
		
		return null;
	}
}
