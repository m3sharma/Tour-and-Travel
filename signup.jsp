<%@page import="java.sql.*"%>
<%@include file="appvars.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

	<!-- START head -->
	<head>
		<!-- Site meta charset -->
		<meta charset="UTF-8">
		
		<!-- title -->
		<title>Sign Up</title>
		
		<!-- meta description -->
		<meta name="description" content="YOUR META DESCRIPTION GOES HERE" />
		
		<!-- meta keywords -->
		<meta name="keywords" content="YOUR META KEYWORDS GOES HERE" />
		
		<!-- meta viewport -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		
		<!-- favicon -->
		<link rel="icon" href="favicon.html" type="image/x-icon" />
		<link rel="shortcut icon" href="favicon.html" type="image/x-icon" />
		
		<!-- bootstrap 3 stylesheets -->
		<link rel="stylesheet" type="text/css" href="bs3/css/bootstrap.css" media="all" />
		<!-- template stylesheet -->
		<link rel="stylesheet" type="text/css" href="css/styles.css" media="all" />
		<!-- responsive stylesheet -->
		<link rel="stylesheet" type="text/css" href="css/responsive.css" media="all" />
		<!-- Load Fonts via Google Fonts API -->
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Karla:400,700,400italic,700italic" />
		<!-- color scheme -->
		<link rel="stylesheet" type="text/css" href="css/colors/color1.css" title="color1" />
		<link rel="alternate stylesheet" type="text/css" href="css/colors/color2.css" title="color2" />
		<link rel="alternate stylesheet" type="text/css" href="css/colors/color3.css" title="color3" />
		<link rel="alternate stylesheet" type="text/css" href="css/colors/color4.css" title="color4" />
	</head>
	<!-- END head -->

	<!-- START body -->
	<body>
		<!-- START #wrapper -->
		<div id="wrapper">
			<!-- START header -->
			<%@include file="header.jsp" %>
			
			<!-- START #page-header -->
			<div id="header-banner">
				<div class="banner-overlay">
					<div class="container">
						<div class="row">
							<section class="col-sm-6">
								<h1 class="text-upper">Sign Up</h1>
							</section>
							
							<!-- breadcrumbs -->
							<section class="col-sm-6">
								<ol class="breadcrumb">
									<li class="home"><a href="index.jsp">Home</a></li>
									<li class="active">Sign up</li>
								</ol>
							</section>
						</div>
					</div>
				</div>
			</div>
			<!-- END #page-header -->
			
			<!-- START .main-contents -->
			<div class="main-contents">
				<div class="container">
					<!-- START #page -->
					<div id="page">
						
						<!-- START #contactForm -->
						<section id="signup-form">
							<h2 class="ft-heading text-upper">Account Detail</h2>
							<form action="" method="post">
								<fieldset>
									<ul class="formFields list-unstyled">
                                                                             <li class="row">
											<div class="col-md-6">
												<%
                      
        if(request.getParameter("submit")!=null)        
        {
        Connection myconnection=null;
        
        Class.forName("com.mysql.jdbc.Driver");
        try
        {
            myconnection=DriverManager.getConnection(path+place, uname, pass);
            try
            {
               String p1= request.getParameter("password1");
               String p2= request.getParameter("password2");
               if(p1.equalsIgnoreCase(p2))
               {
            String query="insert into usertable values(?,?,?,?,?,?)";
            PreparedStatement mystatement=myconnection.prepareStatement(query);
            mystatement.setString(1, request.getParameter("emailid"));
            mystatement.setString(2, request.getParameter("password1"));
            mystatement.setString(3, request.getParameter("name"));
            mystatement.setString(4, request.getParameter("phone"));
	   mystatement.setString(5, request.getParameter("address"));
           mystatement.setString(6, "user");
            int a=mystatement.executeUpdate();
            if(a==1)
            {
                 out.println("<font color='green'>Signup Successful. Thanks for signing up. You can login now.</font>");
            }
               }
               else
               {
                   out.println("<font color='red'>Password does not match.</font>");
               }
            }
            catch(Exception e)
            {
                out.println("<font color='red'>Error in query " + e.getMessage()+ "</font>");
            }
            
        }
        catch(Exception e)
        {
            out.println("<font color='red'>Error in connection " + e.getMessage() + "</font>");
           
        }
        finally            
        {
            myconnection.close();
        }
        }




                     %>
											</div>
										</li>
										<li class="row">
											<div class="col-md-6">
												<label>Name <span class="required small">(Required)</span></label>
												<input type="text" class="form-control" name="name" value="" required/>
											</div>
											<div class="col-md-6">
												<label>Email <span class="required small">(Required)</span></label>
												<input type="email" class="form-control" name="emailid" value="" required/>
											</div>
										</li>
										
										<li class="row">
											<div class="col-md-6">
												<label>Password <span class="required small">(Required)</span></label>
												<input type="password" class="form-control" name="password1" value="" required/>
											</div>
											<div class="col-md-6">
												<label>Confirm Password <span class="required small">(Required)</span></label>
												<input type="password" class="form-control" name="password2" value="" />
											</div>
										</li>
										<li class="row">
											<div class="col-md-6">
												<label>Address</label>
                                                                                                <textarea name="address" id="address" cols="30" rows="5" class="form-control"></textarea>
												
											</div>
											<div class="col-md-6">
												<label>Phone </label>
												<input type="text" class="form-control" name="phone" value="" />
											</div>
										</li>
										
										
										<li class="row">
											<div class="col-md-12">
												<input type="submit" class="btn btn-primary btn-lg text-upper" name="submit" value="Sign up" />
												
											</div>
										</li>
                                                                               
									</ul>
								</fieldset>
							</form>
						</section>
						<!-- END #contactForm -->
					</div>
					<!-- END #page -->
				</div>
			</div>
			<!-- END .main-contents -->
			
			<!-- START footer -->
			<%@include file="footer.jsp" %>
			<!-- END footer -->
		</div>
		<!-- END #wrapper -->

	
		<!-- javascripts -->
		<script type="text/javascript" src="js/modernizr.custom.17475.js"></script>

		<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="bs3/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<script src="js/styleswitcher.js"></script>
		<!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5shiv.js"></script>
		<![endif]-->

		
	</body>
</html>