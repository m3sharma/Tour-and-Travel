<%@page import="java.sql.*"%>
<%@include file="appvars.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <% 
    if(request.getParameter("id")!=null)
    {
        session.setAttribute("tourid", request.getParameter("id"));
    }
    %>
	<!-- START head -->
	<head>
		<!-- Site meta charset -->
		<meta charset="UTF-8">
		
		<!-- title -->
		<title>Tour Detail</title>
		
		<!-- meta description -->
		<meta name="description" content="YOUR META DESCRIPTION GOES HERE" />
		
		<!-- meta keywords -->
		<meta name="keywords" content="YOUR META KEYWORDS GOES HERE" />
		
		<!-- meta viewport -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		
		<!-- favicon -->
		<link rel="icon" href="favicon.html" type="image/x-icon" />
		<link rel="shortcut icon" href="favicon.html" type="image/x-icon" />
			<!-- favicon -->
		<link rel="icon" href="favicon.html" type="image/x-icon" />
		<link rel="shortcut icon" href="favicon.html" type="image/x-icon" />
		
		<!-- bootstrap 3 stylesheets -->
		<link rel="stylesheet" type="text/css" href="bs3/css/bootstrap.css" media="all" />
                	<link rel="stylesheet" type="text/css" href="css/fancybox/jquery.fancybox.css" media="all" />
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
								<h1 class="text-upper">Tour Detail</h1>
							</section>
							
							<!-- breadcrumbs -->
							<section class="col-sm-6">
								<ol class="breadcrumb">
									<li class="home"><a href="index.jsp">Home</a></li>
									<li class="active">Tour Detail</li>
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
				  <div id="page" class="col-md-8">
                   
						 <div class="tour-plans">
                                                       <%
                      
        if(request.getParameter("id")!=null)        
        {
        Connection myconnection=null;
      
        Class.forName("com.mysql.jdbc.Driver");
        try
        {
            myconnection=DriverManager.getConnection(path+place, uname, pass);
            try
            {
            String q="select * from tours where tourid=?";
            PreparedStatement mystatement=myconnection.prepareStatement(q);
            mystatement.setString(1, request.getParameter("id"));
        
           
            ResultSet myresult=mystatement.executeQuery();
			
            if(myresult.next())            
            {
                
		do
                {
                      out.println("<div id='tour'><div class='offer-box1'>"
                              + "<div class='offer-top'>");                        
                      out.println("<h1 class='featured-cy text-upper'>" + myresult.getString("name") + "</h1></div></div>");
                      out.println("<p>" + myresult.getString("description") + "</p>");
                      /*out.println("<ul class='nav nav-tabs text-upper' style='padding-left:20px'><li><h2>Iternary</h2></li></ul>");
                      out.println("<p>" + myresult.getString("iternary") + "</p>");
                      out.println("<hr><h2>Inclusions</h2>");
                      out.println("<p>" + myresult.getString("inclusion") + "</p>");
                      out.println("<hr><h2>Exclusions</h2>");
                      out.println("<p>" + myresult.getString("exclusion") + "</p><hr>");*/
                      
                    
                      
                      out.println("</div>");
                }
                while(myresult.next());
            }
            else
            {                
                out.println("No Tours added");
            }
            
            }
            catch(Exception e)
            {
                out.println("error in query " + e.getMessage());
            }
              finally            
        {
            myconnection.close();
        }
            
        }
        catch(Exception e)
        {
            out.println("error in connection " + e.getMessage());
            out.println("<script type='text/javascript'>alert('Error in Connection')</script>");
        }
      
        }




                     %> 
							
							
							
							
							
						</div>
         
					</div>
					<!-- END #page -->
                  <aside class="col-md-4" id="sidebar" style="background-color: #FFFFBB" name="sidebar" >
                    <div class="sidebar-widget">
                    <h1 class="text-upper">tour cost</h1>
                    <h1>Rate : 
                     
					<%
          Connection myconnection=null;
      
        Class.forName("com.mysql.jdbc.Driver");
        try
        {
            myconnection=DriverManager.getConnection(path+place, uname, pass);
            try
            {
            String q="select * from tours where tourid=?";
            PreparedStatement mystatement=myconnection.prepareStatement(q);
            mystatement.setString(1, request.getParameter("id"));
		session.setAttribute("id", request.getParameter("id"));
            ResultSet myresult=mystatement.executeQuery();
         if(myresult.next())            
            {
				out.println("£ " + myresult.getString("price") + "/-");	
			}
				}
                 catch(Exception e)
            {
                out.println("error in query " + e.getMessage());
            }
			
            
        }
        catch(Exception e)
        {
            out.println("error in connection " + e.getMessage());
            out.println("<script type='text/javascript'>alert('Error in Connection')</script>");
        }
        
					
					%></h1>
                                        <p><a class="btn btn-primary btn-lg text-upper" href="requestbooking.jsp">Book Now</a></p>
                    </div>
                    <%
        
      
        
        
            try
            {
            String q="select * from tours where tourid=?";
            PreparedStatement mystatement=myconnection.prepareStatement(q);
            mystatement.setString(1, request.getParameter("id"));
        
           
            ResultSet myresult=mystatement.executeQuery();
			
            if(myresult.next())            
            {
                
		do
                {
          if(myresult.getString("image1")!="")
                      {
                      out.println("<h2>Tour Photos</h2>");
                      
                      out.println("<a class='item-overlay2' href=uploads/" + myresult.getString("image1") + "><img src='uploads/" + myresult.getString("image1") + "' width='200px' height='200px'></a><br>");
                      }
          
                       if(!myresult.getString("image2").equals(""))
                       {
                      out.println("<br/><a class='item-overlay2' href=uploads/" + myresult.getString("image2") + "><img src='uploads/" + myresult.getString("image2") + "' width='200px' height='200px'></a><br>");
                       }
                        if(!myresult.getString("image3").equals(""))
                        {
                      out.println("<br/><a class='item-overlay2' href=uploads/" + myresult.getString("image3") + "><img src='uploads/" + myresult.getString("image3") + "' width='200px' height='200px'></a><br>");
                        }
                
                 }
                while(myresult.next());
            }
            }
                 catch(Exception e)
            {
                out.println("error in query " + e.getMessage());
            }
			finally            
        {
            myconnection.close();
        }
            
        
        
        
                    %>
                    </aside>
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


	
		<script type="text/javascript" src="js/jquery.easing.js"></script>
		<script type="text/javascript" src="js/jquery.fancybox.js"></script>
	
                <!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5shiv.js"></script>
		<![endif]-->

                <script type="text/javascript">
		$(document).ready(function() {
			
			// initilize fancybox
			$(".item-overlay2").fancybox({
				overlayShow: true,
				overlayOpacity: .7,
				overlayColor: "#000000", // background overlay color
				transitionIn: "fade", // transition type 'elastic', 'fade' or 'none'
				transitionOut: "fade",
				easingIn: "easeInCubic", // Easing used for elastic animations
				easingOut: "easeOutCubic",
				cyclic: true
			});
		});
		</script>
		

	</body>
</html>