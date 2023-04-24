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
import com.js.user.dao.UserDAO;

public class JuniorUserController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		Result result = new Result();
		
		
		PrintWriter out = resp.getWriter();
		out.print(result.toString());
		out.close();
		
		return null;
	}

}
