package com.js.mypage.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.mypage.dao.MypageDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyBoardListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		
		String root = req.getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 20;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		HttpSession session = req.getSession();

		Long userId = (Long)session.getAttribute("userId");
		mypageDAO.selectAllBoardList(userId).stream().map(item -> new JSONObject(item)).forEach(jsonArray::put);
		
		req.setAttribute("myBoardList", jsonArray.toString());
		
		result.setPath("templates/mypage-jin/board-list.jsp");
		return result;
	}

}
