package com.js.mypage.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.comment.domain.CommentCriteria;
import com.js.mypage.dao.MypageDAO;

public class MyCommentListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		Long userId = Long.valueOf(req.getParameter("userId"));
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		CommentCriteria commentCriteria = new CommentCriteria(page, mypageDAO.getTotalCommentList(userId));
		HashMap<String, Object> pagable = new HashMap<String, Object>();
		CommentCriteria criteria = new CommentCriteria(page, mypageDAO.getTotalCommentList(userId));
		
		pagable.put("userId", userId);
		pagable.put("offset", criteria.getOffset());
		pagable.put("rowCount", criteria.getRowCount());
		
		JSONArray jsonArray = new JSONArray();
		mypageDAO.selectAllCommentList(pagable).stream().map(item -> new JSONObject(item)).forEach(jsonArray::put);
		req.setAttribute("myCommentList", jsonArray.toString());
		req.setAttribute("userId", userId);
		req.setAttribute("total", mypageDAO.getTotalCommentList(userId));
		req.setAttribute("page", page);
		req.setAttribute("startPage", commentCriteria.getStartPage());
		req.setAttribute("endPage", commentCriteria.getEndPage());
		req.setAttribute("prev", commentCriteria.isPrev());
		req.setAttribute("next", commentCriteria.isNext());
		
		result.setPath("templates/mypage-jin/comment-list.jsp");
		return result;
	}

}
