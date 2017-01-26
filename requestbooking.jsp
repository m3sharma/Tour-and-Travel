<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.*"%>
<%@include file="appvars.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

	<!-- START head -->
	<head>
		<!-- Site meta charset -->
		<meta charset="UTF-8">
		
		<!-- title -->
		<title>Request Tour Booking</title>
		
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
                <link rel="stylesheet" href="css/jquery-ui.css"/>
                 <script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>

 <script>
$(function() {
$( "#sdate1" ).datepicker({minDate: 0, dateFormat:'yy-mm-dd',onClose: function( selectedDate ) {
$( "#enddate1" ).datepicker( "option", "minDate", selectedDate );
}});
});
$(function() {
$( "#enddate1" ).datepicker({dateFormat:'yy-mm-dd'});
});
</script>
	</head>
	<!-- END head -->

	<!-- START body -->
	<body>
		<!-- START #wrapper -->
		<div id="wrapper">
			<!-- START header -->
			<%@include file="header2.jsp" %>
			
			<!-- START #page-header -->
			<div id="header-banner">
				<div class="banner-overlay">
					<div class="container">
						<div class="row">
							<section class="col-sm-6">
								<h1 class="text-upper">Request Tour Booking</h1>
							</section>
							
							<!-- breadcrumbs -->
							<section class="col-sm-6">
								<ol class="breadcrumb">
									<li class="home"><a href="index.jsp">Home</a></li>
									<li class="active">Request Tour Booking</li>
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
						
						<!-- START #contactForm -->
						<section id="signup-form">
							<h2 class="ft-heading text-upper">Please provide details for your booking</h2>
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
             
             String q="insert into bookingrequest(username,tourid,ddate,rdate,persons,dcity,requestdate) values(?,?,?,?,?,?,?)";
            PreparedStatement mystatement=myconnection.prepareStatement(q);
            mystatement.setString(1, session.getAttribute("emailid").toString());
            mystatement.setString(2, session.getAttribute("id").toString());
            mystatement.setString(3, request.getParameter("sdate1"));
            mystatement.setString(4, request.getParameter("enddate1"));
            mystatement.setString(5, request.getParameter("persons"));
	   mystatement.setString(6, request.getParameter("dcity"));
           java.util.Date mydate=new java.util.Date();
           SimpleDateFormat myformat=new SimpleDateFormat("yyyy-MM-dd");
           
           mystatement.setString(7, myformat.format(mydate));
            int a=mystatement.executeUpdate();
           if(a==1)
           {
    
            String q1="SELECT LAST_INSERT_ID() from bookingrequest";
            PreparedStatement mystatement1=myconnection.prepareStatement(q1);
            ResultSet myresult=mystatement1.executeQuery();
            
            if(myresult.next())
            {
                int lastid=myresult.getInt(1);
                 out.println("<h3><font color='green'>Thanks for booking request. We will contact you in few days. Your Booking request number is " + lastid + "</font></h3>");
                
            }
           }
               
              
            }
            catch(Exception e)
            {
                out.println("<font color='red'>Error in query " + e.getMessage()+ "</font>");
            }
              finally            
            {
                
            myconnection.close();
            }
      
            
        }
        catch(Exception e)
        {
            out.println("<font color='red'>Error in connection " + e.getMessage() + "</font>");
           
        }
        }




                     %>
											</div>
										</li>
										
										<li class="row">
										  <div class="col-md-6">
											  <label>Departure Date</label>
												<input type="text" class="form-control" name="sdate1" id="sdate1" value="" required />
											</div>
										</li>
                                        <li class="row">
										  <div class="col-md-6">
											  <label>Return Date</label>
												<input type="text" class="form-control" name="enddate1" id="enddate1" value="" required/>
											</div>
										</li>
										<li class="row">
											<div class="col-md-6">
												<label>No. of Persons <span class="required small">(Required)</span></label>
												<input type="text" class="form-control" name="persons" value="1" required/>
											</div>
                                            </li>
										
										<li class="row">
											<div class="col-md-6">
												<label>Departure City <span class="required small"></span></label>
												<select name="dcity" id="dcity" class="form-control">
  <option>Choose City</option>                                                
                  <option>Birmingham</option>
                  <option>Liverpool</option>
                  <option>Glasgow</option>
                  <option>Leeds</option>

              </select>
											</div>
										</li>
										
										
										<li class="row">
											<div class="col-md-12">
												<input type="submit" class="btn btn-primary btn-lg text-upper" name="submit" value="Send Booking Request" />
												
											</div>
										</li>
                                                                               
									</ul>
								</fieldset>
							</form>
						</section>
						<!-- END #contactForm -->
					</div>
					<!-- END #page -->
                      <aside class="col-md-4" id="sidebar" style="background-color: #FFFFBB" name="sidebar" >
                   
                    <h1 class="text-upper">Tour Selected</h1>
                   					
                                        
                   
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
            mystatement.setString(1, session.getAttribute("id").toString());
        
           
            ResultSet myresult=mystatement.executeQuery();
			
            if(myresult.next())            
            {
                  out.println("<h3>" + myresult.getString("name") + "</h3>");
		
          if(myresult.getString("image1")!="")
                      {
                     
                      out.println("<p align='center'><img src='uploads/" + myresult.getString("image1") + "' width='200px' height='200px'></p>");
                      }
                    
                
                 
                
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

		
		<script type="text/javascript" src="bs3/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<script src="js/styleswitcher.js"></script>
		<!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5shiv.js"></script>
		<![endif]-->

		
	</body>
</html>