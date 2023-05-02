package com.js.util;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.js.Result;

public abstract class FrontControllerAdapter<FC> extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String target = req.getRequestURI().replace(req.getContextPath()+"/", "").split("\\.")[0];
		Result result = null;
		
		List<String> branches = Arrays.asList(getFrontController().getClass().getMethods()).stream()
			.filter(method -> method.isAnnotationPresent(Branch.class))
			.map(method -> method.getName())
			.collect(Collectors.toList());
		
		for(String name : branches){
			if(target.equals(name)) {
				System.out.println("target: " + target + ", name:" + name);
				try {
					result = (Result) getFrontController().getClass()
							.getMethod(name, HttpServletRequest.class, HttpServletResponse.class)
							.invoke(getFrontController(), req, resp); 
				} 
				catch (NoSuchMethodException e) {
					System.out.println(name + "컨트롤러 탐색 실패.");
					System.out.println(getFrontController().getClass().getName() + "에다가 메소드 안만든듯?");
					e.printStackTrace();
				} 
				catch (SecurityException e) {e.printStackTrace();} 
				catch (IllegalAccessException e) {e.printStackTrace();} 
				catch (IllegalArgumentException e) {e.printStackTrace();}
				catch (InvocationTargetException e) {e.printStackTrace();}
			}
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
	
	protected abstract FC getFrontController();
}
