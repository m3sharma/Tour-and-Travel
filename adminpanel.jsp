<%@page import="java.sql.*"%>
<%@include file="appvars.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

	<!-- START head -->
	<head>
		<!-- Site meta charset -->
		<meta charset="UTF-8">
		
		<!-- title -->
		<title>Admin Panel</title>
		
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
            <%
    response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
    %>
		<!-- START #wrapper -->
		<div id="wrapper">
			<!-- START header -->
			<%@include file="header1.jsp" %>
			
			<!-- START #page-header -->
			<div id="header-banner">
				<div class="banner-overlay">
					<div class="container">
						<div class="row">
							<section class="col-sm-6">
								<h1 class="text-upper">Admin Panel</h1>
							</section>
							
							<!-- breadcrumbs -->
							<section class="col-sm-6">
								<ol class="breadcrumb">
									<li class="home"><a href="index.jsp">Home</a></li>
									<li class="active">Admin Panel</li>
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
						 <table width="931" height="278" border="0" cellpadding="5" cellspacing="5" background="images/back.png">
            <tr>
              <td colspan="8"><h2>Admin Panel</h2></td>
            </tr>
            <tr>
              <td height="112">&nbsp;</td>
              <td><a href="addstate.jsp"><img src="images/add1.png" width="120" height="120" /></a></td>
              <td>&nbsp;</td>
                    <td align="center"><a href="addattractions.jsp"><img src="images/file_add.png" width="92" height="92" /></a></td>
              <td>&nbsp;</td>
        <td align="center"><a href="addtour.jsp"><img src="images/add.png" width="120" height="120" /></a></td>

              <td>&nbsp;</td>
              <td><a href="viewfeedback.jsp"><img src="images/view.png" width="120" height="120" /></a></td>
             
              <td>&nbsp;</td>
              <td width="1" colspan="7" rowspan="2">&nbsp;</td>
              </tr>
            <tr>
              <td width="87">&nbsp;</td>
               <td width="139" align="center"><a href="addstate.jsp">Add State</a></td>
              
              <td width="24">&nbsp;</td>
              <td width="120" align="center"><a href="addattractions.jsp">Add Attraction</a></td>
            
              <td width="32">&nbsp;</td>
  <td width="120" align="center"><a href="addtour.jsp">Add Tour</a></td>
              <td width="17">&nbsp;</td>
              <td width="135" align="center"><a href="viewfeedback.jsp">View Feedback</a></td>
             <td width="101" align="center">&nbsp;</td>
              </tr>
            <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
            </tr>
           
            <tr>
              <td>&nbsp;</td>
              <td><a href="viewbookingrequests.jsp"><img src="images/view.png" width="120" height="120" /></a></td>
              <td>&nbsp;</td>
              <td align="center"><a href="listoftours.jsp"><img src="images/update.png" width="106" height="111"></a></td>
              <td>&nbsp;</td>
              <td><a href="listofattractions.jsp"><img src="images/delete.png" width="120" height="120" /></a></td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td align="center"><a href="viewbookingrequests.jsp">View Booking Requests</a></td>
              <td>&nbsp;</td>
              <td align="center"><a href="listoftours.jsp">Update / Delete Tours</a></td>
              <td>&nbsp;</td>
              <td align="center"><a href="listofattractions.jsp">Delete Attraction</a></td>
              <td>&nbsp;</td>
              <td align="center">&nbsp;</td>
              </tr>
              </table>
         
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