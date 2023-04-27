package com.js.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.board.controller.DetailOkController;
import com.js.board.controller.ListOkController;
import com.js.board.controller.ReqWriteOkController;
import com.js.board.controller.WriteOkController;

public class BoardFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("listOk")) {
			result = new ListOkController().execute(req, resp);
			
		} else if(target.equals("reqWrite")) {
			result = new Result();
			result.setPath("templates/request-board/form.jsp");
			
		} else if(target.equals("reqBoard")) {
			result = new Result();
			result.setPath("templates/request-board/request-board.jsp");
			
		}else if(target.equals("writeOk")) {
			result = new WriteOkController().execute(req, resp);
			
		} else if(target.equals("detailOk")) {
			result = new DetailOkController().execute(req, resp);
			
		} 
		
		if(result != null) {
			if(result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			}else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
