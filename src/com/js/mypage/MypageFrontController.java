package com.js.mypage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.mypage.controller.CheckPwOkController;
import com.js.mypage.controller.MyAccountOkController;
import com.js.mypage.controller.MyBoardListOkController;
import com.js.mypage.controller.MyCommentListOkController;
import com.js.mypage.controller.MyMainOkController;
import com.js.mypage.controller.MyNameChangeController;
import com.js.mypage.controller.MyNameChangeOkController;
import com.js.mypage.controller.MyPasswordChangeController;
import com.js.mypage.controller.MyPasswordChangeLostController;
import com.js.mypage.controller.MyPasswordChangeOkController;
import com.js.mypage.controller.MyResumeChangeOkController;
import com.js.mypage.controller.MyResumeOkController;
import com.js.mypage.controller.WithdrawalController;
import com.js.mypage.controller.WithdrawalOkController;

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
		} else if (target.equals("myAccountOk")) {
			result = new MyAccountOkController().execute(req, resp);
		} else if (target.equals("myNameChange")) {
			result = new MyNameChangeController().execute(req, resp);
		} else if (target.equals("myNameChangeOk")) {
			result = new MyNameChangeOkController().execute(req, resp);
		} else if (target.equals("myPwChange")) {
			result = new MyPasswordChangeController().execute(req, resp);
		} else if (target.equals("checkPwOk")) {
			result = new CheckPwOkController().execute(req, resp);
		} else if (target.equals("myPwChangeOk")) {
			result = new MyPasswordChangeOkController().execute(req, resp);
		} else if (target.equals("myWithdrawal")) {
			result = new WithdrawalController().execute(req, resp);
		} else if (target.equals("myWithdrawalOk")) {
			result = new WithdrawalOkController().execute(req, resp);
		} else if (target.equals("myResumeOk")) {
			result = new MyResumeOkController().execute(req, resp);
		} else if (target.equals("myResumeChangeOk")) {
			result = new MyResumeChangeOkController().execute(req, resp);
		} else if (target.equals("myPwChangeLost")) {
			result = new MyPasswordChangeLostController().execute(req, resp);
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