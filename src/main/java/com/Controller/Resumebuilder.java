package com.Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Resumebuilder")
public class Resumebuilder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Resumebuilder() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "memberArea": {
			memberArea(request,response);	
			break;
			}	
		case "memberArealogout":{
			memberArealogout(request,response);
			break;
			}
		default:
			memberArea(request,response);	
		}
	}

	private void memberArealogout(HttpServletRequest request, HttpServletResponse response) throws IOException {
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath()+"/login_register?action=navlogin");
	}


	private void memberArea(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
