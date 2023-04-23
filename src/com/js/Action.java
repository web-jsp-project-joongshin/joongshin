//execute()메소드를 정의 HttpServletRequest와 HttpServletResponse 객체를 매개변수로 받음
// 요청을 처리하는 비지니스 로직을 담당, 결과를 result 객체로 반환
package com.js;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Action {
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException;
}
