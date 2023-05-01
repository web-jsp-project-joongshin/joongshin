package com.js.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.board.domain.BoardDTO;
import com.js.board.domain.Criteria;
<<<<<<< HEAD
/*import com.js.board.domain.Criteria;
import com.js.board.domain.Search;*/
=======
import com.js.board.domain.Search;
>>>>>>> ea2f2b4945bbd37f22cdce408e8ec745bbd44535

public class ReqOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
<<<<<<< HEAD
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
				
		boardDAO.reqSelectAll().stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
=======
		BoardDTO boardDAO = new BoardDTO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
>>>>>>> ea2f2b4945bbd37f22cdce408e8ec745bbd44535
		req.setAttribute("boards", jsonArray.toString());
		result.setPath("templates/request-board/request-board.jsp");
		return result;
	}

}
