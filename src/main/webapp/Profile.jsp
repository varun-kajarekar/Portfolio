<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="com.Entity.userwebsite"%>
<%@ page import="com.Entity.UserSkills"%>
<%@ page import="com.Entity.UserProject"%>


<% 
  String username = null;
  if(request.getSession().getAttribute("username") == null){
	  response.sendRedirect(request.getContextPath()+"/login_register?action=navlogin");
  }else{
  username = (String) request.getSession().getAttribute("username");
  }
  
 %>

<% 
String proffesion = "-------------";
String usern = "-------------";
String about = "-------------";
List<userwebsite> file = (List<userwebsite>)request.getAttribute("notes");
String usernames = (String) request.getAttribute("users");


for(userwebsite n : file){
	proffesion = n.getProfession();
	usern = n.getName();
	about = n.getAbout();	
	}


List<UserSkills> skills = (List<UserSkills>)request.getAttribute("skills");
List<UserProject> project = (List<UserProject>)request.getAttribute("project");


%>

    
<!DOCTYPE html>
<html>
<head>
  <!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">
<link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/glightbox/css/glightbox.min.css"
	rel="stylesheet">
<link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="assets/css/style.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Profile</title>
</head>
		<body>
			<i class="bi bi-list mobile-nav-toggle d-xl-none"></i>
			<br>


			<header id="header"
				class="d-flex flex-column justify-content-center">

				<nav id="navbar" class="navbar nav-menu">
					<ul>
						<li>
							<a
								href="${pageContext.request.contextPath}/Resumebuilder?action=memberArea"
								class="nav-link scrollto active">
								<i class="bx bx-home"></i>
								<span>
									Hii,
									<%=username%>
								</span>
							</a>
						</li>
						<li>
							<a
								href="${pageContext.request.contextPath}/UserWebsite?action=view&user=<%=username%>"
								class="nav-link scrollto">
								<i class="bx bx-user"></i>
								<span>Demo</span>
							</a>
						</li>
						<li>
							<a
								href="${pageContext.request.contextPath}/UserWebsite?action=profile&user=<%=username%>"
								class="nav-link scrollto">
								<i class="bx bx-user"></i>
								<span>Profile</span>
							</a>
						</li>

						<li>
							<a
								href="${pageContext.request.contextPath}/Resumebuilder?action=memberArealogout"
								class="nav-link scrollto">
								<i class="bx bx-user"></i>
								<span>Log out</span>
							</a>
						</li>

					</ul>
				</nav>

			</header>
			<!-- =======End nav-menu======= -->






				<div class="container">
				
				
				
				
					<div class="col-md-6 offset-md-3">
					<br><br>
					
					<div class="text-center">
					<% 
							String message2 = (String)request.getAttribute("deleteI");
  							if(message2 != null){
	  							String message = "Delete Resume.";
								out.print("<div class='alert alert-success' role='alert'>"+
								message 
								+"</div>");  }

  
 							String message4 = (String)request.getAttribute("delete");
  							if(message4 != null){
	  							String message = "Delete Details.";
								out.print("<div class='alert alert-success' role='alert'>"+
									message 
									+"</div>");  }
  		
  					%>
					</div>
							
							
						<div class="text-center">
							<img src="assets/img/profile/abc.jpg"
								class="rounded" height="25%" width="25%">
						</div>
						<div class="text-center">
							<br>
							<table class="table">
								<thead>
									<tr>
										<th scope="col">Field</th>
										<th scope="col">Information</th>
										<th scope="col" width="70">
											Opertions
										</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>Name :</td>
										<td>
											<%=usern%>
										</td>
										
									</tr>
									<tr>
										<td>Proffesion :</td>
										<td>
											<%=
												proffesion
											%>
										</td>
										<td rowspan = "3">
											<a href="${pageContext.request.contextPath}/UserWebsite?action=delete&user=<%=username%>">
											<input type="image"
												src="assets/img/delete.png" name="delete" width="40%" height="40%" />
											</a>
										</td>
										
									</tr>
									<tr>
										<td>About :</td>
										<td>
											<%=about%>
										</td>
										
									</tr>
								</tbody>
							</table>





						</div>
					</div>
				</div>





			<!-- Start Button trigger modal -->
			
			
			<br>
			<div class="container">
				<div class="col-md-6 offset-md-3 text-center">
					<button type="button" class="btn btn-outline-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal4" style="width:25%">
					View Skills
					</button>
					
					<button type="button" class="btn btn-outline-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal5" style="width:25%">
					 View projects
					</button>
				
				</div>
			</div>
			<br>
			<div class="container">
				<div class="col-md-6 offset-md-3 text-center">
			
			
			<button type="button" class="btn btn-outline-danger btn-sm"
				data-bs-toggle="modal" data-bs-target="#exampleModal3" style="width:25%">
				Delete Resume
			</button>
				</div>
			</div>
						<br>
						<br>
						<br>
			
			<!-- End Button trigger modal -->

			

			<div class="modal fade" id="exampleModal5" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								View projects
							</h5>

						</div>
						<div class="modal-body">
						<table class="table">
								<thead>
									<tr>
										<th scope="col">Project Name</th>
										<th scope="col" width="70">
											Opertions
										</th>
									</tr>
								</thead>
								<tbody>
									<% 
										for(UserProject s : project){
											out.print(
													"<tr><td>"+s.getPname()+
													"</td><td><a href='UserWebsite?action=deleteproject&user="+s.getUsername()+"&userid="+s.getId()+"'>"+
													"<input type='image'"+
													"src='assets/img/delete.png' name='delete' width='40%' height='40%' />"+
												"</a></td></tr>");
										}
									%>
									
								</tbody>
						</table>
						
						
						
						
						
						
						</div>
						
						
						
						<div class="modal-footer">
							
							<button type="button"
								class="btn btn-secondary" data-bs-dismiss="modal">
								Close
							</button>
							
						</div>
					</div>
				</div>
			</div>



			
			
			
			
			
			<!-- Start Delete Resume Modal -->
			<div class="modal fade" id="exampleModal3" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								Delete Resume
							</h5>
						</div>
						<div class="modal-body">											</div>
						<div class="modal-footer">
							<a href="${pageContext.request.contextPath}/UserWebsite?action=deleteimage&user=<%=username%>">
							<button type="button"
								class="btn btn-primary" data-bs-dismiss="modal">
							Delete Resume	
							</button>
							</a>
							<button type="button"
								class="btn btn-secondary" data-bs-dismiss="modal">
								Close
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- End Delete Resume Model--!>
			
			
			<!-- Start View Skills Modal -->
			<div class="modal fade" id="exampleModal4" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								View Skills
							</h5>
						</div>
						<div class="modal-body">
						<table class="table">
								<thead>
									<tr>
										<th scope="col">Skills</th>
										<th scope="col">Skill Rate</th>
										<th scope="col" width="70">
											Opertions
										</th>
									</tr>
								</thead>
								<tbody>
									<% 
										for(UserSkills s : skills){
											out.print(
													"<tr><td>"+s.getSkill()+
													"</td><td>"+s.getRate()+
													"</td><td><a href='UserWebsite?action=deleteskils&user="+s.getUsername()+"&userid="+s.getId()+"'>"+
													"<input type='image'"+
													"src='assets/img/delete.png' name='delete' width='40%' height='40%' />"+
												"</a></td></tr>");
										}
									%>
									
								</tbody>
						</table>
						
						</div>
						<div class="modal-footer">
							<button type="button"
								class="btn btn-secondary" data-bs-dismiss="modal">
								Close
							</button>
						</div>
					</div>
				</div>
			</div>
			<!-- End View Skills Model--!>
			
			</div>
			</div>
			
			
			
			<!-- ======= Footer ======= -->

			<footer id="footer">
				<div class="container">
					<div class="copyright">
						&copy; Copyright
						<strong>
							<span>MyResume</span>
						</strong>
						. All Rights Reserved
					</div>
				</div>
			</footer>

			<!-- =======End Footer======= -->



			<!-- =======preloader======= -->
			<div id="preloader"></div>
			<a href="#"
				class="back-to-top d-flex align-items-center justify-content-center">
				<i class="bi bi-arrow-up-short"></i>
			</a>

			<!-- Vendor JS Files -->
			<script src="assets/vendor/purecounter/purecounter.js"></script>
			<script src="assets/vendor/aos/aos.js"></script>
			<script
				src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"
				type="text/javascript">
			</script>
			<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
			<script
				src="assets/vendor/isotope-layout/isotope.pkgd.min.js">
			</script>
			<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
			<script src="assets/vendor/typed.js/typed.min.js"></script>
			<script
				src="assets/vendor/waypoints/noframework.waypoints.js">
			</script>
			<script src="assets/vendor/php-email-form/validate.js"></script>

			<script
				src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'>
			</script>
			<!-- Template Main JS File -->

			<script src="assets/js/main.js"></script>

			<!-- =======End preloader======= -->


		</body>

</html>