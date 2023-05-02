package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;

public class FindPasswordController2 implements Action{
   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse rep) throws IOException, ServletException {
	  System.out.println("여기까지 오면 사실상 문자 발송 된겁니다 ㅎㅎ");
	  BoardDAO boardDAO = new BoardDAO();
      HttpSession session = req.getSession();
      Result result = new Result();
      
      String userEmail = (String)session.getAttribute("userEmail");
      Long userId = (Long)session.getAttribute("userId");
      String userPassword = req.getParameter("userPassword");
      
      result.setRedirect(true);
//      BoardDAO.updatePassword(userPassword, userEmail);
      result.setPath(req.getContextPath() + "/login.user");
//      req.getSession().invalidate();   
      return result;
   }
}