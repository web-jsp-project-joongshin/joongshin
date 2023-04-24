package com.js.message.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.stream.Collectors;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONArray;
import org.json.JSONObject;
import com.js.Action;
import com.js.Result;
import com.js.message.dao.MessageDAO;
import com.js.message.domain.MessageDTO;

public class ReceivedMessageListOkController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		List<MessageDTO> messages = null;
		MessageDAO dao = new MessageDAO();
		PrintWriter out = resp.getWriter();
		
		//TODO 세션에서 user id 가져오기
		Long userId = Long.valueOf(req.getParameter("userId"));
		messages = dao.selectListByReceiveUserId(userId);
		
		JSONArray jsonResult = new JSONArray(messages.stream()
				.map(message -> new JSONObject(message))
				.collect(Collectors.toList())
		);
		
		out.print(jsonResult.toString());
		System.out.println(jsonResult);
		
		return null;
	}
}
