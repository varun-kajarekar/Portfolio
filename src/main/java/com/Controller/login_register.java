package com.Controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.login_register_dao;
import com.Entity.UserInfo;

@WebServlet("/login_register")
public class login_register extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public login_register() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "navregister": {
			navregister(request,response);	
		}
		case "navlogin": {
			navlogin(request,response);	
		}
		default:
			
		}
		
		
	}

	private void navlogin(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("LogIn.jsp").forward(request, response);
		
	}


	private void navregister(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("Register.jsp").forward(request, response);

	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "register": {
			register(request,response);	
		}
		case "login": {
			login(request,response);	
		}
		default:
			
		}
	}

	private void login(HttpServletRequest request, HttpServletResponse response) throws  ServletException ,IOException{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean validate = new login_register_dao().validatesignin(username, password);
		System.out.println(validate);
		if(validate) {
			
			request.getSession().invalidate();
			HttpSession newSession = request.getSession(true);
			newSession.setMaxInactiveInterval(300);

			newSession.setAttribute("username", username);
			String encode = response.encodeURL(request.getContextPath());
			response.sendRedirect(encode+"/Resumebuilder?action=memberArea");
		}
		else {
			String message = "true";
			request.setAttribute("message", message);
			request.getRequestDispatcher("LogIn.jsp").forward(request, response);
		}
		
	}


	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		boolean validate = new login_register_dao().validateregister(username, password);
		if(validate) {
			Random random = new Random();   
		
			int id = random.nextInt(100000);
			UserInfo notes = new UserInfo(id,username, password);
			new login_register_dao().adduserDetails(notes);

			
			String message = "true";
			request.setAttribute("message", message);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}
		else {
			String messag = "true";
			request.setAttribute("messag", messag);
			request.getRequestDispatcher("Register.jsp").forward(request, response);
		}
		
	}


}
