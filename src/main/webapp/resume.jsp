<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Entity.userwebsite"%>
<%@ page import="com.Entity.UserSkills"%>
<%@ page import="com.Entity.UserProject"%>
<%@ page import="com.Entity.UserTheme"%>


<%
String username = (String) request.getAttribute("user");
String proffesion = "Proffesion";
String usern = "Name";
String about = "About Section";

//Basic information
List<userwebsite> file = (List<userwebsite>)request.getAttribute("notes");
for(userwebsite n : file){
	proffesion = n.getProfession();
	usern = n.getName();
	about = n.getAbout();	
}

//Theme
List<UserTheme> theme = (List<UserTheme>)request.getAttribute("theme");
String themes = "";
for(UserTheme s : theme){
	themes = s.getTheme();
}

//skills
List<UserSkills> skills = (List<UserSkills>)request.getAttribute("skills");

//Project
List<UserProject> project = (List<UserProject>)request.getAttribute("project");





if(themes.equals("themevarun")){
	%>
	<%@ include file = "themevarun.jsp" %>
	<%
}
else if(themes.equals("themegreen")){
	%>
	<%@ include file = "greentheme/green.jsp" %>
	<% 
}
else{
	%>
	<%@ include file = "error_404.jsp" %>
	<%
}
%>




