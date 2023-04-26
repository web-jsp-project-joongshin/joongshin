package com.js.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.mypage.controller.MyBoardListOkController;
import com.js.mypage.controller.MyCommentListOkController;
import com.js.mypage.controller.MyMainOkController;

public class MypageFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("myBoardListOk")) {
			result = new MyBoardListOkController().execute(req, resp);
		} else if (target.equals("myCommentListOk")) {
			result = new MyCommentListOkController().execute(req, resp);
		} else if (target.equals("myMainOk")) {
			result = new MyMainOkController().execute(req, resp);
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