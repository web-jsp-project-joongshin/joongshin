package com.js.mypage.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.domain.Criteria;
import com.js.comment.domain.CommentCriteria;
import com.js.mypage.dao.MypageDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		JSONArray jsonArray = new JSONArray();
		Result result = new Result();
		
		HttpSession session = req.getSession();
		Long userId = (Long) session.getAttribute("userId");
		String temp = req.getParameter("page");

		int page = temp == null ? 1 : Integer.parseInt(temp);

		Criteria criteria = new Criteria(page, mypageDAO.getTotalBoardList(userId));
		HashMap<String, Object> pagable = new HashMap<String, Object>();

		pagable.put("userId", userId);
		pagable.put("offset", criteria.getOffset());
		pagable.put("rowCount", criteria.getRowCount());

		mypageDAO.selectAllBoardList(pagable).stream().map(item -> new JSONObject(item)).forEach(jsonArray::put);
		req.setAttribute("myBoardList", jsonArray.toString());
		
		req.setAttribute("total", mypageDAO.getTotalCommentList(userId));
		req.setAttribute("page", page);
		req.setAttribute("startPage", criteria.getStartPage());
		req.setAttribute("endPage", criteria.getEndPage());
		req.setAttribute("prev", criteria.isPrev());
		req.setAttribute("next", criteria.isNext());

		result.setPath("templates/mypage-jin/board-list.jsp");
		return result;
	}

}
