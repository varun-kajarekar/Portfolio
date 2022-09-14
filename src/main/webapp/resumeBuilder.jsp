<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Register</title>
<meta content="" name="description">
<meta content="" name="keywords">

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

<!-- =======================================================
  * Template Name: MyResume - v4.7.0
  * Template URL: https://bootstrapmade.com/free-html-bootstrap-template-my-resume/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
	<i class="bi bi-list mobile-nav-toggle d-xl-none"></i>
	<br>


<!-- =======JAVA======= -->

		
<% 
  String username = null;
  if(request.getSession().getAttribute("username") == null){
	  response.sendRedirect(request.getContextPath()+"/login_register?action=navlogin");
  }else{
  username = (String) request.getSession().getAttribute("username");
  }
%>	
	
<!-- ======= END JAVA======= -->



	<!-- =======nav-menu======= -->
	<header id="header" class="d-flex flex-column justify-content-center">

		<nav id="navbar" class="navbar nav-menu">
			<ul>
				<li><a
					href="${pageContext.request.contextPath}/Resumebuilder?action=memberArea"
					class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Hii,<%=username %></span></a></li>
				<li><a
					href="${pageContext.request.contextPath}/UserWebsite?action=view&user=<%=username%>"
					class="nav-link scrollto"><i class="bx bx-user"></i> <span>Demo</span></a></li>
				<li><a href="${pageContext.request.contextPath}/UserWebsite?action=profile&user=<%=username%>" class="nav-link scrollto"><i
						class="bx bx-user"></i> <span>Profile</span></a>
				</li>

				<li><a
					href="${pageContext.request.contextPath}/Resumebuilder?action=memberArealogout"
					class="nav-link scrollto"><i class="bx bx-user"></i> <span>Log
							out</span></a>
				</li>

			</ul>
		</nav>

	</header>
	<!-- =======End nav-menu======= -->




	<!-- ======= Basic Info ======= -->
	<section class="d-flex flex-column justify-content-center">
		<div class="container text-center" data-aos="zoom-in"
			data-aos-delay="100">
		</div>
		<div class="col-md-6 offset-md-3">
			<!-- Start Alert -->
				<div class='alert alert-danger' role='alert'>
						<h9><b>&#33 NOTE : </b>Select Theme </h9>	 
				</div>
			<!-- End Alert -->
			
	
<!-- Start Alert box -->	
				
<% 
  
 		 String message = (String)request.getAttribute("message");
  		if(message != null){
	  			message = "Name is already saved.To edit, go to Profile.";
				out.print("<div class='alert alert-danger' role='alert'>"+
							message 
							+"</div>");  }

  
 		 String message1 = (String)request.getAttribute("message1");
  		if(message1 != null){
	  			message = "Resume is already saved.To edit, go to Profile.";
				out.print("<div class='alert alert-danger' role='alert'>"+
							message 
							+"</div>");  }

  
 		String message2 = (String)request.getAttribute("message2");
  		if(message2 != null){
	  			message = "Resume saved .To edit, go to Profile.";
				out.print("<div class='alert alert-success' role='alert'>"+
							message 
							+"</div>");  }

  
 		 String message4 = (String)request.getAttribute("message4");
  		if(message4 != null){
	  			message = "Details saved .To edit, go to Profile.";
				out.print("<div class='alert alert-success' role='alert'>"+
							message 
							+"</div>");  }
  		
  		String message5 = (String)request.getAttribute("thememsg");
  		if(message5 != null){
	  			message = "Theme Selected";
				out.print("<div class='alert alert-success' role='alert'>"+
							message 
							+"</div>");  }
%>	

