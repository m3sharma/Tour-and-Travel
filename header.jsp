
			<header>
				<!-- START #top-header -->
				<div id="top-header">
					<div class="container">
						<div class="row top-row">
							<div class="col-md-6">
								<div class="left-part alignleft">
									<span class="contact-email small">contactus@tours&travel.com</span>
                                                                        <span class="contact-phone small">+44 78 345 12345 </span>
                                                                </div>
                                                        </div>
							 <div class="col-md-6">
                                                             <div class="right-part alignright"><span class="top-link small">
                                                            <%
if(session.getAttribute("uname")!=null)    
{
    out.println("<font color='black'>Welcome " + session.getAttribute("uname")  + "</font>");
}
else if(session.getAttribute("admin")!=null)    
{
    out.println("<font color='black'>Welcome " + session.getAttribute("admin")  + " | <a href=adminpanel.jsp>Admin Panel</a></font>");
}
else
{
 out.println("Welcome Guest");
}
%>
   </span></div>
                                                    </div>
						</div>
					</div>
				</div>                                                            
                                                             
                                                             
                                                             
                                                             
                                                          
				<!-- END #top-header -->
				
				<!-- START #main-header -->
				<div id="main-header">
					<div class="container">
						<div class="row">
							<div class="col-md-3">
								<a id="site-logo" href="#">
									<img src="img/logo1.png" alt="Tours & Travel" />
								</a>
							</div>
							<div class="col-md-9">
								<nav class="main-nav">
									<span>MENU</span>
									<ul id="main-menu">
										<li><a href="index.jsp" title="">HOME</a>
										<!--<li><a href="intro.jsp">Tourism</a>
                                                                                    <ul>
                                                                                    <li><a tips="Tips for Travel" href="tips.jsp">Travel Tips</a>
                                                                                        </ul>
										</li>-->
										<li><a title="">ATTRACTIONS</a>
											<ul>
									<li><a href="viewtourdetail.jsp?id=13" title="">London Eye</a></li>
									<li><a href="viewtourdetail.jsp?id=14" title="">Tower Bridge</a></li>
									<li><a href="viewtourdetail.jsp?id=15" title="">St Cathedral</a></li>
									<li><a href="viewtourdetail.jsp?id=16" title="">Buckingham Palace</a></li>
											</ul>
										</li>
										
											
										</li>
										<!--<li><a title="Gallery" href="gallery.jsp">GALLERY</a>-->
										<li><a title="Feedback" href="feedback.jsp">Feedback</a>
										</li>
                                                                                <%
if(session.getAttribute("uname")!=null)    
{
    out.println("<li><a href='signout.jsp'>Sign out</a></li>");
}
else if(session.getAttribute("admin")!=null)    
{
     out.println("<li><a href='signout.jsp'>Sign out</a></li>");
}
else
{
 out.println("<li><a href='login.jsp'>Login</a> </li><li> <a href='signup.jsp'>Sign up</a></li>");
}
%>
															
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!-- END #main-header -->
			</header>
			<!-- END header -->