/*로그아웃 되면서 쿠키에 저장된 값들을 없애주는 컨트롤러
  :)*/

package com.js.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;

public class LogoutController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		Result result = new Result();
		req.getSession().invalidate();
		
		if(req.getHeader("Cookie") != null){
			Cookie[] cookies = req.getCookies();
			for(Cookie cookie: cookies){
				if(cookie.getName().equals("userEmail")) {
					cookie.setMaxAge(0); //초단위
					resp.addCookie(cookie);
				}
				if(cookie.getName().equals("userPassword")) {
					cookie.setMaxAge(0); //초단위
					resp.addCookie(cookie);
				}

			}
		}
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.user");
		return result;
	}

}
