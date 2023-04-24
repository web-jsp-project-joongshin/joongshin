/*�봽濡좏듃 而⑦듃濡ㅻ윭�뿉�꽌 �븘�꽣留곷릺�뼱 �꽆�뼱���꽌 �씠硫붿씪 �솗�씤�빐二쇰뒗 而⑦듃濡ㅻ윭*/
package com.js.adminUser.controller;

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

public class AdminUserController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		resp.setContentType("text/html;charset=utf-8");
		
		
		
		PrintWriter out = resp.getWriter();
		//out.print();
		out.close();
		
		return null;
	}

}
