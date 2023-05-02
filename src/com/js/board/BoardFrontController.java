package com.js.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.board.controller.FindPasswordController;
import com.js.board.controller.FindPasswordController2;
import com.js.board.controller.ListOkController;
import com.js.board.controller.ReqOkController;
import com.js.board.controller.ReqWriteOkController;
import com.js.board.controller.comuDetailOkController;
import com.js.board.controller.comuListOkController;
import com.js.board.controller.comuWriteController;
import com.js.board.controller.comujuniListOkController;

public class BoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;

		if (target.equals("listOk")) {
			result = new ListOkController().execute(req, resp);

		} else if (target.equals("comuwrite")) {
			result = new Result();
			result.setPath("templates/community-users-wmoon/write.jsp");

		} else if (target.equals("comuWriteOk")) {
			result = new comuWriteController().execute(req, resp);

		} else if (target.equals("comudetailOk")) {
			result = new comuDetailOkController().execute(req, resp);

		} else if (target.equals("comulistOk")) {
			System.out.println("�씪諛섏쑀��");
			result = new comuListOkController().execute(req, resp);

		} else if (target.equals("comujunilistOk")) {
			System.out.println("二쇰땲�뼱�쑀��");
			result = new comujuniListOkController().execute(req, resp);
			
		} else if (target.equals("FindPassword")) {
			System.out.println("�씠硫붿씪 蹂대궡湲�");
			result = new FindPasswordController().execute(req, resp);
			
		} else if (target.equals("findPasswordOk2")) {
			result = new FindPasswordController2().execute(req, resp);
		} else if (target.equals("reqBoard")) {
			result = new ReqOkController().execute(req, resp);

		} else if (target.equals("reqWrite")) {
			result = new Result();
			result.setPath("templates/request-board/form.jsp");

		} else if (target.equals("reqWriteOk")) {
			result = new ReqWriteOkController().execute(req, resp);

		}
		if (result != null) {
			if (result.isRedirect()) {
				resp.sendRedirect(result.getPath());
			} else {
				req.getRequestDispatcher(result.getPath()).forward(req, resp);
			}
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}