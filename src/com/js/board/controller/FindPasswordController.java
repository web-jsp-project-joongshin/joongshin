package com.js.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.js.Action;
import com.js.Result;
import com.js.board.dao.BoardDAO;
import com.js.user.dao.UserDAO;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class FindPasswordController implements Action {

   @Override
   public Result execute(HttpServletRequest req, HttpServletResponse rep) throws IOException, ServletException {
	  UserDAO userDAO = new UserDAO();
      String userEmail = userDAO.selectEmail(req.getParameter("userEmail"));
      HttpSession sessionE = req.getSession();      //다음페이지에서도 userEmail를 쓰기위해
      Result result = new Result();
      
      result.setRedirect(true);
      
      //      
       if(userEmail == null) {
    	  System.out.println("왜 null이냐");
          result.setPath("/findPassword.user?email=false");
       }
       // 이메일을 찾았을때      
       else {
    	   System.out.println("e메일 찾았어용");
          sessionE.setAttribute("userEmail", userEmail);
          //메일 보내기 시작
            // 메일 인코딩
          String path ="http://localhost:8090/myNameChangeOk.mypage";
          
            final String bodyEncoding = "UTF-8"; //콘텐츠 인코딩
            
            //원하는 메일 제목 작성
            String subject = "중신 비밀번호 재설정";           
            String fromEmail = "joongshin@gmail.com";
            String fromUsername = "admin";
            String toEmail = userEmail; // 콤마(,)로 여러개 나열
            
            final String username = "asdzxc9822@gmail.com"; //구글 계정 이름        
            final String password = "bfiwbhjomxtklszx";
            
            // 메일에 출력할 텍스트
            String html = null;
            StringBuffer sb = new StringBuffer();
            sb.append("<h3>비밀번호 재설정 페이지 링크입니다</h3>\n");
            sb.append("<h4>" + path+ "</h4>");    
            html = sb.toString();
            // 메일 옵션 설정
            Properties props = new Properties();
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");
            try {
              // 메일 서버  인증 계정 설정
              Authenticator auth = new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                  return new PasswordAuthentication(username, password);
                }
              };
              // 메일 세션 생성
              Session session = Session.getDefaultInstance(props, auth);
              // 메일 송/수신 옵션 설정
              Message message = new MimeMessage(session);
              message.setFrom(new InternetAddress(fromEmail, fromUsername));
              message.setRecipients(RecipientType.TO, InternetAddress.parse(toEmail, false));
              message.setSubject(subject);
              message.setSentDate(new Date());
              // 메일 콘텐츠 설정
              Multipart mParts = new MimeMultipart();
              MimeBodyPart mTextPart = new MimeBodyPart();
              MimeBodyPart mFilePart = null;
              // 메일 콘텐츠 - 내용
              mTextPart.setText(html, bodyEncoding, "html");
              mParts.addBodyPart(mTextPart);
              // 메일 콘텐츠 설정
              message.setContent(mParts);
              // 메일 발송
              Transport.send( message );
            } catch ( Exception e ) {
              e.printStackTrace();
            }
          //메일보내기 끝
            result.setPath(req.getContextPath() + "/findPasswordOk2.board");
       }
      
      return result;
   }

}