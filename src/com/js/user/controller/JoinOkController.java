/*프론트 컨트롤러에서 필터링되어 넘어와서 회원가입을 확인해주는 컨트롤러*/
package com.js.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.user.dao.UserDAO;
import com.js.user.domain.UserVO;

public class JoinOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		UserDAO userDAO = new UserDAO();
		UserVO userVO = new UserVO();
		Result result = new Result();
	
		
		userVO.setUserEmail(req.getParameter("userEmail"));
		userVO.setUserPassword(req.getParameter("userPassword"));
		userVO.setUsername(req.getParameter("userUsername"));
		
	  
		
		userDAO.insert(userVO);
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/login.user");
		
		return result;
	}
}

















