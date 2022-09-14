package com.Controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.DAO.UserInfo_DAO;
import com.DAO.UserProject_DAO;
import com.DAO.UserTheme_DAO;
import com.DAO.Userskills_DAO;
import com.Entity.UserProject;
import com.Entity.UserSkills;
import com.Entity.UserTheme;
import com.Entity.userwebsite;

@WebServlet("/UserWebsite")
public class UserWebsite extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UserWebsite() {
        super();
    }
    
    
    

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		case "view":
			viewinfo(request,response);
			request.getRequestDispatcher("resume.jsp").forward(request, response);

			break;
			
			
		case "profile":
			profile(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;
			
			
		case "delete":
			delete(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;
			
		
		case "deleteimage":
			deleteimage(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;
			
		case "deleteskils":
			deleteskils(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;
			
		case "deleteproject":
			deleteproject(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;

		case "selecttheme":
			selecttheme(request,response);
			request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
			break;

		default:
			request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
			break;
			
			
		}
		
	}
	
	private void selecttheme(HttpServletRequest request, HttpServletResponse response) {
		String username = request.getParameter("user");
		String theme = request.getParameter("theme");
		UserTheme themes = new UserTheme(username, theme);
		new UserTheme_DAO().addtheme(username,themes);
		String themeselect = "true";
		request.setAttribute("thememsg", themeselect);
	}




	private void deleteproject(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		int id = Integer.parseInt(userid);
		new UserProject_DAO().deleteProject(id);
		profile(request,response);	
		
	}




	private void deleteskils(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userid = request.getParameter("userid");
		int id = Integer.parseInt(userid);
		new Userskills_DAO().deleteSkills(id);
		profile(request,response);	

		
	}




	// For Delete Image....
	private void deleteimage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String users = request.getParameter("user");

		String path = request.getRealPath("resume")+"\\";
		File fileOnDisc = new File(path+users+".jpg");
		fileOnDisc.delete();
		String deleteI = "true";
		request.setAttribute("deleteI", deleteI);
		profile(request,response);	
	}

	// For Delete User Info From DataBase.....
	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String users = request.getParameter("user");
		new UserInfo_DAO().deleteFiles(users);
		String delete = "true";
		request.setAttribute("delete", delete);
		profile(request,response);
	}

	
	// For Show Data in Profile page......
	private void profile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String users = request.getParameter("user");
		List<UserSkills> skills = new Userskills_DAO().showSkills(users);
		request.setAttribute("skills", skills);

		
		List<userwebsite> notes = new UserInfo_DAO().listFiles(users);
		request.setAttribute("notes", notes);

		List<UserProject> project = new UserProject_DAO().listFiles(users);
		request.setAttribute("project", project);


	}

	
	
	
	// For show user website
	private void viewinfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		List<userwebsite> notes = new UserInfo_DAO().listFiles(user);
		request.setAttribute("notes", notes);

		
		List<UserSkills> skills = new Userskills_DAO().showSkills(user);
		request.setAttribute("skills", skills);

		
		List<UserProject> project = new UserProject_DAO().listFiles(user);
		request.setAttribute("project", project);
		
		List<UserTheme> theme = new UserTheme_DAO().listTheme(user);
		request.setAttribute("theme", theme);


		request.setAttribute("user", user);	
		

	}

	
	
	
	
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		switch (action) {
		
	// Save information of user in DataBase...
		case "saveinfo":
			saveinfo(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);

			break;
			
	// Save skills....
		case "saveskill":
			saveskill(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;

	// Save Project....	
		case "saveProject":
			saveProject(request,response);
			request.getRequestDispatcher("Profile.jsp").forward(request, response);
			break;
		
		default:
			request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
			break;
		}
		
	}

	// Save Project....	
	private void saveProject(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String project_name = request.getParameter("ProjectName");
		String project_link = request.getParameter("ProjectLink");
		String project_About = request.getParameter("ProjectInformation");
		String username = request.getParameter("user");
		
		Random random = new Random();
		int id = random.nextInt(100000);
		
		
		UserProject project = new UserProject(id, username, project_name, project_link, project_About);
		new UserProject_DAO().addproject(project);
		profile(request,response);
	}




	// Save skills....
	private void saveskill(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String username = request.getParameter("user");
		String skill = request.getParameter("skill");
		int rate = Integer.valueOf(request.getParameter("rate"));
		System.out.print(skill+"  "+rate);
		Random random = new Random();   
		int id = random.nextInt(100000);
		UserSkills userskill = new UserSkills(id, username, skill, rate);
		new Userskills_DAO().addskills(userskill);
		profile(request,response);

	}




	// Save information of user in DataBase...
	private void saveinfo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String fullname = request.getParameter("name");
		String profession = request.getParameter("Profession");
		String about = request.getParameter("About");
		String resume = username+".jpg";
		boolean validate = new UserInfo_DAO().validate(username);
			if(validate) {
				userwebsite userinfo = new userwebsite(username, fullname, profession, about,resume);
				new UserInfo_DAO().adduserinfo(userinfo);
				String message4 = "true";
				request.setAttribute("message4", message4);
				
				request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
				
				
			}
			else {
				String message = "true";
				request.setAttribute("message", message);
				request.getRequestDispatcher("resumeBuilder.jsp").forward(request, response);
			}
		
		
		
	}

}
