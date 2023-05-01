package com.js.message;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.message.controller.MessageListOkController;
import com.js.message.controller.MessageOkController;
import com.js.message.controller.WriteOkController;
import com.js.util.Branch;
import com.js.util.FrontControllerAdapter;
/**
 * /messageListOk.message
 * /messageOk.message
 * /writeOk.message
 */
public class MessageFrontController extends FrontControllerAdapter<MessageFrontController>{

	@Override
	protected MessageFrontController getFrontController() {return this;}
	
	@Branch
	public Result messageListOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		return new MessageListOkController().execute(req, resp);
	}
	
	@Branch
	public Result messageOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		return new MessageOkController().execute(req, resp);
	}
	
	@Branch
	public Result writeOk(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		return new WriteOkController().execute(req, resp);
	}
}
