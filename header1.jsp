
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
if(session.getAttribute("admin")!=null)    
{
    out.println("<font color='black'>Welcome " + session.getAttribute("admin")  + "</font>");
}
else
{
 response.sendRedirect("login.jsp");
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
										<li><a href="index.jsp" title="">Site Home</a>
                                                                                <li><a href="adminpanel.jsp" title="">Home</a>
										<!--<li><a title="" href="addstate.jsp">Add State</a>
                                                                                   
										</li>
                                                                                <li><a title="" href="addattractions.jsp">Add Attraction</a>
                                                                                   
										</li>
                                                                                <li><a title="" href="addtour.jsp">Add Tour</a>
                                                                                   
										</li>-->
										<li> <%
if(session.getAttribute("admin")!=null)    
{
    out.println("<a href='signout.jsp'>Signout</a>");
}

%>
                                                                                   
                                                                                   
										</li>
														
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
				<!-- END #main-header -->
			</header>
			<!-- END header -->