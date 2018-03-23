<%@ Page Language="C#" %>
<%@ Import Namespace="System" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.IO" %>
<%@ Import Namespace="System.Web" %>
<%@ Import Namespace="System.Web.UI.WebControls" %>
<%@ Import Namespace="System.Web.UI" %>
<%@ Import Namespace="System.Collections.Generic" %>
<%@ Import Namespace="System.Linq" %>
<%@ Import Namespace="System.Net" %>
<%@ Import Namespace="System.Net.Mail" %>
<%@ Import Namespace="System.Web.Services" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    void page_Load(Object sender, EventArgs e)
    {
        
    }
    [WebMethod]
    public static string SendMail(string Name, string Email, string Message,string Subject)
    {
        string msg = string.Empty;

       string to = "hr@amvlabs.com"; //To address    
       string from = Email; //From address    
       MailMessage message = new MailMessage(from, to);

       string mailbody = Message; //"In this article you will learn how to send a email using Asp.Net & C#";
       message.Subject = Name; //"Sending Email Using Asp.Net & C#";
       message.Body = mailbody;
       message.BodyEncoding = Encoding.UTF8;
       message.IsBodyHtml = true;
       SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
       System.Net.NetworkCredential basicCredential1 = new
       System.Net.NetworkCredential("From address", "From Password");
       client.EnableSsl = false;
       client.UseDefaultCredentials = false;
       client.Credentials = basicCredential1;
       try
       {
           client.Send(message);
           msg = "true";
       }

       catch (Exception ex)
       {
           //throw ex;
           msg = "false";
       }

       return msg; 
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
        <meta charset="UTF-8">
            <title>AMV APPLICATION</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="keywords" content="HTML,CSS,XML,JavaScript">
        <meta name="author" content="Mahesh">
             <link rel="icon" href="img/fabicon.png">
             <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
             <link rel="stylesheet" id="camera-css"  href="css/camera.css" type="text/css" media="all">
             <link href="css/bootstrap.css" rel="stylesheet">
             <link href="css/bootstrap-responsive.css" rel="stylesheet">
             <link href="css/theme.css" rel="stylesheet">
             <link rel="stylesheet"  href="css/component.css" />
            <link rel="stylesheet"  href="css/animate.css" />
             <link rel="stylesheet" href="css/style.css">
                     <link rel="stylesheet" href="css/style2.css">

        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>

        <!--        <link rel="stylesheet" href="assets/css/bootstrap-theme.min.css">-->


        <!--For Plugins external css-->
        <link rel="stylesheet" href="assets/css/animate/animate.css" />

        <!--Theme custom css -->
        <link rel="stylesheet" href="assets/css/style.css">


        
    </head>
    
    <body>
    
        
         <div class="header">
    	<div class="wrap">
        	<div class="navbar navbar_ clearfix">
            	<div class="container">
                    <div class="row">
                        	<div class="logo"><img src="img/ic_amv_logo.png">
                        </div>
                        	<div class="follow_us">
                                <ul>
                                    <li><a href="#" class="facebook">Facebook</a></li>
                                    <li><a href="#" class="vimeo">Vimeo</a></li>
                                    <li><a href="#" class="tumbrl">Tumbrl</a></li>
                                    <li><a href="#" class="twitter">Twitter</a></li>
                                    <li><a href="#" class="delicious">Delicious</a></li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                            <nav id="main_menu">
                                <div class="menu_wrap">
                                    <ul class="nav sf-menu">
                                      <li class="sub-menucurrent"><a href="index.html">Home</a></li>
                                      <li class="sub-menu current"><a href="javascript:{}">About Us</a>
                                        <ul>
                                              <li><a href="about.html"><span>-</span>About us</a></li>
                                              <li><a href="news.html"><span>-</span>News & Events</a></li>
                                              <li class="sub-menu current"><a href="career.html"><span>-</span>Career</a></li>
                                           <li><a href="gallery.html"><span>-</span>Gallery</a></li>

                                          </ul>  
                                      <li class="sub-menu"><a href="javascript:{}"> Solutions</a>
                                          <ul>
                                              <li><a href="Cloud.html"><span>-</span>Cloud Service</a></li>
                                              <li><a href="Disaster.html"><span>-</span>Disaster Recovery Services</a></li>
                                              <li><a href="Cloud.html"><span>-</span>Cloud Solution Provider</a></li>
                                              <li><a href="internet.html"><span>-</span>Internet of Things</a></li>  
                                               <li><a href="amazon.html"><span>-</span>Amazon Services</a></li>                                          

                                          </ul>                                          
                                      </li>
                                            <li class="sub-menu"><a href="javascript:{}">Responsive Apps</a>
                                          <ul>
                                              <li><a href="web.html"><span>-</span>Responsive Web Apps </a></li>
                                              <li><a href="mobile.html"><span>-</span>Mobile Application</a></li>
                                                                               
                                          </ul>                                          
                                      </li> 
                                        
                                      <li class="sub-menu"><a href="javascript:{}">Blog</a>
                                           <ul>
                                              <li><a href="blog.html"><span>-</span>Blog with right sidebar</a></li>
                                              <li><a href="blog_post.html"><span>-</span>Blog post</a></li>                                      
                                          </ul>
                                      </li>
                                      <li><a href="contacts.html">Contacts</a></li>
                                    </ul>
                                </div>
                             </nav>                            
                        </div>
                    </div>                
                </div>
             </div>
        </div>    
        
        <!--banner-->
<div class="banner">    	   
    <img src="images/hg.jpg" alt="slide">
    <div class="welcome-message">
        <div class="wrap-info">
            <div class="information">
                    
                
        </div> 
        </div>
        </div>
    </div>
        <!--//banner-->
        
        <!--welcome-->
        
        <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
            Carrer<span>AMV Application Solution </span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
     
     
        <!--//welcome-->
        
        
             
        
        
         <div class="wrap block">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                      <img src="img/xc.jpg" class="img-responsive"> </div>  	
    
                    <div class="span6">
                    		<h2 class="title">News & Events!</h2>
                        <p>AMV APPLICTION SOLUTION,Android Developer, here you come. But some of you may need more convincing when it comes to considering a career in Android Development. So let's look at some key labor statistics and industry reports: A recent article in InformationWeek projected salary increases of nearly 9% for Mobile App Developers in 2016..</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> Deep dive into the mobile application developer career path.</li>
                            <li><i class="icon-star"></i> Compare salaries of mobile developers and related positions.!</li>
                            <li><i class="icon-camera"></i> Research mobile developer career education requirements..</li>
                            <li><i class="icon-qrcode"></i>Find mobile app development training courses and degrees.</li>
                        </ul>
                        <p>Mobile App Developer. Android Developer. Mobile Lead Software Engineer. Mobile Developer. Android Mobile Developer. Mobile Embedded Software Engineer. </p>
                    </div>       		
            	</div>
        	</div>
        </div>
        <!--Latest news-->
        
        <!--latest posts-->
        
        
        
         <div class="wrap block">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                    	<h2 class="title">Latest news</h2>
                        <ul id="newscarousel" class="jcarousel-skin-tango">
                            <li>
                            	<div class="news_date">19 july<span>2016</span></div>
                                <div class="news_t"><a href="#">AMV APPLICTION SOLUTION!</a></div>
                                <div class="news">Posted by <a href="#">Mahesh Kumar A</a>  /  In <a href="#">City</a><br/></div>
                                <div class="news_info">Android App Development is one of the hottest career options available today. Whether we belong to the technical field or not, today everyone is influenced by Android Technology. As more and more people own smartphones and tablets, there is a huge market for Android! Infact, Android has gone completely viral!. <a href="#">Read more...</a></div>
                                <div class="clear"></div>
                            </li>
                            <li>
                            	<div class="news_date">14 november<span>2017</span></div>
                                <div class="news_t"><a href="#">AMV APPLICTION SOLUTION!</a></div>
                                <div class="news">Posted by <a href="#">Shweta G</a>  /  In <a href="#">City</a><br/></div>
                                <div class="news_info">cloud products. Companies like Mulesoft are essential for businesses who are making the digital transformation leap to the cloud, as usually there will be legacy systems in the mix that need to be connected to Salesforce or other SaaS products.<a href="#">Read more...</a></div>
                                <div class="clear"></div>
                            </li>
                            <li>
                            	<div class="news_date">14 february<span>2016</span></div>
                                <div class="news_t"><a href="#">AMV APPLICTION SOLUTION!</a></div>
                                <div class="news">Posted by <a href="#">Kantamani</a>  /  In <a href="#">City</a><br/></div>
                                <div class="news_info"> the right career path that you should opt for. But one field that witnesses continuous growth and popularity is Android app development. With over 5 billion smartphones users worldwide, mobile phones have become ubiquitous today.. <a href="#">Read more...</a></div>
                                <div class="clear"></div>
                            </li>
                            <li>
                            	<div class="news_date">17 march<span>2017</span></div>
                                <div class="news_t"><a href="#">AMV APPLICTION SOLUTION!</a></div>
                                <div class="news">Posted by <a href="#">Navya Reddy</a>  /  In <a href="#">City</a><br/></div>
                                <div class="news_info">eventually got around to revising and passing it. This certification has come about for a very good reason, mainly to replace the old DEV401 (Certified Developer) and to split up declarative and programmatic customisations. The old DEV401 certification was just about declarative customisations to force.com, that is the point and click way of doing things. This was a bit confusing for employers and users, as you could essentially call yourself a Salesforce Developer, even though you were not a developer in the classic sense. . <a href="#">Read more...</a></div>
                                <div class="clear"></div>
                            </li>
                         </ul> 
                    </div>       		
            	   <div class="span6">
                  <img src="img/u.jpg" class="img-responsive"> </div>  	
        </div>
        
             </div></div>  
        
        
         
        
             <!--Welcome-->
        <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
            Carrer<span>AMV Application Solution</span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
     
          <div class="wrap block">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                    	<h2 class="title">News OF Android!</h2>
                        <p>AMV APPLICTION SOLUTION,t turns out, the Galaxy S9 Plus costs a little more than the Galaxy Note 8 to manufacture, but less than the iPhone X.</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> Tech Insights has created a table comparing the costs of goods for Samsung’s flagship devices with Apple’s.</li>
                            <li><i class="icon-star"></i> While the iPhone X has the highest cost of goods, the Galaxy S9 Plus is a close second.!</li>
                            <li><i class="icon-camera"></i>The Galaxy S9 Plus’ camera sensors and RAM memory saw the biggest increase compared to last year.</li>
                            
                        </ul>
                        <p>Google has been talking a lot more about security lately, and that’s no surprise. Google’s newfound focus on hardening the platform traces back to a series of security scares in past years, most notably Stagefright in 2015. That breach resulted in a wave of security patches for phones and changes to the Android code base. In the wake of Stagefright, Google required all device makers to display the security patch level of a phone in its settings. It also began issuing security bulletins detailing all the issues included in its new monthly patches.
                    </div>       		
            	   <div class="span6">
                 <h2 class="title">News OF Android!</h2>
                        <p>Android has a reputation for being less secure than Apple’s iOS, but Google says its platform has gotten a bad rap. The company has released its fourth annual security report, a 56-page document that details everything Google has done to keep Android users safe. The bottom line, according to Android security head David Kleidermacher, is that Android is actually just as hard to hack as the locked down iOS platform.</p>
                      
                        <p>Last year, it unveiled Google Play Protect, which was a rebranding of the old Verify Apps system. This was more about perception — it wants users to know Google is on the lookout for bad apps. According to the newly released report, Google’s machine learning tools spotted 60.3 percent of all potentially harmful apps in the Play Store. The remainder were discovered by other means. Google expects machine learning to play an even more prominent role in the future.<div>  	
        </div>
        
             </div>
        
        
        <div class="container">
        		<div class="row news_block">
        			<div class="span6">
                    	<h2 class="title">News OF Salesforce!</h2>
                        <p>Salesforce helps companies connect with their customers in a whole new way. We are blazing new trails in enterprise software every day while focusing on our mission of improving the state of the world.steps are:</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> Plan your integration. .</li>
                            <li><i class="icon-star"></i> Educate your team!</li>
                            <li><i class="icon-camera"></i> Prep your data..</li>
                            <li><i class="icon-qrcode"></i>Transfer your data.  </li>
                            <li><i class="icon-user"></i> Track your progress.& Iterate, update and communicate. ...</li>
                        </ul>
                        <p>Life at Salesforce centers around our Ohana values: Trust, Growth, Innovation, Equality, Customer Success, Transparency, Giving Back, Wellbeing, and Fun. These values make us uniquely Salesforce.Unparalleled Rewards. Members of our Ohana enjoy great pay and perks, but they also value the opportunity to learn from some of the most passionate and driven people in the industry, grow their career with us, and give back. OUR REWARDS ...
                    </div>       		
            	   <div class="span6">
                 <h2 class="title">News Of Cloud!</h2>
                        <p>As grand and innovative and effective as a new software might be (ahem, Salesforce), the integration process can often be draining - usually because implementation was an afterthought. Don’t let this happen at your company! Here are six steps to make your Salesforce implementation pain-free AND successful. (Check out the handy checklist at the bottom of this post,feachers of cloud:</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> Communities for sales.</li>
                            <li><i class="icon-star"></i> Marketing and sales leads.!</li>
                            <li><i class="icon-camera"></i> Email integration.</li>
                            <li><i class="icon-qrcode"></i>Opportunities and quotes. </li>
                            <li><i class="icon-user"></i> Build and run innovative apps.</li>
                              <li><i class="icon-user"></i>Forecasting.</li>
                            <li><i class="icon-user"></i> Engage customers everywhere..</li>

                        </ul>
                        <p>Salesforce.com is the #1 CRM Choice for 100K+ Companies! See Demo.
37% Increase in Revenue · 37% Increase in Win Rate · +40% Sales Productivity
Types: Service Cloud, Sales Cloud, Marketing Cloud, Small Business CRM </div>  	
            </div></div></div></div></div>
        
        

    <!--//page_container-->
        
        
      <br><br><br><br><br><br>  
        <!--footer-->
   
    <div id="footer">
    	<div class="wrap">
    		<div class="container">
            	<div class="row">
                	<div class="span3">
 <h2 class="title">Map</h2><div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d124443.56908327973!2d77.54466825827146!3d12.916619772669952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3bae14fbe6242363%3A0x3f74ed130f110c25!2stechmax+btm!3m2!1d12.9166291!2d77.6147088!5e0!3m2!1sen!2sin!4v1521064253489" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></div>                    </div>
                    <div class="span3">
                    	<h2 class="title">Get in touch!</h2>
                        <form action="#" method="post">
                        	<input class="span3" type="text" name="name" id="name" value="Name" onFocus="if (this.value == 'Name') this.value = '';" onBlur="if (this.value == '') this.value = 'Name';" />
                            <input class="span3" type="text" name="email" id="email" value="Email" onFocus="if (this.value == 'Email') this.value = '';" onBlur="if (this.value == '') this.value = 'Email';" />
                            <textarea name="message" id="message" class="span3" onFocus="if (this.value == 'Message') this.value = '';" onBlur="if (this.value == '') this.value = 'Message';" >Message</textarea>
                            <div class="clear"></div>
                            <input type="reset" class="btn dark_btn" value="Clear form" />
                            <input type="submit" class="btn send_btn" value="Send!" />
                            <div class="clear"></div>
                        </form>
                    </div> 
                    <div class="span3">
                    	<h2 class="title">Testimonials</h2>
                         <ul>
                        	<li>
                            	<span class="testimonials_arrow"></span>AMV Aplication is the greatest company , done their work properly in time to time.so its best to do work here or best to give project here.
                            	<div class="clear"></div>
                                <div class="author">Mahesh Kumar A, CEO</div>
                            </li>
                          <li>
                            	<span class="testimonials_arrow"></span>AMV Aplication is a company , which done their work properly in time to time.so its best to do work here or best to give project here.
                            	<div class="clear"></div>
                                <div class="author">Swetha G, Technical Lead.</div>
                            </li>
                        </ul>                    
                    </div>
                    <div class="span3">
                    	<h2 class="title">flickr photos</h2>
                        <div class="flickrs">
                            <div class="Flickr">
                                <ul><li>
                                    <a href=""><img src="img/fliker11.jpg"></a>
                                    <a href=""><img src="img/fliker12.jpg"></a>
                                    <a href=""><img src="img/fliker13.jpg"></a>
                                    <a href=""><img src="img/fliker14.jpg"></a>
                                    <a href=""><img src="img/fliker16.jpg"></a>
                                    <a href=""><img src="img/fliker17.jpg"></a>
                                    <a href=""><img src="img/fliker18.jpg"></a>
                                    <a href=""><img src="img/fliker19.jpg"></a>
                                    <a href=""><img src="img/fliker21.jpg"></a>
                                    <a href=""><img src="img/fliker22.jpg"></a>
                                    <a href=""><img src="img/fliker23.jpg"></a>
                                    <a href=""><img src="img/fliker24.jpg"></a>
                                    <a href=""><img src="img/fliker25.jpg"></a>
                                    <a href=""><img src="img/fliker26.jpg"></a>
                                    <a href=""><img src="img/fliker27.jpg"></a>
                                    <a href=""><img src="img/fliker29.jpg"></a>
                                   
                                    </li>
                                
                                </ul>
                                <div class="clear"></div>
                            </div>
                        </div> 
                    </div>         	
            	</div>
        	</div>            
        </div>
        </div>
                <div class="footer_bottom">
            <div class="wrap">
            	<div class="container">
                	<div class="row">
                		<div class="span5">
                        	<div class="foot_logo"><a href="index.html"><img src="" alt="" /></a></div>    
                        	<div class="copyright">&copy;2017 AMV Application , Professional IT Company</div>                        
                        </div>
                        <div class="span7">
                        	<div class="foot_right_block">
                            	<div class="fright">
                                	<form action="#" method="post">
                                        <input class="inp_search" name="name" type="text" value="Search the Site" onfocus="if (this.value == 'Search the Site') this.value = '';" onblur="if (this.value == '') this.value = 'Search the Site';" />                                        
                                    </form>
                                </div>
                                <div class="follow_us">
                                	<ul>
                                        <li><a rel="tooltip" href="#" title="Facebook" class="facebook">Facebook</a></li>
                                        <li><a rel="tooltip" href="#" title="Twitter" class="twitter">Twitter</a></li>
                                        <li><a rel="tooltip" href="#" title="Tumbrl" class="tumbrl">Tumbrl</a></li>
                                        <li><a rel="tooltip" href="#" title="Vimeo" class="vimeo">Vimeo</a></li>
                                        <li><a rel="tooltip" href="#" title="Delicious" class="delicious">Delicious</a></li>
                                    </ul>
                                </div>
                                <div class="clear"></div>
                            
                            	<div class="clear"></div>
                            	
                            </div>                            
                        </div>
                    </div>	
                </div>
            </div>
        </div>
    
      
        <!--footer-->
        
        


        
        
        
        
        
        
        
    
    	<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>		


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        
    <script src="js/modernizr.custom.js"></script>

	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>
    <script type="text/javascript" src="js/camera.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/superfish.js"></script>
    <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
    <script type="text/javascript" src="js/jquery.tweet.js"></script>
    <script type="text/javascript" src="js/myscript.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){	
			//Slider
			$('#camera_wrap_1').camera();
			
			//Featured works & latest posts
			$('#mycarousel, #mycarousel2, #newscarousel').jcarousel();													
		});	
        
        
          function EmailSend() {
    var name = $("#name").val();
    var email = $("#email").val();
    var message = $("#message").val();
    var subject = "";
    alert(name + email + message);
    $.ajax({
        type: 'POST',
        contentType: "application/json; charset=utf-8",
        url: 'Index.aspx/SendMail',
        data: "{'Name':'" + name + "','Email':'" + email + "','Message':'" + message + "','Subject':'" + subject + "'}",
        async: false,
        success: function(response) {
            //alert(response.d);
            if (response.d == "true") {
                alert('mail send');
            }
            else {
                alert('failed send');
            }
        },
        error: function() {
            alert("error.");
        }
    });
    return false;
}
	</script>
      <script src="js/classie.js"></script>

    <script src="js/thumbnailGridEffects.js"></script>


    </body>

</html>
