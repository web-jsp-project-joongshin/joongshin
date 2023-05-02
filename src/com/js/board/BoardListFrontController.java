package com.js.board;
//http://localhost://listBoardOk.admin
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.board.controller.BoardDeleteOKController;
import com.js.board.controller.JuniorDetailController;
import com.js.board.controller.ListBoardOkController;
import com.js.board.controller.ListJuniorBoardOkController;
import com.js.board.controller.ListUserBoardOkController;
import com.js.board.controller.UpdateBoardListController;
import com.js.board.controller.UpdateBoardOkController;
import com.js.board.controller.UserDeatilController;

public class BoardListFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("listBoardOk")) {
			result = new ListBoardOkController().execute(req, resp);
			
		} else if(target.equals("updateBoardList")) {
			result = new UpdateBoardListController().execute(req, resp);
			
		} else if(target.equals("updateOk")) {
			result = new UpdateBoardOkController().execute(req, resp);
			
		} else if(target.equals("deleteBoard")) {
			result = new BoardDeleteOKController().execute(req, resp);
			
		} else if (target.equals("listJuniorOk")) {
			result = new ListJuniorBoardOkController().execute(req, resp);
		
		} else if (target.equals("listUserOk")) {
			result = new ListUserBoardOkController().execute(req, resp);
			
		} else if (target.equals("listDetailOk")) {
			result = new JuniorDetailController().execute(req, resp);
			
		} else if (target.equals("listUserDetailOk")) {
			result = new UserDeatilController().execute(req, resp);
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
