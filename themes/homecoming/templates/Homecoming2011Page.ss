<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<% base_tag %>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>$Title</title>
		<% require themedCSS(style_2013) %> 
<link href='http://fonts.googleapis.com/css?family=Muli:light,regular|Graduate|Gudea:700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/2011/jquery-1.4.2.min.js"></script>

<script type="text/javascript" src="$ThemeDir/javascript/2011/script.js"></script>
<script type="text/javascript" src="$ThemeDir/javascript/2011/jquery-easyexpand.js"></script>




<script type="text/javascript" src="$ThemeDir/javascript/2011/homecoming-init.js"></script>
<!--<script type="text/javascript" src="$ThemeDir/javascript/2011/min.js"></script>-->



</head>

<body>
<div class="contain">

	<ul id="nav">
		<!--<li><a href="#concert">Concert</a></li>-->
		<li><a href="#parade">Parade</a></li>
		<li><a href="#royalty">Royalty</a></li>
		<li><a href="#tshirts">Buttons & T-shirts</a></li>
		<li><a href="#scholarship">Scholarship</a></li>
		<li><a href="#packet">Info Packet</a></li>
		<li><a href="#council">Contact Us</a></li>
		<!--<li><a href="#apply">Apply Now</a></li>-->
	</ul>
<div id="topheader">
	<!--
	<h1 id="top"><a class="uilink" href="http://uiowa.edu">The University of Iowa</a><a class="hc" href="http://homecoming.uiowa.edu"> Homecoming 2011</a></h1>
		<img style="float:left; display:block; width:350px;" src="$ThemeDir/images/2011/tigerhawk.png" />-->

		<div id="slide">
            <div id="headerimgs">
                <div id="headerimg1" class="headerimg"><div class="mask"></div> </div>
                <div id="headerimg2" class="headerimg"><div class="mask"></div> </div>
                <div id="headerimg3" class="headerimg"><div class="mask"></div> </div>
                <div id="headerimg4" class="headerimg"><div class="mask"></div> </div>
                <div id="headerimg5" class="headerimg"><div class="mask"></div> </div>
            </div>
        </div>
</div>
<!--
<% control Page(history) %>
<% if Content %>
<div id="history">
       $Content

                        <div class="clear"></div>
</div>
<% end_if %>
<% end_control %>
-->
<div id="contain_within">
	
            
          
            

<div id="events">
	<h2>events</h2>
           
		<% control Events %>
			<div class="outer-container">
					<div class="button-container">
						<p class="teaser">$TeaserText</p><span id="$URLSegment" class="event_title">$Title</span> 
					</div>	
					<div class="open">
					
					<!-- control children -->
					<% control Children %>
                    	<div class="photo">
							<% if Image %>
							<% control Image %>
							<% control SetWidth(475) %>
							<img src="$URL">
							<% end_control %>
							<% end_control %>
							<% end_if %>        
						</div>
						
						
                        <div class="eventtext">
                            <ul>
                            	<li>
									<h3>$Title</h3>
									<% if Time %>
									<p>$Time, $Location</p>
									<br />
									<% end_if %>
									<p class="description"> $Content </p>
								</li>
								
                            </ul>
                        </div><!-- end eventtext -->
                       <div class="clear"></div>
						<% end_control %>
					</div>	<!--	END OF .open	-->
			</div>	<!--	END OF .outer-container	-->
        <% end_control %>	                

</div> <!-- end of events -->
<a class="back" href="#nav">Top</a>
<!--<% control Page(concert) %>
	<div id="concert">
		<div class="outer-container">
			<div class="button-container">
				<h2>Concert</h2>
			</div>	
			<div class="open">
				<div id="openingact">   
					<% if Image2 %>
							<% control Image2 %>
							<% control SetWidth(325) %>
							<img src="$URL">
							<% end_control %>
							<% end_control %>    
					<% end_if %>
				</div>
				<div id="headliner"> 
							<% if Image %>
							<% control Image %>
							<% control SetWidth(475) %>
							<img src="$URL">
							<% end_control %>
							<% end_control %>
							<% end_if %> 
				</div>
				<div class="clear"></div>
				<h3>$Bands</h3>
				<h4>$Date</h4>
				<h5>$Location</h5>
				<div class="clear"></div>
			</div>
		</div>
	</div>