<!-- End Alert box -->	
	
			

	<!--Start cards-->
	

	
	<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
    
    
      <img src="assets/BlackWhite.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      	<a href="${pageContext.request.contextPath}/UserWebsite?action=selecttheme&user=<%=username%>&theme=themevarun">
			<button type="button" class="btn btn-outline-light">SELECT</button>
        </a>
      </div>
    </div>
    
    
    <div class="carousel-item">
      <img src="assets/greenthemejpg.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
      	<a href="${pageContext.request.contextPath}/UserWebsite?action=selecttheme&user=<%=username%>&theme=themegreen">
			<button type="button" class="btn btn-outline-light">SELECT</button>
        </a>
      </div>
    </div>
    
    
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

	
	<!-- End cards -->
	
			<br>
			<br>
			<!-- Start Alert -->
				<div class='alert alert-danger' role='alert'>
						<h9><b>&#33 NOTE : </b>Add all Detail to view website,Such as Basic Details, project and skills Detail . </h9>	 
				</div>
			<!-- End Alert -->
			<br>
			
	<!--Start Buttons-->
				<div class="container">
				<div class="col-md-6 offset-md-3 text-center">
					<button type="button" class="btn btn-outline-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal1" style="width:40%">
					Add Details
					</button>
					<button type="button" class="btn btn-outline-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal2" style="width:40%">
					Add Resume
					</button>
				</div>
				<br>
				<div class="col-md-6 offset-md-3 text-center">
					<button type="button" class="btn btn-outline-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal3" style="width:40%">
					 Add projects
					</button>
						
					<button type="button" class="btn btn-outline-success"
						data-bs-toggle="modal" data-bs-target="#exampleModal4" style="width:40%">
					Add Skills
					</button>
				
				</div>
			</div>
			
	<!-- End Buttons-->
	
			
	
			
			
			
	<!--Start Add Details Model-->
				<div class="modal fade" id="exampleModal1" tabindex="-1"
						aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								Add Details
							</h5>
						</div>
						<div class="modal-body">
							
							<form class="form-signin"
				action="<%=request.getContextPath()%>/UserWebsite" method="post" >
							<hr class="my-4">
				<div class="row g-3">
					<div class="col-sm-7">
						<div class="form-floating">
							<input type="text" class="form-control" id="floatingInput"
								placeholder="Full Name" name="name" required> <label
								for="floatingInput">Full Name</label>
						</div>
					</div>
					<div class="col-sm">

						<div class="form-floating">
						 	<input type="text" class="form-control" id="floatingInput"
								placeholder="Profession" name="Profession" required> <label
								for="floatingInput">Profession</label>
						</div>
					</div>
				</div>

				<br>
				<h9>About</h9>
				<div class="form-group mt-3">
					<textarea class="form-control" placeholder="About"
    							name="About" rows="5"  required>
    				</textarea>
					
				</div>
				<div class="form-group mt-3">
    						
    					</div>
				<br>
				<button class="w-100 btn btn-lg btn-primary" type="Save">Save</button>
				<input type="hidden" name="action" value="saveinfo">
				 <input type="hidden" name="username" value="<%=username %>">
				</form>
							
							
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
		<!-- End Add Details Model-->
			
			
			
		<!--Start Add Resume Model-->
			
			<div class="modal fade" id="exampleModal2" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								Add Resume
							</h5>
						</div>
						<div class="modal-body">
							
							
							
							<table >
								<th>
								<form class="form-signin text-center" action="<%=request.getContextPath()%>/Upload" method = "post" enctype="multipart/form-data">
									<input type="hidden" name="username" value="<%=username %>">
			
									<input type ="file" name ="files" />
									<button class="btn-primary" type="Save">Upload</button>
								</form>
								</th>
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
			
		<!--End Add Resume Model-->
				
				
		<!--Start Add Project Model-->
		<div class="modal fade" id="exampleModal3" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								Add projects
							</h5>

						</div>
						<div class="modal-body">
						
						
						<form class="form-signin "
										action="<%=request.getContextPath()%>/UserWebsite" method="post">
								<div class="mb-3">
									<input type="text" class="form-control" placeholder="Enter Project Name" name="ProjectName"><br>
									<input type="text" class="form-control" placeholder="Enter Project Link" name="ProjectLink"><br>
									<h9>Project Information</h9>	
									<textarea class="form-control" placeholder="Project Information"
    										name="ProjectInformation" rows="5"  required>
    								</textarea>								
									<input type="hidden" name="action" value="saveProject">
				 					<input type="hidden" name="user" value="<%=username %>">
								</div>
								
								<button
								class="btn btn-primary" type="Save">
								Save
								</button>
							</form>
						
						
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
		
		<!--End Add Project Model-->
		
		
		<!--Start Add Skills Model-->
		<div class="modal fade" id="exampleModal4" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title"
								id="exampleModalLabel">
								Add Skill
							</h5>
						</div>
						<div class="modal-body">
							<form class="form-signin "
				action="<%=request.getContextPath()%>/UserWebsite" method="post">
								<div class="mb-3">
									<input type="text" class="form-control" placeholder="Enter Skill" name="skill"><br>
									<input type="number" class="form-control"  placeholder="Rate from 0 to 10" min="0" max = "10" name="rate">
									<input type="hidden" name="action" value="saveskill">
				 					<input type="hidden" name="user" value="<%=username %>">
								</div>
								<button
								class="btn btn-primary" type="Save">
								Save
							</button>
							</form>


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
		
		<!--End Add Skills Model-->
		
				
		</div>
	</section>
	<!-- =======End  Basic Info ======= -->




	<!-- ======= Start Copy Code======= -->

					
<style>
table, th, td {
  border: 1px solid black;
}
table {
  border-spacing: 30px;
}
</style>

<div class="input-group justify-content-center  text-center">
	
	</div>
	</div>
	<div class="col-sm">
		<div class="input-group justify-content-center  text-center">
			<input type="text"
				value="http://localhost:8080${pageContext.request.contextPath}/UserWebsite?action=view&user=<%=username%>"
				id="copyMe">
			<button class="btn btn-primary" onclick="copyMyText()">Copy
				Link</button>
		</div>
	</div>

	<br>


	<script>
function copyMyText() {
     //select the element with the id "copyMe", must be a text box
     var textToCopy = document.getElementById("copyMe");
     //select the text in the text box
     textToCopy.select();
     //copy the text to the clipboard
     document.execCommand("copy");
}
</script>


<!-- =======End Copy Code======= -->








	<!-- ======= Footer ======= -->

	<footer id="footer">
		<div class="container">
			<div class="copyright">
				&copy; Copyright <strong><span>MyResume</span></strong>. All Rights
				Reserved
			</div>
		</div>
	</footer>

	<!-- =======End Footer======= -->



	<!-- =======preloader======= -->
	<div id="preloader"></div>
	<a href="#"
		class="back-to-top d-flex align-items-center justify-content-center"><i
		class="bi bi-arrow-up-short"></i></a>

	<!-- Vendor JS Files -->
	<script src="assets/vendor/purecounter/purecounter.js"></script>
	<script src="assets/vendor/aos/aos.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="assets/vendor/typed.js/typed.min.js"></script>
	<script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
	<script src="assets/vendor/php-email-form/validate.js"></script>

	<script
		src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
	<!-- Template Main JS File -->
	<script src="assets/js/main.js"></script>

	<!-- =======End preloader======= -->


</body>

</html>