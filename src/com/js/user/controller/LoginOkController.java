/*프론트 컨트롤러에서 필터링되어 넘어와서 로그인이 가능한지 확인해주는 컨트롤러
  쿠키에 이메일과 비밀번호를 저장하여 로그인 유지 기능을 제공합니다.
 * */

package com.js.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.user.dao.UserDAO;

public class LoginOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserDAO userDAO = new UserDAO();
		String userEmail = req.getParameter("userEmail");
		String userPassword = req.getParameter("userPassword");
		Long userId = 0L;
		HttpSession session = req.getSession();
		Result result = new Result();
		boolean autoLogin = Boolean.valueOf(req.getParameter("auto-login"));
		result.setRedirect(true);
		
		if(userEmail == null) {
			if(req.getHeader("Cookie") != null){
				Cookie[] cookies = req.getCookies();
				
				for(Cookie cookie: cookies){
					if(cookie.getName().equals("userEmail")) {
						userEmail = cookie.getValue();
					}
					if(cookie.getName().equals("userPassword")) {
						userPassword = cookie.getValue();
					}
					if(cookie.getName().equals("autoLogin")) {
						autoLogin = Boolean.valueOf(cookie.getValue());
					}
				}
			}
		}
		
		userId = userDAO.login(userEmail, userPassword);
		
		if(userId == null) {
//			로그인 실패
			result.setPath(req.getContextPath() + "/login.user?login=false");
		}else {
//			로그인 성공
			session.setAttribute("userId", userId);
			result.setPath(req.getContextPath() + "/listOk.board");
			if(autoLogin) {
				Cookie userEmailInCookie = new Cookie("userEmail", userEmail);
				Cookie userPasswordInCookie = new Cookie("userPassword", userPassword);
				Cookie autoLoginInCookie = new Cookie("autoLogin", String.valueOf(autoLogin));
				resp.addCookie(userEmailInCookie);
				resp.addCookie(userPasswordInCookie);
				resp.addCookie(autoLoginInCookie);
				
			}else {
				if(req.getHeader("Cookie") != null){
					Cookie[] cookies = req.getCookies();
					for(Cookie cookie: cookies){
						if(cookie.getName().equals("autoLogin")) {
							cookie.setMaxAge(0); //초단위
							resp.addCookie(cookie);
						}
					}
				}
			}
		}
		return result;
	}

}






















