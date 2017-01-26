<%@page import="java.sql.*"%>
<%@include file="appvars.jsp" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">

	<!-- START head -->
	<head>
		<!-- Site meta charset -->
		<meta charset="UTF-8">
		
		<!-- title -->
		<title>Home | Tours & Travel</title>
		
		
		<!-- meta viewport -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		
		<!-- favicon -->
		<link rel="icon" href="favicon.html" type="image/x-icon" />
		<link rel="shortcut icon" href="favicon.html" type="image/x-icon" />
		
		<!-- bootstrap 3 stylesheets -->
		<link rel="stylesheet" type="text/css" href="bs3/css/bootstrap.css" media="all" />
		<!-- template stylesheet -->
		<link rel="stylesheet" type="text/css" href="css/styles.css" media="all" />

		<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
		<!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
		<link rel="stylesheet" type="text/css" href="js/rs-plugin/css/settings.css" media="all" />
		<!-- responsive stylesheet -->
		<link rel="stylesheet" type="text/css" href="css/responsive.css" media="all" />

		<!-- color scheme -->
		<link rel="stylesheet" type="text/css" href="css/colors/color1.css" title="color1" />
		<link rel="alternate stylesheet" type="text/css" href="css/colors/color2.css" title="color2" />
		<link rel="alternate stylesheet" type="text/css" href="css/colors/color3.css" title="color3" />
		<link rel="alternate stylesheet" type="text/css" href="css/colors/color4.css" title="color4" />

		<!-- Load Fonts via Google Fonts API -->
		<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Karla:400,700,400italic,700italic" />

	</head>
	<!-- END head -->

	<!-- START body -->
	<body>
		<!-- START #wrapper -->
		<div id="wrapper">
			<%@include file="header.jsp" %>
			<!-- END header -->
			
			<!-- START #main-slider -->
			<div id="main-slider">
				<div id="content-slider">
					<ul>
						<!-- START Slide 1 -->
						<li data-transition="fade" data-slotamount="5" data-masterspeed="700">
							<img src="img/slide-image-2.jpg" alt="Slider Image 1" data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" />
							
							<!-- LAYER NR. 1 -->
							<!--<div class="caption caption-yellow sft stt headline text-upper"
								data-x="20"
								data-y="150"
								data-speed="600"
								data-start="2000"
								data-easing="Power3.easeOut"
								data-endspeed="400"
								data-endeasing="Power4.easeIn"
								data-captionhidden="off"
								style="z-index:6;font-size:18px;">Starting From .......
							</div>
							
							<!-- LAYER NR. 2 -->
							<!--<div class="caption caption-white sfr stl slider-heading text-upper"
								data-x="20"
								data-y="185"
								data-speed="1000"
								data-start="1800"
								data-easing="Power2.easeOut"
								data-endspeed="600"
								data-endeasing="Power3.easeIn"
								data-captionhidden="off"
								style="z-index:6;font-size:48px; ">Wonders of .........
							</div>
							
							<!-- LAYER NR. 3 -->
							<!--<div class="caption caption-black sfb stb headline text-upper"
								data-x="20"
								data-y="263"
								data-speed="600"
								data-start="1500"
								data-easing="Power4.easeOut"
								data-endspeed="500"
								data-endeasing="Power1.easeIn"
								data-captionhidden="off"
								style="z-index:6">Enjoy the popular destinations<br />
								Explore the hidden .......
							</div>
						</li>
						<!-- END Slide 1 -->
						
						<!-- START Slide 2 -->
						<!--<li data-transition="fade" data-slotamount="7" data-masterspeed="1000">
							<img src="img/slide-image-1.jpg" alt="Slider Image 2"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" />
							
							<!-- LAYER NR. 1 -->
							<!--<div class="caption caption-yellow sfl str headline text-upper"
								data-x="20"
								data-y="150"
								data-speed="600"
								data-start="2000"
								data-easing="Bounce.easeInOut"
								data-endspeed="400"
								data-endeasing="Bounce.easeOut"
								data-captionhidden="off"
								style="z-index:6;font-size:18px;">Starting From .........
							</div>
							
							<!-- LAYER NR. 2 -->
							<!--<div class="caption caption-white sft stb slider-heading text-upper"
								data-x="20"
								data-y="185"
								data-speed="500"
								data-start="800"
								data-easing="Expo.easeIn"
								data-endspeed="600"
								data-endeasing="Expo.easeInOut"
								data-captionhidden="off"
								style="z-index:6;font-size:48px; ">Luxury Journeys
							</div>
							
							<!-- LAYER NR. 3 -->
							<!--<div class="caption caption-black sfr stl headline text-upper"
								data-x="20"
								data-y="263"
								data-speed="600"
								data-start="1500"
								data-easing="Power0.easeOut"
								data-endspeed="500"
								data-endeasing="Back.easeOut"
								data-captionhidden="off"
								style="z-index:6">Crafting individual and unique itineraries .........<br />
								Peruse the possibilities here.
							</div>
						</li>
						
						<!-- START Slide 3 -->
						<!--<li data-transition="fade" data-slotamount="6" data-masterspeed="800">
							<img src="img/slide-image-3.jpg" alt="Slider Image 3"  data-bgfit="cover" data-bgposition="center center" data-bgrepeat="no-repeat" />
							
							<!-- LAYER NR. 1 -->
							<!--<div class="caption caption-yellow sft stt headline text-upper"
								data-x="20"
								data-y="150"
								data-speed="600"
								data-start="2000"
								data-easing="Power3.easeOut"
								data-endspeed="400"
								data-endeasing="Power4.easeIn"
								data-captionhidden="off"
								style="z-index:6;font-size:18px;">Starting From ..........
							</div>
							
							<!-- LAYER NR. 2 -->
							<!--<div class="caption caption-white sfr stl slider-heading text-upper"
								data-x="20"
								data-y="185"
								data-speed="1000"
								data-start="1800"
								data-easing="Power2.easeOut"
								data-endspeed="600"
								data-endeasing="Power3.easeIn"
								data-captionhidden="off"
								style="z-index:6;font-size:48px; ">Enjoy Hills of .........
							</div>
							
							<!-- LAYER NR. 3 -->
							<!--<div class="caption caption-black sfb stb headline text-upper"
								data-x="20"
								data-y="263"
								data-speed="600"
								data-start="1500"
								data-easing="Power4.easeOut"
								data-endspeed="500"
								data-endeasing="Power1.easeIn"
								data-captionhidden="off"
								style="z-index:6">Enjoy the coolness breathtaking views of Hill Stations<br />
								Enjoy the tourist friendly atmosphere.
							</div>
						</li>
						<!-- END Slide 3 -->
					</ul>
				</div>
				<div id="slider-overlay"></div>
			</div>
			<!-- END #main-slider -->
			

			<!-- START .main-contents -->
			<!--<div class="main-contents">
				<div class="container" id="home-page">
						<!-- START .tour-plan -->
					<!--<form class="plan-tour" action="viewtours.jsp" method="get">
						<div class="plan-banner"><span>PLAN YOUR</span><h4>DREAM <span>TOUR</span></h4></div>
						<div class="top-fields">Enter destination e.g Shimla, Srinagar, Golden Temple
							<div class="input-field col-md-12"><input type="text" placeholder="Where to go?" name="place" /></div>
							
						</div>
						<div class="bottom-fields">	
							
							<div class="submit-btn col-md-4">
								<input type="submit" value="Search" />
							</div>
						</div>
					</form>-->
					<!-- END .tour-plan -->
					
					<!--<h2 class="ft-heading text-upper">Popular Destinations</h2>

					<div class="carousel">
						
								<div class="row">
									<%--
	Connection myconnection=null;

        Class.forName("com.mysql.jdbc.Driver");
        try
        {
             myconnection=DriverManager.getConnection(path+place, uname, pass);
            try
            {
            String q="select * from attractions limit 0,10";
            PreparedStatement mystatement=myconnection.prepareStatement(q);
            ResultSet myresult=mystatement.executeQuery();
			
            if(myresult.next())            
            {
                
                out.println("<div>");
                out.println("<div class='ft-item'><ul>");
				do
				{
									
					out.println("<li><span class='ft-image'><a href='viewtours.jsp?place=" + myresult.getString("name") + "'><img src='uploads/" + myresult.getString("pic") + "' /></a></span><br />"
				+ "<div class='ft-data'><a href='viewtours.jsp?place=" + myresult.getString("name")  + "'>" + myresult.getString("name") + "</a></div></li>");				
									
									
                                }
                                while(myresult.next());
                 out.println("</ul></div></div>");
            }
            else
            {
                 out.println("No Attractions added");
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
        
									--%>
								</div>
							
					</div>

				</div>
			</div>
			<!-- END .main-contents -->
			
			<!-- START .main-contents .bom-contents -->
			<!--<div class="main-contents bom-contents">
				<div class="container">
					<h2 class="text-center text-upper">TRAVEL ACROSS INDIA</h2>
					<p class="headline text-center">Visit Amazing India this year 2015 and discover the hidden places of India</p>
					
					<div class="row">
						<!-- START featured destination 1 -->
						<!--<section class="col-md-3 fd-column">
							<div class="featured-dest">
								<span class="fd-image">
                                                                    <a href="showattractions.jsp?cat=Beaches" title="Search"><img class="img-circle" src="img/featured-image-1.jpg" alt="Featured Destination" /></a>
								</span>
								<h3 class="text-center text-upper">Beaches</h3>
								<p class="text-center">Visit the exotic beaches popular across the world for their beauty. Surf or swim or take sun bath in Indian Beaches.</p>
								<span class="btn-center"><a class="btn btn-primary text-upper" href="showattractions.jsp?cat=Beaches" title="Search">Search</a></span>
							</div>
						</section>
						<!-- END featured destination 1 -->
						
						<!-- START featured destination 2 -->
						<!--<section class="col-md-3 fd-column">
							<div class="featured-dest">
								<span class="fd-image">
                                                                    <a href="showattractions.jsp?cat=Religious Places" title="Search"><img class="img-circle" src="img/featured-image-2.jpg" alt="Featured Destination" /></a>
								</span>
								<h3 class="text-center text-upper">Religious Places</h3>
								<p class="text-center">Visit the Religious places of India to get bliss in life. You will feel peace, calmness and satisfaction by visiting these places.</p>
								<span class="btn-center"><a class="btn btn-primary text-upper" href="showattractions.jsp?cat=Religious Places" title="Search">Search</a></span>
							</div>
						</section>
						<!-- END featured destination 2 -->
						
						<!-- START featured destination 3 -->
						<!--<section class="col-md-3 fd-column">
							<div class="featured-dest">
								<span class="fd-image">
                                                                    <a href="showattractions.jsp?cat=Tourist Spots" title="Search"><img class="img-circle" src="img/featured-image-3.jpg" alt="Featured Destination" /></a>
								</span>
								<h3 class="text-center text-upper">Tourist Spots</h3>
								<p class="text-center">Visit the popular Indian Tourist Spots with your family, friends. You will enjoy the stay with the tourist friendly atmosphere</p>
								<span class="btn-center"><a class="btn btn-primary text-upper" href="showattractions.jsp?cat=Tourist Spots" title="Search">Search</a></span>
							</div>
						</section>
						<!-- END featured destination 3 -->
						
						<!-- START featured destination 4 -->
						<!--<section class="col-md-3 fd-column">
							<div class="featured-dest">
								<span class="fd-image">
                                                                    <a href="showattractions.jsp?cat=Hill Stations" title="Search"><img class="img-circle" src="img/featured-image-4.jpg" alt="Featured Destination" /></a>
								</span>
								<h3 class="text-center text-upper">Hill Stations</h3>
								<p class="text-center">Enjoy the coolness of Indian Hill Stations with breathtaking views of Hills of India. You will enjoy natural beauty of India.</p>
								<span class="btn-center"><a class="btn btn-primary text-upper" href="showattractions.jsp?cat=Hill Stations" title="Search">Search</a></span>
							</div>
						</section>
						<!-- END featured destination 4 -->
					<!--</div>
				</div>
			</div> -->
			<!-- END .main-contents .bom-contents -->
			
			<%@include file="footer.jsp" %>
			<!-- END footer -->
		</div>
		<!-- END #wrapper -->




		<!-- javascripts -->
                	<script type="text/javascript" src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/modernizr.custom.17475.js"></script>

	
		<script type="text/javascript" src="bs3/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="js/bootstrap-datepicker.js"></script>
		<script src="js/jquery.flexslider-min.js"></script>
		<script src="js/script.js"></script>
		<script src="js/jquery.minimalect.min.js" type="text/javascript"></script>

		<script src="js/styleswitcher.js"></script>
		
		<!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
		<script type="text/javascript" src="js/rs-plugin/js/jquery.plugins.min.js"></script>
		<script type="text/javascript" src="js/rs-plugin/js/jquery.revolution.min.js"></script>

		<!--[if lt IE 9]>
			<script type="text/javascript" src="js/html5shiv.js"></script>
		<![endif]-->


		<script type="text/javascript">
		$(document).ready(function() {
			// revolution slider
			revapi = $("#content-slider").revolution({
				delay: 15000,
				startwidth: 1170,
				startheight: 920,
				hideThumbs: 10,
				fullWidth: "on",
				fullScreen: "off",
				fullScreenOffsetContainer: "",
				navigationVOffset: 320
			});
			
			// initilize datepicker
			$(".date-picker").datepicker();
		});


	    $(window).load(function(){
	      $('.carousel').flexslider({
			animation: "fade",
			animationLoop: true,
			controlNav: false,	
		    maxItems: 1,
			pausePlay: false,
			mousewheel:true,
			start: function(slider){
			  $('body').removeClass('loading');
			}
	      });
	    });


		</script>
	
		

	</body>
</html>