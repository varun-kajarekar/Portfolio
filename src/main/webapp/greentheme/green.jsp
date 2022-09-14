<!DOCTYPE html>
<html lang="en" class="no-js lt-ie9 lt-ie8 lt-ie7">
<html lang="en" class="no-js lt-ie9 lt-ie8"> 
 <html lang="en" class="no-js lt-ie9"> 
<html lang="en" class="no-js"> 
    <head>
    	<!-- meta charec set -->
        <meta charset="utf-8">
		<!-- Always force latest IE rendering engine or request Chrome Frame -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<!-- Page Title -->
        <title><%=usern%></title>		
		<!-- Meta Description -->
        <meta name="description" content="Blue One Page Creative HTML5 Template">
        <meta name="keywords" content="one page, single page, onepage, responsive, parallax, creative, business, html5, css3, css3 animation">
		<!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- Google Font -->
		
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
		<!-- CSS
		================================================== -->
		<!-- Fontawesome Icon font -->
        <link rel="stylesheet" href="greentheme/css/font-awesome.min.css">
		<!-- Twitter Bootstrap css -->
        <link rel="stylesheet" href="greentheme/css/bootstrap.min.css">
		<!-- jquery.fancybox  -->
        <link rel="stylesheet" href="greentheme/css/jquery.fancybox.css">
		<!-- animate -->
        <link rel="stylesheet" href="greentheme/css/animate.css">
		<!-- Main Stylesheet -->
        <link rel="stylesheet" href="greentheme/css/main.css">
		<!-- media-queries -->
        <link rel="stylesheet" href="greentheme/css/media-queries.css">

		<!-- Modernizer Script for old Browsers -->
        <script src="greentheme/js/modernizr-2.6.2.min.js"></script>





    </head>
	
    <body id="body">
	
		<!-- preloader -->
		<div id="preloader">
			<img src="greentheme/img/preloader.gif" alt="Preloader">
		</div>
		<!-- end preloader -->

        <!-- 
        Fixed Navigation
        ==================================== -->
        <header id="navigation" class="navbar-fixed-top navbar">
            <div class="container">
                <div class="navbar-header">
                    <!-- responsive nav button -->
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <i class="fa fa-bars fa-2x"></i>
                    </button>
					<!-- /responsive nav button -->
					
					<!-- logo -->
                    <a class="navbar-brand" href="#body"></a>
					</a>
					<!-- /logo -->
                </div>

				<!-- main nav -->
                <nav class="collapse navbar-collapse navbar-right" role="navigation">
                    <ul id="nav" class="nav navbar-nav">
                        <li class="current"><a href="#body">Home</a></li>
						<li><a href="#Project">Projects</a></li>
                        <li><a href="#facts">Skills</a></li>
                        <li><a href="#contact">Contact Us</a></li>
                    </ul>
                </nav>
				<!-- /main nav -->
				
            </div>
        </header>
        <!--
        End Fixed Navigation
        ==================================== -->
		
		
		
        <!--
        Home Slider
        ==================================== -->
		
		<section id="slider">
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							
				
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					
					<!-- single slide -->
					<div class="item active" style="background-image: url(greentheme/img/banner.jpg);">
						<div class="carousel-caption">
							<h2 data-wow-duration="700ms" data-wow-delay="500ms" class="wow bounceInDown animated">Hi I'm <span><%=usern%></span></h2>
							<p data-wow-duration="1000ms" class="wow slideInRight animated"><%=proffesion%></p>
							
							<ul class="social-links text-center">
								<li><a href=""><i class="fa fa-twitter fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-facebook fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus fa-lg"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble fa-lg"></i></a></li>
							</ul>
						</div>
					</div>
					<!-- end single slide -->
					
					
					
				</div>
				<!-- End Wrapper for slides -->
				
			</div>
		</section>
		
        <!--
        End Home SliderEnd
        ==================================== -->
		
        <!--
        Projects
        ==================================== -->
		
		<section id="Project" class="features">
			<div class="container">
				<div class="row">
		
					<div class="sec-title text-center wow fadeInUp animated" data-wow-duration="700ms">
						<h2>Project</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
						<br>
					</div>

					<%
    					
    					for(UserProject p : project){
    						
    						out.print(
    								
					"<figure class='team-member col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated' data-wow-duration='500ms'>"+
						"<div class='member-thumb'>"+
							"<img src='assets/project.jpg' alt='Team Member' class='img-responsive'>"+
							"<figcaption class='overlay'>"+
								"<ul class='social-links text-center'>"+
									
									"<li><a href='"+p.getPlink()+"'><i class='fa fa-google-plus fa-lg'></i></a></li>"+
								"</ul>"+
							"</figcaption>"+
						"</div>"+
						"<h4>"+p.getPname()+"</h4>"+
						"<span>"+p.getPinfo()+"</span>"+
					"</figure>"
					);
    					}
					%>
					
					</div>
				</div>
			</div>
				
		</section>
								
		
        <!--
        End Features
        ==================================== -->
		
		
    
		
		<!--
        Some fun facts
        ==================================== -->		
		
		<section id="facts" class="facts">
			<div class="parallax-overlay">
				<div class="container">
					<div class="row number-counters">
						
						<div class="sec-title text-center mb50 wow rubberBand animated" data-wow-duration="1000ms">
							<h2>Skills</h2>
							<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
						</div>
						
						<!-- first count item -->
