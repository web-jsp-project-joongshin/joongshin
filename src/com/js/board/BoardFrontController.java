package com.js.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.board.controller.comuDetailOkController;
import com.js.board.controller.comuListOkController;
import com.js.board.controller.comujuniListOkController;
import com.js.board.controller.ListOkController;

public class BoardFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");

		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;

		if (target.equals("listOk")) {
			result = new ListOkController().execute(req, resp);

		} else if (target.equals("write")) {
			result = new Result();
			result.setPath("templates/community-users-wmoon/write.jsp");

		} else if (target.equals("writeOk")) {
			//result = new WriteOkController().execute(req, resp);

		} else if (target.equals("detailOk")) {
			result = new comuDetailOkController().execute(req, resp);

		} else if (target.equals("comulistOk")) {
			result = new comuListOkController().execute(req, resp);
		} else if (target.equals("comujunilistOk")) {
			result = new comujuniListOkController().execute(req, resp);
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
