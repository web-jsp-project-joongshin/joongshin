package com.js.message.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;

public class WriteController implements Action{

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		System.out.println("awd");
		result.setPath("/templates/message/write.jsp");
		
		result.setRedirect(true);
		return result;
	}

}
