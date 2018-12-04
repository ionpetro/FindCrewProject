<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<%@ include file="header.jsp"%>
		<link href="css/profiles.css" rel="stylesheet">
	</head>

	<body>

		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="mainNav">
		  <div class="container">
			<a class="navbar-brand js-scroll-trigger" href="index.html"><img style="max-width:110px; margin-top: -4px;" src="images/l.png "></a>
			
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
			  <span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
			  <ul class="navbar-nav ml-auto">
				<li class="nav-item dropdown">              
					<a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">About</a>
					<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
					  <a href="index.html#about" class="dropdown-item">About Us</a>
					  <a href="index.html#services" class="dropdown-item">Services</a>
					  <a href="index.html#team" class="dropdown-item">Team</a>
					</div>
				</li>
				<li class="nav-item">
				  <a class="nav-link" href="profiles.html">Crew</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link js-scroll-trigger" href="index.html#contact">Contact</a>
				</li>
				<li class="nav-item">
				  <a class="nav-link js-scroll-trigger" href="login.html">Login</a>
				</li>
			  </ul>
			</div>
		  </div>
		</nav>

		<!-- Page Content -->
		<div class="container">
		
			<!-- Page Heading -->
			<h2 class="text-center hidden-xs hidden-sm hidden-md">Find your crew</h2>
			<h6 class="text-center" style="color:#387B7A">All profiles have been approved by us</h6>
			
			<hr>
			<div class="row">
				<div class="col-lg-3 col-xl-3">
					<div class="card my-4">
						<h5 class="card-header" align="center">Search Filters</h5>
						<div class="card-body">
							<form>
								<input type="hidden" name="filters">
								<div class="form-group">
									<label for=""><b>Profession:</b></label>
									<br>
									<input id="profession0" name="profession" type="checkbox" value="Captain"> Captain
									<p>
									<input id="profession1" name="profession" type="checkbox" value="Sailor"> Sailor
									<br>
									<input id="profession2" name="profession" type="checkbox" value="Cleaner"> Cleaner
									<br>
									<input id="profession3" name="profession" type="checkbox" value="Cooker"> Cooker
									</p>
								</div>
								
								<div class="form-group">
									<label for=""><b>Country:</b></label>
									<br>
									<input id="country0" name="country" type="checkbox" value="greece"> Greece
									<p>
									<input id="country1" name="country" type="checkbox" value="germany"> Germany
									<br>
									<input id="country2" name="country" type="checkbox" value="cyprus"> Cyprus
									<br>
									<input id="country3" name="country" type="checkbox" value="spain"> Spain
									</p>
								</div>
								
								<div class="form-group">
									<label for=""><b>Gender:</b></label>
									<br>
									<input id="gender0" name="gender" type="checkbox" value="female"> Female
									<p>
									<input id="gender1" name="gender" type="checkbox" value="male"> Male
									</p>
								</div>
								
								<div class="text-right">
									<button type="button" class="btn btn-primary btn-md">Search</button>
									<button type="reset" value="Reset" class="btn btn-primary btn-md">Reset</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				
				<div class="col-lg-6 col-xl-6 col-xs-12 col-sm-12 col-md-12">
					
					<!-- Crew 1 -->
					<div class="card my-4" id="profil">
						<div class="row">
							<div class="col-sm-3" align="right">
								<img class="card-img-top" src="images/captain.jpg" alt="Card image cap">
							</div>
							<div class="col-sm-9">
								<h5>Jerry Liam</h5>
								<p>
									<b>Profession:</b> 
									Captain
									<br> 
									<b>Country:</b> 
									Spain
									<br> 
									<b>Gender:</b> 
									Man
									<br>
									<b>Available from:</b> 
									20 December 2018
									<div class="text-right">
										<a href="individual.jsp"><button type="button" class="btn btn-primary btn">View Profile</button></a>
									</div>
								</p>
							</div>
						</div>
					</div>
					<!-- /.row -->

					<hr>

					<!-- Pagination -->
					<ul class="pagination justify-content-center">
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">Previous</span>
							</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#">1</a>
						</li>
						<li class="page-item">
							<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
								<span class="sr-only">Next</span>
							</a>
						</li>
					</ul>
				</div>
				
				<div class="col-lg-3 col-xl-3">
					<div class="card my-4">
						<h5 class="card-header" align="center">Join our community!</h5>
						<div class="card-body">
							<p align="center">Do you want to hear more from us? <br> Subscribe to our mailing list to receive our updates!</p>
							<form>
								<input type="hidden" name="filters">
								<div class="form-group">
									<input type="text" name="subname" placeholder="Your full name" required>
									<br>
									<input type="email" name="subemail" placeholder="Your email" required>
								</div>
								<div class="text-center">
									<button type="button" class="btn btn-primary btn-md">Subscribe</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container -->

		<%@ include file="footer.jsp"%>	
	</body>
</html>
