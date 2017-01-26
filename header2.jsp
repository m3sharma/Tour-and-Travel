
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
										<li><a href="index.jsp" title="">HOME</a>
										<li><a title="">Tourism</a>
										</li>
										<li><a title="">TOURS</a>
											<ul>
									<li><a href="showattractions.jsp?cat=Hill Stations" title="">Hill Stations</a></li>
									<li><a href="showattractions.jsp?cat=Tourist Spots" title="">Tourist Spots</a></li>
									<li><a href="showattractions.jsp?cat=Religious Places" title="">Religious Places</a></li>
									<li><a href="showattractions.jsp?cat=Beaches" title="">Beaches</a></li>
											</ul>
										</li>
										<li><a title="">Travel Tips</a>
											
										</li>
										<li><a title="">GALLERY</a>
										
										</li>
                                                                                <%
if(session.getAttribute("uname")!=null)    
{
    out.println("<li><a href='signout.jsp'>Sign out</a></li>");
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