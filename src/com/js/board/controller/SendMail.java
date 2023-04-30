//package com.js.board.controller;
//
//import java.io.IOException;
//import java.util.Properties;
//import javax.mail.Message;
//import javax.mail.MessagingException;
//import javax.mail.Session;
//import javax.mail.Transport;
//import javax.mail.internet.AddressException;
//import javax.mail.internet.InternetAddress;
//import javax.mail.internet.MimeMessage;
//// [END simple_includes]
//
//// [START multipart_includes]
//import java.io.InputStream;
//import java.io.ByteArrayInputStream;
//import java.io.UnsupportedEncodingException;
//import javax.activation.DataHandler;
//import javax.mail.Multipart;
//import javax.mail.internet.MimeBodyPart;
//import javax.mail.internet.MimeMultipart;
//// [END multipart_includes]
//
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//@SuppressWarnings("serial")
//public class SendMail extends HttpServlet {
//
//  @Override
//  public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
//    String type = req.getParameter("type");
//    if (type != null && type.equals("multipart")) {
//      resp.getWriter().print("Sending HTML email with attachment.");
//      sendMultipartMail();
//    } else {
//      resp.getWriter().print("Sending simple email.");
//      sendSimpleMail();
//    }
//  }
//
//  private void sendSimpleMail() {
//    // [START simple_example]
//    Properties props = new Properties();
//    Session session = Session.getDefaultInstance(props, null);
//
//    try {
//      Message msg = new MimeMessage(session);
//      System.out.println("이메일 출력1");
//      msg.setFrom(new InternetAddress("asdzxc9822@aver.com", "Admin"));
//      msg.addRecipient(Message.RecipientType.TO,
//                       new InternetAddress("kimjin9822@naver.com", "jin"));
//      msg.setSubject("Your Example.com account has been activated");
//      msg.setText("This is a test");
//      Transport.send(msg);
//    } catch (AddressException e) {
//    } catch (MessagingException e) {
//    } catch (UnsupportedEncodingException e) {
//      // ...
//    }
//    // [END simple_example]
//  }
//
//  private void sendMultipartMail() {
//    Properties props = new Properties();
//    Session session = Session.getDefaultInstance(props, null);
//
//    String msgBody = "...";
//
//    try {
//    	System.out.println("email222");
//    	Message msg = new MimeMessage(session);
//      msg.setFrom(new InternetAddress("admin@example.com", "Example.com Admin"));
//      msg.addRecipient(Message.RecipientType.TO,
//                       new InternetAddress("user@example.com", "Mr. User"));
//      msg.setSubject("Your Example.com account has been activated");
//      msg.setText(msgBody);
//
//      // [START multipart_example]
//      String htmlBody = "";          // ...
//      byte[] attachmentData = null;  // ...
//      Multipart mp = new MimeMultipart();
//
//      MimeBodyPart htmlPart = new MimeBodyPart();
//      htmlPart.setContent(htmlBody, "text/html");
//      mp.addBodyPart(htmlPart);
//
//      MimeBodyPart attachment = new MimeBodyPart();
//      InputStream attachmentDataStream = new ByteArrayInputStream(attachmentData);
//      attachment.setFileName("manual.pdf");
//      attachment.setContent(attachmentDataStream, "application/pdf");
//      mp.addBodyPart(attachment);
//
//      msg.setContent(mp);
//      // [END multipart_example]
//
//      Transport.send(msg);
//
//    } catch (AddressException e) {
//    } catch (MessagingException e) {
//    } catch (UnsupportedEncodingException e) {
//    }
//  }
//}
//
//
//
//
//
////
////import java.io.IOException;
////import java.util.Properties;
////
////import javax.mail.Authenticator;
////import javax.mail.Message;
////import javax.mail.MessagingException;
////import javax.mail.Session;
////import javax.mail.Transport;
////import javax.mail.internet.InternetAddress;
////import javax.mail.internet.MimeMessage;
////import javax.servlet.RequestDispatcher;
////import javax.servlet.ServletException;
////import javax.servlet.http.HttpServlet;
////import javax.servlet.http.HttpServletRequest;
////import javax.servlet.http.HttpServletResponse;
////
////import com.js.Result;
////
////
////
////public class SendMail extends HttpServlet {
////    private static final long serialVersionUID = 1L;
////
////    public SendMail() {
////        super();
////    }
////
////    public Result execute(HttpServletRequest req, HttpServletResponse resp) {
////        try {
////        	System.out.println("이메일 내부1");
////            req.getRequestDispatcher("/templates/makepage-hsw/findPassword.jsp").forward(req, resp);
////        } catch (ServletException | IOException e) {
////            e.printStackTrace();
////        }
////        return null;
////    }
////    
////    protected void doGet(HttpServletRequest request, HttpServletResponse response)
////    		throws ServletException, IOException {
////    	System.out.println("doget입니당");
////    }
////    
////    
////    
////
////    public void doPost(HttpServletRequest request, HttpServletResponse response)
////            throws ServletException, IOException {
////    	System.out.println("이메일 내부 2");
////        request.setCharacterEncoding("UTF-8");
////        response.setContentType("text/html;charset=UTF-8");
////        response.setCharacterEncoding("UTF-8");
////
////        String m_name = "중신";
////        String m_email = request.getParameter("email");
////        String m_title = "이메일 재설정";
////        String m_content = "새로운 이메일 주소입니다.";
////
////        try {
////        	System.out.println("이메일 보내기 내부");
////            String mail_from = m_name + "<" + m_email + ">";
////            String mail_to = "admin<admin.com>";
////            String title = "이메일 재설정 :: " + m_title;
////            String contents = "보낸 사람 :: " + m_name + "&lt;" + m_email + "&gt;<br><br>" + m_title + "<br><br>"
////                    + m_content;
////
////            mail_from = new String(mail_from.getBytes("UTF-8"), "UTF-8");
////            mail_to = new String(mail_to.getBytes("UTF-8"), "UTF-8");
////
////            Properties props = new Properties();
////            props.put("mail.transport.protocol", "smtp");
////            props.put("mail.smtp.host", "smtp.gmail.com");
////            props.put("mail.smtp.port", "465");
////            props.put("mail.smtp.starttls.enable", "true");
////            props.put("mail.smtp.socketFactory.port", "465");
////            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
////            props.put("mail.smtp.socketFactory.fallback", "false");
////            props.put("mail.smtp.auth", "true");
////
////            Authenticator auth = new SMTPAuthenticator();
////            Session sess = Session.getDefaultInstance(props, auth);
////            MimeMessage msg = new MimeMessage(sess);
////
////            msg.setFrom(new InternetAddress(mail_from));
////            msg.setRecipient(Message.RecipientType.TO, new InternetAddress(mail_to));
////            msg.setSubject(title, "UTF-8");
////            msg.setContent(contents, "text/html; charset=UTF-8");
////            msg.setHeader("Content-type", "text/html; charset=UTF-8");
////
////            Transport.send(msg);
////            
////            RequestDispatcher dispatcher = request.getRequestDispatcher("request_complete.jsp");
////            dispatcher.forward(request, response);
////
////            
////        } catch (Exception e) {
////            response.sendRedirect("request_failed.jsp");
////        }
////    }
////
////    
////
////}
