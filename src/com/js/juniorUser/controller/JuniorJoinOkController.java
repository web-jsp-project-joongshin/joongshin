/*프론트 컨트롤러에서 필터링되어 넘어와서 회원가입을 확인해주는 컨트롤러*/
package com.js.juniorUser.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Action;
import com.js.Result;
import com.js.juniorUser.dao.JuniorUserDAO;
import com.js.juniorUser.domain.JuniorUserDTO;
import com.js.user.domain.UserVO;

public class JuniorJoinOkController implements Action{
	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		JuniorUserDAO juniorUserDAO = new JuniorUserDAO();
		JuniorUserDTO juniorUserDTO = new JuniorUserDTO();
		UserVO userVO = new UserVO();
		Result result = new Result();
		
		

		
		juniorUserDTO.setUserEmail(req.getParameter("userEmail"));
		juniorUserDTO.setUserPassword(req.getParameter("userPassword"));
		juniorUserDTO.setUserName(req.getParameter("userName"));
		juniorUserDTO.setUserAddress(req.getParameter("userAddress"));
		juniorUserDTO.setUserPhonenumber(req.getParameter("userPhonenumber"));
		
		juniorUserDTO.setUserResume(req.getParameter("userResume"));
		String userCareerYearsParam = req.getParameter("userCareerYears");
		if (userCareerYearsParam != null && !userCareerYearsParam.isEmpty()) {
		    juniorUserDTO.setUserCareerYears(Integer.parseInt(userCareerYearsParam));
		}
		
		
		
		juniorUserDAO.insert(juniorUserDTO);
		
		
		result.setRedirect(true);
		result.setPath(req.getContextPath() + "/gosuLogin.juniorUser");
		System.out.println("주니어 들어옴");
		return result;
	}
}

















