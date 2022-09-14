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
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
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
	<!-- ======= Mobile nav toggle button ======= -->
  	<!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
  	<i class="bi bi-list mobile-nav-toggle d-xl-none"></i>
  
  
  <!-- ======= Header ======= -->
  <header id="header" class="d-flex flex-column justify-content-center">

    <nav id="navbar" class="navbar nav-menu">
      <ul>
        <li><a href="${pageContext.request.contextPath}" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
        <li><a href="${pageContext.request.contextPath}/login_register?action=navregister" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Register</span></a></li>
        <li><a href="${pageContext.request.contextPath}/login_register?action=navlogin" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Sign In</span></a></li>
      </ul>
    </nav><!-- .nav-menu -->

  </header>
  <!-- End Header -->
  
  
  
  <section id="SignIn" class="skills section-bg">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Sign In</h2>
        </div>
		</div>
       <div class="col-md-6 offset-md-3">
		<form class="form-signin text-center"
		action="<%=request.getContextPath()%>/login_register" method="post">
		<h1 class="h3 mb-3 fw-normal">Welcome Back</h1>
		
		<%
			String flag = (String) request.getAttribute("message");
			if(flag != null){
				flag = "Your account or password is incorrect.";
				out.print("<div class='alert alert-danger' role='alert'>"+
							flag 
							+"</div>");
			}	
		%>
		
		
		<hr class="my-4">
		<div class="form-floating">
			<input type="email" class="form-control" id="floatingInput"
				placeholder="username" name="username" required> <label
				for="floatingInput">Email</label>
		
		</div>
		<br>

		
		<div class="form-floating">
			<input type="password" class="form-control" placeholder="Password"
				name="password" required> <label for="floatingPassword">Password</label>
		</div>
		<br>


		<button class="w-100 btn btn-lg btn-primary" type="submit">Sign
			in</button>
		<input type="hidden" name="action" value="login">
		<hr class="my-4">
		<div class="form-floating">
			Don't have an account yet?<a class="nav-link active"
				href="${pageContext.request.contextPath}/login_register?action=navregister">Sign
				up now</a>
		</div>
		</div>

	</form>
        

      </div>
    </section>
    
    <!-- End logIn Section -->
  
  
  
  
  

<!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="container">
      <div class="copyright">
        &copy; Copyright <strong><span>MyResume</span></strong>. All Rights Reserved
      </div>
    </div>
  </footer><!-- End Footer -->

  <div id="preloader"></div>
  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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

  <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js'></script>
        <script>
        $(".Click-here").on('click', function() {
          $(".custom-model-main").addClass('model-open');
        }); 
        $(".close-btn, .bg-overlay").click(function(){
          $(".custom-model-main").removeClass('model-open');
        });
        </script>
  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>