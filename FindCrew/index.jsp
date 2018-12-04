<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FindCrew</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/mainpage.css" rel="stylesheet">

    <!-- Custom style for main html -->
    <link href="css/main_css.css" rel="stylesheet">

    <!-- Font-Awesome icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" type="text/css" href="css/button.css">

    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/icon?family=Material+Icons">



    

  </head>

  <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="index.jsp"><img style="max-width:110px; margin-top: -4px;" src="images/l.png "></a>
        
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">              
                <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" href="#">About</a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                  <a href="#about" class="dropdown-item">About Us</a>
                  <a href="#services" class="dropdown-item">Services</a>
                  <a href="#team" class="dropdown-item">Team</a>
                </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="profiles.jsp">Crew</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
            </li>
            <li class="nav-item">
              <a class="nav-link js-scroll-trigger" href="login.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <header class="header-back text-white">
      <div class="container text-center">
        
          <p>
            <div class="container text-center">
            <p></p>
            <h2 class="text-white" class="container text-center">FIND YOUR CREW</h2>
          </div>
          </p>
          
          <form>
            <div class="row">
              <div class="container col-sm-7"> 
                <select class="form-control form-control-sm text-center">
                  <label><option value="none">Profession</option></label>
                  <option value="captain">Captain</option>
                  <option value="navy">Sailor</option>
                  <option value="cleaner">Cleaner</option>
                  <option value="cooker">Cooker</option>
                </select>
              </div>
              <p><br></p>
              <div class="container col-sm-7">
                <select class="form-control form-control-sm text-center">
                  <label><option value="none">Country</option></label>
                  <option value="greece">Greece</option>
                  <option value="italy">Italy</option>
                  <option value="spain">Turkey</option>
                  <option value="portugal">Cyprus</option>
                  <option value="turkey">Croatia</option>
                </select>
                <p></p>
              </div>
            </div>
          </form>
              
        
        <div>
          <a href="profiles.jsp"><button class="button" style="vertical-align:middle"><span>Search</span></button></a>
        </div>
         
         <p><br></p>
         <div class="container text-center"><h3>Looking for a job?</h3>
         </div>

         <div class="text-center">
              <a href="create_cv.jsp"><button type="submit" class="btn" style="color:#387B7A">Apply</button>
            </div></a>


      
      &nbsp;
    </header>

    
    <section id="about">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>About Us</h2>
              <p class="lead">In the framework of the course Information Systems Implementation and Architecture and with the monitoring of Mrs. Pramatari Katerina, we developed Findcrew. 
              Findcrew is an online search and evaluation platform on the maritime sector. It aims to connect the shipowner or the boat rental corporation with the crew needed. It is a fast, easy and most importantly safe way to get in touch with all the professional available crew, that perfects suit the needs of any shipowner.
              The crew is assessed and verified before entering the site to ensure the credibility.
            </p>
          </div>
        </div>
      </div>
    </section>

    <section id="services" class="bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
        <h2>Services we offer</h2>
      </div>
          <div class="col-lg-10 mx-auto">
            
            <section class="features-icons bg-light text-center">
      <div class="container">
        <div class="row">
          <div class="col-lg-4">
            <div class="mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="d-flex">
                <i class="material-icons m-auto icons-look" style="font-size:80px;color:#387B7A;">sentiment_very_satisfied</i>
              </div>
              <h3>Easy to Use</h3>
              <p class="lead mb-0">Search, compire the profiles, find the one that best suits your needs!</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-5 mb-lg-0 mb-lg-3">
              <div class="d-flex">
                <i class="material-icons m-auto" style="font-size:80px;color:#387B7A">search</i>
              </div>
              <h3>Smart Search</h3>
              <p class="lead mb-0">Filter your search so that your don't have to browse all the profiles!</p>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="features-icons-item mx-auto mb-0 mb-lg-3">
              <div class="d-flex">
                <i class="material-icons m-auto" style="font-size:80px;color:#387B7A">verified_user</i>
              </div>
              <h3>Crew Verification</h3>
              <p class="lead mb-0">Crew profiles have been selected through a thorough assessment!</p>
            </div>
          </div>
        </div>
      </div>
