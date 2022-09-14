<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title><%=usern%></title>
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

  
  
</head>

<body>

  <!-- ======= Mobile nav toggle button ======= -->
  <!-- <button type="button" class="mobile-nav-toggle d-xl-none"><i class="bi bi-list mobile-nav-toggle"></i></button> -->
  <i class="bi bi-list mobile-nav-toggle d-xl-none"></i>
  <!-- ======= Header ======= -->
  <header id="header" class="d-flex flex-column justify-content-center">

    <nav id="navbar" class="navbar nav-menu">
      <ul>
        <li><a href="#hero" class="nav-link scrollto active"><i class="bx bx-home"></i> <span>Home</span></a></li>
        <li><a href="${pageContext.request.contextPath}/resume/<%=username%>.jpg"
						 class="nav-link scrollto"><i class="bx bx-file-blank"></i> <span>Resume</span></a></li>



        <li><a href="#portfolio" class="nav-link scrollto"><i class="bx bx-book-content"></i> <span>Projects</span></a></li>
        <li><a href="#skills" class="nav-link scrollto"><i class="bx bx-user"></i> <span>Skills</span></a></li>
        
        <li><a href="#contact" class="nav-link scrollto"><i class="bx bx-envelope"></i> <span>Contact</span></a></li>
      </ul>
    </nav><!-- .nav-menu -->

  </header><!-- End Header -->

  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex flex-column justify-content-center">
    <div class="container" data-aos="zoom-in" data-aos-delay="100">
      	<h1 style="color:white"><%=usern%></h1>
      	<p style="color:#A9A9A9">I'm <span class="typed" style="color:#A9A9A9" data-typed-items="<%=proffesion%>"></span>    </p>	
      	<div class="container">
  			<div class="row">
    			<div class="col align-self-start">	
   				 </div>
    			<div class="col align-self-center">
    			</div>
    			<div class="col align-self-end">
    			<img src="assets/Code.jpg" height = "150" width = "480">
    			</div>
  			</div>
		</div>
    </div>    
  </section>
  <!-- End Hero -->



<%

%>
  <main id="main">

    <!-- ======= Portfolio Section ======= -->
    	<section id="portfolio" class="testimonials section-bg" >
    		<div class="container" data-aos="fade-up">

    			<div class="section-title">
    				<h2>Project</h2>
    			</div>
    			<br>
    			<br>
    			<br>

    	<div class="col-md-10 offset-md-1">

    			<div class="testimonials-slider swiper"
    				data-aos="fade-up" data-aos-delay="100">    				
    				<div class="swiper-wrapper">

    					<!-- start item -->
    					<%
    					
    					for(UserProject p : project){
    						
    						out.print(
    								"<div class='swiper-slide'>"+
    	    						"<div class='testimonial-item'>"+
    								"<a href = '"+p.getPlink()+"'>"+
    	    							"<img src='assets/project.jpg'"+
    	    								"style='max-width: 18rem;'></a>"+
    	    							"<h2>"+p.getPname()+"</h2>"+
    	    							"<p>"+
    	    								p.getPinfo()+
    	    								
    	    							"</p>"+
    	    						"</div>"+
    	    					"</div>"
    	    					);
    						
    						
    						
    					}
    					
    					
    					
    					
    					
    					%>
    					
    					<!-- End  item -->


    				</div>
    				<div class="swiper-pagination"></div>
    			</div>
    		</div>
    		</div>
    	</section>
    <!-- End Portfolio Section -->
    
    
    <br>
<br>
<br>
<br>

    
    <!-- ======= Skills Section ======= -->
    	<section id="skills" class="skills section-bg">
    		<div class="container" data-aos="fade-up">

    			<div class="section-title">
    				<h2>Skills</h2>
    			</div>

    			<div class='row skills-content'>
    			<div class="col-md-8 offset-md-2">
    					<% 
    						
							for(UserSkills s : skills){
								
								out.print(
								"<div class='progress'>"+
								"<span class='skill'>"+
								"<b><i>"+s.getSkill()+"</i></b>"+
								"<i class='val'>100%</i>"+
								"</span>"+
    							"<div class='progress-bar-wrap'>"+
    							"<div class='progress-bar'"+
    							"role='progressbar' aria-valuenow='"+s.getRate()*10+"' aria-valuemin='0'"+
								"aria-valuemax='100'>"+
    							"</div></div></div>"
							
								);
							}
							
						%>

    			</div>
    		</div>
    	</section>
    <!-- End Skills Section -->

    
    
    
    


<!-- ======= About Section ======= -->
    	<section id="about" class="about">
		<div class="col-md-8 offset-md-2">

    		<div class="container" data-aos="fade-up">

    			<div class="section-title">
    				<h2>About</h2>
    			</div>

    			<div class="container ">
    				<p>
    					<h5>
    					<%=about%>
						</h5>
    				</p>
    			</div>

    		</div>
    		</div>
    	</section>
    <!-- End About Section -->


    <!-- ======= Contact Section ======= -->
    	<section id="contact" class="contact" >
    	<div class="col-md-8 offset-md-2">
    	
    		<div class="container" data-aos="fade-up">

    			<div class="section-title">
    				<h2>Contact us</h2>
    			</div>

    			<div class="container text-center">

    				<form action="<%=request.getContextPath()%>/SendMail" method="post">
    					<div class="row">
    						<div class="col-md-6 form-group">
    							<input type="text" name="name"
    								class="form-control" id="name" placeholder="Your Name"
    								required>
    						</div>
    						<div
    							class="col-md-6 form-group mt-3 mt-md-0">
    							<input type="email" class="form-control"
    								name="email" id="email" placeholder="Your Email" required>
    						</div>
    					</div>
    					<div class="form-group mt-3">
    						<input type="text" class="form-control"
    							name="subject" id="subject" placeholder="Subject" required>
    					</div>
    					<div class="form-group mt-3">
    						<textarea class="form-control"
    							name="message" rows="5" placeholder="Message" required>
    						</textarea>
    					</div>
						<input type="hidden" name="user" value="<%=username %>">
						<input type="hidden" name="action" value="sendmail">
						<br>
    					<button class="w-100 btn btn-lg btn-primary" type="Save">Save</button>



    				</form>

    			</div>

    		</div>

    		</div>
    	</section>
    <!-- End Contact Section -->

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  	<footer id="footer" style="background-color:black;">
  	<div class="col-md-8 offset-md-2">
  		<div class="container">
  			<h3>
  				<%=usern%>
  			</h3>
  			<div class="social-links">
  				<a href="#" class="linkedin">
  					<i class="bx bxl-linkedin"></i>
  				</a>
  			</div>
  			<div class="copyright">
  				&copy; Copyright
  				<strong>
  					<span>MyResume</span>
  				</strong>
  				. All Rights Reserved
  			</div>
  		</div>
  		</div>
  	</footer>
  	<!-- End Footer -->

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