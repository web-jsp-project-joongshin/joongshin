package com.js.mypage.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.file.dao.ResumeFileDAO;
import com.js.file.domain.ResumeFileVO;
import com.js.juniorUser.domain.JuniorUserVO;
import com.js.mypage.dao.MypageDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MyResumeChangeOkController implements Action {

	@Override
	public Result execute(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
		MypageDAO mypageDAO = new MypageDAO();
		ResumeFileDAO resumeFileDAO = new ResumeFileDAO();
		JuniorUserVO juniorUserVO = new JuniorUserVO();
		ResumeFileVO resumeFileVO = new ResumeFileVO();
		Result result = new Result();
		HttpSession session = req.getSession();
		
		Long userId = (Long)session.getAttribute("userId");
		Path path = null;
		
		String root = req.getServletContext().getRealPath("/") + "upload/resume/";
		int fileSize = 1024 * 1024 * 20;

		MultipartRequest multipartRequest = new MultipartRequest(req, root, fileSize, "UTF-8", new DefaultFileRenamePolicy());
		
		juniorUserVO.setUserId(userId);
		juniorUserVO.setUserCareerYears(Integer.parseInt(multipartRequest.getParameter("userCareerYears")));
		juniorUserVO.setUserResume(multipartRequest.getParameter("userResume"));

		mypageDAO.updateResume(juniorUserVO);
		
		resumeFileVO.setUserId(userId);
		
		Enumeration<String> inputTypeFileNames = multipartRequest.getFileNames();
		
		while(inputTypeFileNames.hasMoreElements()) {
			String inputTypeFileName = inputTypeFileNames.nextElement();
			String fileSystemName = multipartRequest.getFilesystemName(inputTypeFileName);
			if(fileSystemName == null) {continue;}
			resumeFileVO.setFileSystemName(fileSystemName);
			resumeFileVO.setFileOriginalName(multipartRequest.getOriginalFileName(inputTypeFileName));
			path = Path.of(root + fileSystemName);
			resumeFileVO.setFileSize(Files.size(path));
			
			resumeFileDAO.insert(resumeFileVO);
		}
		
		result.setPath(req.getContextPath() + "/myAccountOk.mypage?userId=" + userId);
		result.setRedirect(true);
		
		return result;
	}

}