<% 
    						
							for(UserSkills s : skills){
								
							out.print(
						"<div class='col-md-3 col-sm-6 col-xs-12 text-center wow fadeInUp animated' data-wow-duration='500ms' data-wow-delay='900ms'>"+
							"<div class='counters-item'>"+
								"<i class='fa fa-rocket fa-3x'></i>"+
								"<strong data-to='"+s.getRate()*10+"'% >0</strong>"+
								"<p>"+s.getSkill()+"</p>"+
							"</div>"+
						"</div>"
						);
							}
							
							%>
						<!-- end first count item -->
				
					</div>
				</div>
			</div>
		</section>
		
        <!--
        End Some fun facts
        ==================================== -->
		
		
		<!--
        Contact Us
        ==================================== -->		
		
		<section id="contact" class="contact">
			<div class="container">
				<div class="row mb50">
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 wow fadeInLeft animated" data-wow-duration="500ms"></div>
					<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12 wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="300ms">
						<div class=" text-center">
						<h2>About</h2>
						<div class="devider"><i class="fa fa-heart-o fa-lg"></i></div>
						</div>
						<div class="sec-title mb50 wow fadeInDown animated" data-wow-duration="500ms">		
						<p>
    					<h3> <%=about%></h3>
    					</p>
						</div>
					</div>
					<div class="col-lg-2 col-md-2 col-sm-1 col-xs-12 wow fadeInRight animated" data-wow-duration="500ms" data-wow-delay="600ms">	</div>
					<br>
					</div>
					</div>
					
					
					
					
					
					<!-- contact form -->
				<div class="container">
				<div class="row mb50">
					<div class="col-lg-2 col-md-2 col-sm-4 col-xs-12 wow fadeInLeft animated" data-wow-duration="500ms">
						<div class="contact-address">	
						</div>
					</div>
					
					
					<div class="col-lg-8 col-md-8 col-sm-7 col-xs-12 wow fadeInDown animated" data-wow-duration="500ms" data-wow-delay="300ms">
					
						<div class="contact-form text-center">
							<h3>Say hello!</h3>
							<form action="<%=request.getContextPath()%>/SendMail"  method="post">
								<div class="input-group name-email">
									<div class="input-field">
										<input type="text" name="name" id="name" placeholder="Name" class="form-control">
									</div>
									<div class="input-field">
										<input type="email" name="email" id="email" placeholder="Email" class="form-control">
									</div>
								</div>
								<div class="input-group">
									<textarea name="message" id="message" placeholder="Message" class="form-control"></textarea>
								</div>
								<div class="input-group">
    								<button class="w-100 btn btn-lg btn-primary" type="Save">Save</button>
								</div>
								<input type="hidden" name="user" value="<%=username %>">
								<input type="hidden" name="subject" value="New Message">
								<input type="hidden" name="action" value="sendmail">
							</form>
					</div>


					</div>
					<div class="col-lg-2 col-md-2 col-sm-1 col-xs-12 wow fadeInRight animated" data-wow-duration="500ms" data-wow-delay="600ms">
						
					</div>
					
					<!-- end contact form -->
					
					
					
					
					
					</div>
					
				</div>			
		</section>
		
        <!--
        End Contact Us
        ==================================== -->
		
		<br>
		
		<footer id="footer" class="footer">
			<div class="container">
				<div class="row">
				<div class="row">
					<div class="col-md-12">
						<p class="copyright text-center">
							Copyright © 2022 . All rights reserved.
						</p>
					</div>
				</div>
			</div>
		</footer>
		
		<a href="javascript:void(0);" id="back-top"><i class="fa fa-angle-up fa-3x"></i></a>

		<!-- Essential jQuery Plugins
		================================================== -->
		<!-- Main jQuery -->
        <script src="greentheme/js/jquery-1.11.1.min.js"></script>
		<!-- Single Page Nav -->
        <script src="greentheme/js/jquery.singlePageNav.min.js"></script>
		<!-- Twitter Bootstrap -->
        <script src="greentheme/js/bootstrap.min.js"></script>
		<!-- jquery.fancybox.pack -->
        <script src="greentheme/js/jquery.fancybox.pack.js"></script>
		<!-- jquery.mixitup.min -->
        <script src="greentheme/js/jquery.mixitup.min.js"></script>
		<!-- jquery.parallax -->
        <script src="greentheme/js/jquery.parallax-1.1.3.js"></script>
		<!-- jquery.countTo -->
        <script src="greentheme/js/jquery-countTo.js"></script>
		<!-- jquery.appear -->
        <script src="greentheme/js/jquery.appear.js"></script>
		<!-- Contact form validation -->
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
		<!-- Google Map -->
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU&libraries=places"></script>
		<!-- jquery easing -->
        <script src="greentheme/js/jquery.easing.min.js"></script>
		<!-- jquery easing -->
        <script src="greentheme/js/wow.min.js"></script>
		<script>
			var wow = new WOW ({
				boxClass:     'wow',      // animated element css class (default is wow)
				animateClass: 'animated', // animation css class (default is animated)
				offset:       120,          // distance to the element when triggering the animation (default is 0)
				mobile:       false,       // trigger animations on mobile devices (default is true)
				live:         true        // act on asynchronously loaded content (default is true)
			  }
			);
			wow.init();
		</script> 
		<!-- Custom Functions -->
        <script src="greentheme/js/custom.js"></script>
		
		<script type="text/javascript">
			$(function(){
				/* ========================================================================= */
				/*	Contact Form
				/* ========================================================================= */
				
				$('#contact-form').validate({
					rules: {
						name: {
							required: true,
							minlength: 2
						},
						email: {
							required: true,
							email: true
						},
						message: {
							required: true
						}
					},
					messages: {
						name: {
							required: "come on, you have a name don't you?",
							minlength: "your name must consist of at least 2 characters"
						},
						email: {
							required: "no email, no message"
						},
						message: {
							required: "um...yea, you have to write something to send this form.",
							minlength: "thats all? really?"
						}
					},
					submitHandler: function(form) {
						$(form).ajaxSubmit({
							type:"POST",
							data: $(form).serialize(),
							url:"process.php",
							success: function() {
								$('#contact-form :input').attr('disabled', 'disabled');
								$('#contact-form').fadeTo( "slow", 0.15, function() {
									$(this).find(':input').attr('disabled', 'disabled');
									$(this).find('label').css('cursor','default');
									$('#success').fadeIn();
								});
							},
							error: function() {
								$('#contact-form').fadeTo( "slow", 0.15, function() {
									$('#error').fadeIn();
								});
							}
						});
					}
				});
			});
		</script>
    </body>
</html>
