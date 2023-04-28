//package com.js.board.controller;
//import java.util.Properties;
//
//import javax.mail.Address;
//import javax.mail.Authenticator;
//import javax.mail.Message;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.control.CommandProcess;
//
//public class SendMailAction implements CommandProcess {
//
//	@Override
//	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
//
//		
//		String email = request.getParameter("email");
//		String subject = request.getParameter("subject");
//		String message = request.getParameter("message");
//		
//		Properties p = new Properties(); // 정보를 담을 객체
//		p.put("mail.smtp.host","gmail-smtp.l.google.com"); // 네이버 SMTP
//		
//		p.put("mail.smtp.port", "465");
//		p.put("mail.smtp.starttls.enable", "true");
//		p.put("mail.smtp.auth", "true");
//		p.put("mail.smtp.debug", "true");
//		p.put("mail.smtp.socketFactory.port", "465");
//		p.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
//		p.put("mail.smtp.socketFactory.fallback", "false");
//		// SMTP 서버에 접속하기 위한 정보들
//		
//		//사용자가 관리자에게 문의를 하는 구조 - 결국 나에게 내가 이메일을 보낸다
//		try{
//		    Authenticator auth = new SMTPAuthenticator();
//		    Session ses = Session.getInstance(p, auth);
//		    
//		    ses.setDebug(true);
//		    
//		    MimeMessage msg = new MimeMessage(ses); // 메일의 내용을 담을 객체
//		    msg.setSubject(subject); // 제목
//		    
//		    Address fromAddr = new InternetAddress(email);
//		    msg.setFrom(fromAddr); // 보내는 사람
//		    
//		    Address toAddr = new InternetAddress("didwodn8822@gmail.com");
//		    msg.addRecipient(Message.RecipientType.TO, toAddr); // 받는 사람
//		    
//		    msg.setContent(email+"님께서 "+message, "text/html;charset=UTF-8"); // 내용과 인코딩
//		    
//		    Transport.send(msg); // 전송
//		} catch(Exception e){
//		    e.printStackTrace();
//		    // 오류 발생시 뒤로 돌아가도록
//		    System.out.println("error");
//		}
//
//		
//		
//		
//		request.setAttribute("display","/main/location.jsp");
//		
//		return "/main/main.jsp";
//	}
//
//}
//
//
////    String path ="http://localhost:8090/findPasswordSetting.member";
////    
////    final String bodyEncoding = "UTF-8"; //콘텐츠 인코딩
////    
////    //원하는 메일 제목 작성
////    String subject = "비밀번호 재설정 본인확인";           
////    String fromEmail = "itPocket@gmail.com";
////    String fromUsername = "itPocket";
////    String toEmail = memberEmail; // 콤마(,)로 여러개 나열
////    
////    final String username = "kai6879.dev@gmail.com"; //구글 계정 이름        
////    final String password = "sqsmjzhjxcgcxfob";
////    
////    // 메일에 출력할 텍스트
////    String html = null;
////    StringBuffer sb = new StringBuffer();
////    sb.append("<h3>비밀번호 재설정 페이지 링크입니다</h3>\n");
////    sb.append("<h4>" + path+ "</h4>");    
////    html = sb.toString();
////    // 메일 옵션 설정
////    Properties props = new Properties();    
////    props.put("mail.smtp.starttls.enable", "true");
////    props.put("mail.smtp.host", "smtp.gmail.com");
////    props.put("mail.smtp.auth", "true");
////    props.put("mail.smtp.port", "587");
////    props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
////    props.put("mail.smtp.ssl.protocols", "TLSv1.2");
////    try {
////      // 메일 서버  인증 계정 설정
////      Authenticator auth = new Authenticator() {
////        protected PasswordAuthentication getPasswordAuthentication() {
////          return new PasswordAuthentication(username, password);
////        }
////      };
////      // 메일 세션 생성
////      Session session = Session.getDefaultInstance(props, auth);
////      // 메일 송/수신 옵션 설정
////      Message message = new MimeMessage(session);
////      message.setFrom(new InternetAddress(fromEmail, fromUsername));
////      message.setRecipients(RecipientType.TO, InternetAddress.parse(toEmail, false));
////      message.setSubject(subject);
////      message.setSentDate(new Date());
////      // 메일 콘텐츠 설정
////      Multipart mParts = new MimeMultipart();
////      MimeBodyPart mTextPart = new MimeBodyPart();
////      MimeBodyPart mFilePart = null;
////      // 메일 콘텐츠 - 내용
////      mTextPart.setText(html, bodyEncoding, "html");
////      mParts.addBodyPart(mTextPart);
////      // 메일 콘텐츠 설정
////      message.setContent(mParts);
////      // 메일 발송
////      Transport.send( message );
////    } catch ( Exception e ) {
////      e.printStackTrace();
////    }
//
