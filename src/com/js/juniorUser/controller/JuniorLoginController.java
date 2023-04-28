/*프론트 컨트롤러에서 필터링되어 넘어와서 로그인을 확인해주는 컨트롤러*/
package com.js.juniorUser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;

public class JuniorLoginController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		String userEmail = null, userPassword = null;
		Result result = new Result();
		
		if(req.getHeader("Cookie") != null){
			Cookie[] cookies = req.getCookies();
			
			for(Cookie cookie: cookies){
				if(cookie.getName().equals("userEmail")) {
					userEmail = cookie.getValue();
				}
				if(cookie.getName().equals("userPassword")) {
					userPassword = cookie.getValue();
				}
			}
		}
		
		if(userEmail != null) {
			req.setAttribute("userEmail", userEmail);
			req.setAttribute("userPassword", userPassword);
			result.setPath("JuniorLoginOk.juniorUser");
			System.out.println("여기야 여기");
		}else {
			
			result.setPath("templates/makepage-hsw/gosuLogin.jsp");
		}
		
		return result;
	}

}
