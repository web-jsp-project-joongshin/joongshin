/*프론트 컨트롤러에서 필터링되어 넘어와서 이메일 확인해주는 컨트롤러*/
package com.js.juniorUser.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.juniorUser.dao.JuniorUserDAO;

public class CheckEmailOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		String userEmail = req.getParameter("userEmail");
		JuniorUserDAO userDAO = new JuniorUserDAO();
		boolean check = userDAO.selectEmail(userEmail) == null;
		JSONObject result = new JSONObject();
		
		try {
			result.put("check", check);
		} catch (JSONException e) {
			e.printStackTrace();
		}
		
		PrintWriter out = resp.getWriter();
		out.print(result.toString());
		out.close();
		
		return null;
	}

}