<% end_control %>


-->

<% control Page(parade-2011) %>
<div id="parade">
<div class="outer-container">
					<div class="button-container">
					<h2>Parade</h2>
					</div>	<!--	END OF button-container	-->

					<div class="open">
    	
        <div id="paradebuttons">
       		<h3>$Date.Format(l n/j)</h3>          
            <h4>$Time</h4>
            <h5>$Location</h5> 
            $Description 
        </div>
		<div id="paradekey">
       		<% if RouteGraphic %>
						$RouteGraphic          
            <% end_if %>   
			<h3>$ButtonHeading</h3>

           <p class="guidelines"><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2013/parade-pac.pdf"></a></p>
            <p class="app"><a href=""></a></p>    
 
       </div>
        <div class="clear"></div>
    </div><!-- end of interiorcontent-->
    </div>
</div> <!-- end of parade-->
<% end_control %>








<% control Page(royalty-2011) %>

<div id="royalty">

		<div class="outer-container">
					<div class="button-container">
					<h2>Royalty</h2>
					</div>	<!--	END OF button-container	-->

					<div class="open">
					
						<p>$Description</p>
	   					<!--
						<div id="kingcandidates">
						  <% if KingCandidates %>
						    <h4>King Candidates 2012</h4>
						    $KingCandidates
						  <% end_if %>
						</div>
						<div id="queencandidates">
						  <% if QueenCandidates %>
						    <h4>Queen Candidates 2012</h4>
						    $QueenCandidates
						  <% end_if %>
						</div>
						-->
	                    <div id="kings">
	                        <div class="image">
								<% if Image %>
								$Image
								<% end_if %>
							</div>
							<div class="text">
								<h4>$RoyaltyHeader</h4>
								$RoyaltyHistory
							</div>
	                    </div>
						
						<div id="guests">
							<div class="text">
								<h4>$HonoredGuestHeader</h4>
								$GuestHistory
							</div>	
							<div class="image">
								<% if Image2 %>
								$Image2          
								<% end_if %>
							</div>
							<p class="royaltyapp"><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2013/royalty13.pdf"></a></p>
						$Content
	                    </div>
    <div class="clear"></div>
					</div>	<!--	END OF .open	-->
		</div>	<!--	END OF .outer-container	-->
 </div><!-- end of royalty -->
 <% end_control %>


<% control Page(scholarship-info) %>

<div id="scholarship">

		<div class="outer-container">
					<div class="button-container">
					<h2>Scholarship</h2>
					</div>	<!--	END OF button-container	-->

					<div class="open">
					
						<p>$Description</p>
	                      
	                      
	                        <div class="photo">
								<% if Image %>
								$Image
								<% end_if %>
							</div>
	   					
					<div class="eventtext">
						$Content
					</div>
					
					<div class="clear"></div>
					
					<a href="http://homecoming.uiowa.edu/themes/homecoming/images/2013/scholarship13.pdf"><div class="button" id="schol">Scholarship Application</div></a>
					
					
					<div class="clear"></div>
    
					</div>	<!--	END OF .open	-->
		</div>	<!--	END OF .outer-container	-->
</div><!-- end of royalty -->
<% end_control %>



<% control Page(habitat) %>

<div id="habitat">
	<div class="outer-container">
					<div class="button-container">
					<h2>Habitat for Humanity</h2>
					</div>	<!--	END OF button-container	-->

				<div class="open">
					
					<div id="habitattop">
                        <p class="description">$Description</p></div>
						
						<div class="image">
							<% if HabitatImage %>
							$HabitatImage          
							<% end_if %>
					</div>		
					<div class="habitatlogo">
                        <p class="habitatlogo"><a href="www.habitat.org">Habitat for Humanity</a></p>
					</div>	
						<div id="choose">$Instructions
						</div>
                    
							<!---
                     <div id="habitatinfo">
                        <p><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2011/habitat.pdf"></a></p>
					</div>  
						--->
                    
 					
					<div class="clear"></div>
					 <div id="morehabitat">$Instructions1</div>

					<div class="clear"></div>
                  </div>	<!--	END OF .open	-->
	</div>	<!--	END OF .outer-container	-->
</div><!-- end of habitat -->
<% end_control %>




