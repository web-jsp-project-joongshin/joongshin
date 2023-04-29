package com.js.juniorUser;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;
import com.js.juniorUser.controller.JuniorJoinOkController;
import com.js.juniorUser.controller.JuniorLoginController;
import com.js.juniorUser.controller.JuniorLoginOkController;
import com.js.juniorUser.controller.JuniorLogoutController;
import com.js.user.controller.CheckEmailOkController;

public class JuniorUserFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String target = req.getRequestURI().replace(req.getContextPath() + "/", "").split("\\.")[0];
		Result result = null;
		
		if(target.equals("checkEmailOk")) {
			System.out.println("1");
			result = new CheckEmailOkController().execute(req, resp);
		} 
		else if(target.equals("gosuJoin")){
			System.out.println("2");
			result = new Result();
			result.setPath("templates/makepage-hsw/gosuJoin.jsp");
			
		}
		else if(target.equals("joinOk")){
			System.out.println("3");
			result = new JuniorJoinOkController().execute(req, resp);
			
		} else if(target.equals("gosuLogin")){
			System.out.println("4");
			result = new JuniorLoginController().execute(req, resp);
			
		} else if(target.equals("loginOk")) {
			System.out.println("5");
			result = new JuniorLoginOkController().execute(req, resp);
			
		} else if(target.equals("logout")) {
			System.out.println("6");
			result = new JuniorLogoutController().execute(req, resp);
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