</section>
      </div>
    </div>
  </div>

      
    </section>

    <section id="team">
      <div class="container">
        <div class="row">
            <div class="col-lg-8 mx-auto">
                <h2>Our Team</h2>
                &nbsp;
                <p></p>
    
            <div class="inline-block">
              <div class="col-md-4 col-sm-4">
                <div class="team-member">
                  <div class="team-img">
                      <img src="images/marietta.jpg" alt="team member" class="img-responsive">
                  </div>
                  <div class="team-hover">
                    <div class="desk">
                      <h4>Hello!</h4>
                      <p>Entrepreneurship is my addiction.</p>
                    </div>
                    <div class="s-link">                  
                      <a href="https://www.facebook.com/people/Marietta-Lazana/100006958578763"><i class="fa fa-facebook"></i></a>
                      <a href="https://github.com/mlazana"><i class="fa fa-github"></i></a>
                      <a href="https://www.linkedin.com/in/marietta-lazana-1aa06a128/"><i class="fa fa-linkedin-square"></i></a>
                    </div>
                  </div>
              </div>
              <div class="team-title">
                  <h5>Lazana Marietta</h5>
                  <span>founder &amp; CEO </span>
              </div>
            </div>
          </div>
             <div class="inline-block">
              <div class="col-md-4 col-sm-4">
                <div class="team-member">
                  <div class="team-img">
                      <img src="images/33599528_2045967135645219_8220-2.jpg" alt="team member" class="img-responsive">
                  </div>
                  <div class="team-hover">
                    <div class="desk">
                      <h4>Hi there!</h4>
                     <p>I would like to introduce myself as a hardcore Web Developer</p>
                    </div>
                    <div class="s-link">                  
                      <a href="https://www.facebook.com/iwn.petropoulos"><i class="fa fa-facebook"></i></a>
                      <a href="https://github.com/ionpetro"><i class="fa fa-github"></i></a>
                      <a href="https://www.linkedin.com/in/ion-petropoulos-081a34130"><i class="fa fa-linkedin-square"></i></a>
                    </div>
                  </div>
              </div>
              <div class="team-title">
                  <h5>Petropoulos Ion</h5>
                  <span>founder &amp; CTO </span>
              </div>
            </div>
          </div>
          <div class="inline-block">
            <div class="col-md-4 col-sm-4">
                <div class="team-member">
                    <div class="team-img">
                        <img src="images/44237956_1964240956996977_5646843724550897664_n.jpg" alt="team member" class="img-responsive">
                    </div>
                    <div class="team-hover">
                        <div class="desk">
                            <h4>Hi!</h4>
                            <p>I can sell everything.</p>
                        </div>
                        <div class="s-link">
                            <a href="https://www.facebook.com/maria.bartza"><i class="fa fa-facebook"></i></a>
                            <a href="https://github.com/mariabartza"><i class="fa fa-github"></i></a>
                            <a href="https://www.linkedin.com/in/mariabartza/"><i class="fa fa-linkedin-square"></i></a>
                        </div>
                    </div>
                </div>
                <div class="team-title">
                    <h5>Bartza Maria</h5>
                    <span>Marketing Manager </span>
                </div>
            </div>
          </div>
          </div>
        </div>

      </div>
      
    </section>

    <section id="contact" class="bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto">
            <h2>Contact Us</h2>
            

            &nbsp;

            <form>
              <div class="form-group">
                <label for="exampleInputPassword1">Name*</label>
                <input type="name" class="form-control" id="fullname" placeholder="Name" name="name">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Surname*</label>
                <input type="name" class="form-control" id="fullname" placeholder="Surname" name="surname">
              </div>
              <div class="form-group">
                <label for="exampleInputEmail1">Email*</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
              </div>
              <div class="form-group">
                <label for="exampleFormControlTextarea1">Comment*</label>
                <textarea class="form-control" id="exampleFormControlTextarea1" rows="3" name="comment"></textarea>
              </div>
              <small>Fields with (*) are mandatory</small>       
              
              <div class="text-center">
              <button type="submit" class="btn" style="background:#387B7A;color:white;">Submit</button>
            </div>
            </form>


            <p class="lead"></p>
          </div>
        </div>
      </div>
    </section>

    
    <%@ include file = "footer.jsp" %>


    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom JavaScript for this theme -->
    <script src="js/scrolling-nav.js"></script>

  </body>

</html>