<% control Page(council) %>
<div id="council">
    
            <div class="outer-container">
					<div class="button-container">
					<h2>Homecoming Council</h2>
					</div>	<!--	END OF button-container	-->

					<div class="open">
                    <div id="staff">
                            <h3>$Header</h3>
                            $HomecomingCouncil     
                     </div>
                   <!--  <div id="groupphoto">
                            <% if Image %>
                            $Image
                            <% end_if %>
                            <br /><br />
                      </div> -->
                      
                           <!--<div id="councilapplication"><p class="homeapp"><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2012/HC Application 2013.pdf"></a></p></div>-->
                       
                            <div class="clear"></div>
					</div>	<!--	END OF .open	-->
			</div>	<!--	END OF .outer-container	-->
    </div><!-- end of council-->    
   <% end_control %>  
   
<div id="tshirts">
				<div class="outer-container">
					<div class="button-container">
						<h2>Tshirts and buttons</h2>
					</div>	<!--	END OF button-container	-->

					<div class="open"><br />
					
                         <h3>Buy your 2013 Homecoming T-shirt and Buttons!</h3>
   						 <!--<div class="online"><a href="http://www.hawkshop.com/ePOS/form=item.html&item=S0338"></a></div>-->
    					<div class="greek"><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2013/button-group.pdf"></a></div>
						<div class="indiv"><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2013/ind-ord-form.pdf"></a></div>

   						 <div class="clear"></div>
    					 <h3>Also available at the University Book Store in Old Capitol Town Center and in the University Book Store booth at the IMU</h3>
    				
					</div>	<!--	END OF .open	-->
				</div>	<!--	END OF .outer-container	-->
</div><!-- end of t-shirts -->


<!--   
<% control Page(apply) %>
<div id="apply">
    
            <div class="outer-container">
					<div class="button-container">
					<h2>Apply Now</h2>
					</div>	<!--	END OF button-container	-->

<!--					<div class="open">
                    Applications for 2013 Homecoming Council are due on Friday, October 19th at 4:00 PM in 145 IMU Center For Student Involvement and Leadership. Please sign up for an interview when you turn in your application. Sign up sheets will have specific times and locations of the interviews.
                      
                           <div id="councilapplication"><p class="homeapp"><a href="http://homecoming.uiowa.edu/assets/HC-Application-2013.pdf"></a></p></div>
                       
                            <div class="clear"></div>
					</div>	<!--	END OF .open	-->
<!--			</div>	<!--	END OF .outer-container	-->
<!--    </div><!-- end of council-->    
<!--   <% end_control %>
-->

<div id="packet">
				<div class="outer-container">
					<div class="button-container">
						<h2>Information Packet</h2>
					</div>	<!--	END OF button-container	-->

					<div class="open">
						 <h3>The resource for all things Homecoming</h3>
  						 <p class="packet"><a href="http://homecoming.uiowa.edu/themes/homecoming/images/2013/info-pac.pdf"></a></p>
					</div>	<!--	END OF .open	-->
				</div>	<!--	END OF .outer-container	-->
</div><!-- end of packet-->
<div id="sponsors">
<h2>Sponsors</h2>
    <ul>
	<% control HomecomingSponsors %>
	<li><a href="$URL"%><img src="$SponsorImage.URL" alt="$Title" /></a></li>
	<% end_control %>
	</ul>
	<div class="clear"></div>
</div> <!-- end sponsors -->
<div id="footer"> 
	<div class="margin">

        <a href="http://uiowa.edu"><img src="$ThemeDir/images/2011/dome.png" alt="The University of Iowa" border="0" /> </a>
        <p class="copy"> Copyright &copy; The University of Iowa. $Now.Year All rights reserved</p> 
        <p>Individuals with disabilities are encouraged to attend all University of Iowa - sponsored events. If you are a person with a disability who requires an accommodation in order to participate in this program, please contact the Center for Student Involvement and Leadership in advance at 319-335-3059. </p>
	</div><!-- end margin -->
</div> <!-- end footer -->

</div><!-- end of contain_within -->
</div><!-- end of contain -->

</body>

<script type="text/javascript">

 

  var _gaq = _gaq || [];

  _gaq.push(['_setAccount', 'UA-426753-32']);

  _gaq.push(['_trackPageview']);

 

  (function() {

    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;

    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';

    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);

  })();

 

</script>


</html>
