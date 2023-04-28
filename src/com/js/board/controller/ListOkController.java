/*
execute()" 메소드 내부에서는 "BoardDAO" 객체를 생성하여 
"selectAll()" 메소드를 호출하여 모든 게시글을 조회합니다.
조회한 게시글을 "JSONObject"로 변환하고, 이를 "JSONArray"에 추가합니다.
그리고 이 "JSONArray"를 "boards"라는 이름으로 HTTP 요청 객체에 저장합니다. 
이후 "Result" 객체를 생성하고, 뷰 페이지의 경로를	
"templates/board/list.jsp"로 설정하여 반환합니다. 
이 클래스는 게시판에서 게시글 목록을 출력하는 데 사용됩니다
이를 통해 웹 애플리케이션에서 게시글 목록을 보여주는 기능을 구현할 수 있습니다.
 */

package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;

public class ListOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		BoardDAO boardDAO = new BoardDAO();
		Result result = new Result();
		JSONArray jsonArray = new JSONArray();
		boardDAO.selectAll().stream().map(board -> new JSONObject(board)).forEach(jsonArray::put);
		req.setAttribute("boards", jsonArray.toString());
		result.setPath("templates/board/list.jsp");
		
		return result;
	}
}
