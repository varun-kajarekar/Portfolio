package com.Controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SendMail
 */
@WebServlet("/SendMail")
public class SendMail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SendMail() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch(action) {
		case "sendmail":
			sendmail(request,response);
			break;
	
			
	}
		

	}
	private void sendmail(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String subject = request.getParameter("subject");
		String msg = request.getParameter("message");
		String user = request.getParameter("user");
		String From_user = request.getParameter("email");
		
		String html1 = "    					<!DOCTYPE html>\r\n"
				+ "<html>\r\n"
				+ "<body>\r\n";
		String html2 = "<h3>"+msg+"</h3><br>"
						+"<p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; From : "+From_user+"</p>"
						+"</body>"
						+"</html>";
				
		String message = html1+html2;
		Email_Info(user,message,subject);
		request.setAttribute("true", message);
		response.sendRedirect("UserWebsite?action=view&user="+user+"#contact");

	}
	public static void Email_Info(String to,String msg,String subject){
	        final String username = "varun5codechef@gmail.com";

	        // change accordingly
	        final String password = "varun7887";

	        // or IP address
	        final String host = "local host";

	        // Get system properties
	        Properties props = new Properties();

	        // enable authentication
	        props.put("mail.smtp.auth", "true");

	        // enable STARTTLS
	        props.put("mail.smtp.starttls.enable", "true");

	        // Setup mail server
	        props.put("mail.smtp.host", "smtp.gmail.com");

	        // TLS Port
	        props.put("mail.smtp.port", "587");

	        // creating Session instance referenced to
	        // Authenticator object to pass in
	        // Session.getInstance argument
	        Session session = Session.getInstance(props,
	                new javax.mail.Authenticator() {

	                    //override the getPasswordAuthentication method
	                    protected PasswordAuthentication
	                    getPasswordAuthentication() {

	                        return new PasswordAuthentication(username,
	                                password);
	                    }
	                });

	        try {

	            // compose the message
	            // javax.mail.internet.MimeMessage class is
	            // mostly used for abstraction.
	            Message message = new MimeMessage(session);

	            // header field of the header.
	            message.setFrom(new InternetAddress("varun5codechef@gmail.com"));

	            message.setRecipients(Message.RecipientType.TO,
	                    InternetAddress.parse(to));
	            message.setSubject(subject);
	            message.setContent(msg,"text/html");

	            Transport.send(message);         //send Message

	            System.out.println("Done");

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }
	  }

}
