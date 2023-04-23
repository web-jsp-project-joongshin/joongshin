/*
 인스턴스 변수 "path"와 "isRedirect"  
 이 두 변수는 각각 문자열과 boolean값을 저장한다. 
 
 "Result" 클래스는 컨트롤러가 처리한 결과를 담아서 뷰로 전달하기 위한 용도로 사용하기 위함 
 이 클래스를 사용하면 컨트롤러와 뷰 간의 의존성을 줄이고, 유연한 애플리케이션을 만들 수 있음.
 */
package com.js;

public class Result {
	private String path;
	private boolean isRedirect;
	
	public Result() {;}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public boolean isRedirect() {
		return isRedirect;
	}

	public void setRedirect(boolean isRedirect) {
		this.isRedirect = isRedirect;
	}
}
