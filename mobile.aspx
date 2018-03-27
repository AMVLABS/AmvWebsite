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

       string to = "nfo.trainingenquiry@gmail.com"; //To address    
       string from = Email; //From address    
       MailMessage message = new MailMessage(from, to);

       string mailbody = Message; //"In this article you will learn how to send a email using Asp.Net & C#";
       message.Subject = Name; //"Sending Email Using Asp.Net & C#";
       message.Body = mailbody;
       message.BodyEncoding = Encoding.UTF8;
       message.IsBodyHtml = true;
       SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
       System.Net.NetworkCredential basicCredential1 = new
       System.Net.NetworkCredential("nfo.trainingenquiry@gmail.com", "Swethaa20");
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
                                      <li class="sub-menu"><a href="index.html">Home</a></li>
                                      <li class="sub-menu"><a href="javascript:{}">About Us</a>
                                        <ul>
                                              <li><a href="about.html"><span>-</span>About us</a></li>
                                              <li><a href="news.html"><span>-</span>News & Events</a></li>
                                              <li><a href="career.html"><span>-</span>Career</a></li>
                                               <li><a href="gallery.html"><span>-</span>Gallery</a></li>

                                          </ul>  
                                      <li class="sub-menu"><a href="javascript:{}"> Solutions</a>
                                          <ul>
                                              <li><a href="cloud.html"><span>-</span>Cloud Service</a></li>
                                              <li><a href="Disaster.html"><span>-</span>Disaster Recovery Services</a></li>
                                              <li><a href="Cloudsolution.html"><span>-</span>Cloud Solution Provider</a></li>
                                              <li><a href="internet.html"><span>-</span>Internet of Things</a></li>  
                                               <li><a href="amazon.html"><span>-</span>Amazon Services</a></li>                                          

                                          </ul>                                          
                                      </li>
                                           
                                          <li class="sub-menu current"><a href="javascript:{}">Mobile Apps</a>
                                          <ul>
                                              <li><a href="web.html"><span>-</span>Responsive Web Apps </a></li>
                                              <li class="sub-menu current"><a href="mobile.html"><span>-</span>Mobile Application</a></li>
                                             <li><a href="IOS.html"><span>-</span>IOS Apps </a></li>
                               
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
    <img src="img/mob.jpg" alt="slide">
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
           MOBILE RESPONSIVE APPS<span>AMV Application Solution </span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
     
     
        <!--//welcome-->
        
        
             
        
        
         <div class="wrap block">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                      <img src="img/ile.jpg" class="img-responsive"> </div>  	
    
                    <div class="span6">
                    		<h2 class="title">Mobile App Responsive!</h2>
                        <p>AMV APPLICTION SOLUTION,Apps that are not preinstalled are usually available through distribution platforms called app stores. They began appearing in 2008 and are typically operated by the owner of the mobile operating system, such as the Apple App Store, Google Play, Windows Phone Store, and BlackBerry App World..feachers.</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> The fluid grid concept calls for page element sizing to be in relative units like percentages, rather than absolute units like pixels or points.</li>
                            <li><i class="icon-star"></i> Flexible images are also sized in relative units, so as to prevent them from displaying outside their containing element!</li>
                            <li><i class="icon-camera"></i> Media queries allow the page to use different CSS style rules based on characteristics of the device the site is being displayed on, most commonly the width of the browser.</li>
                            <li><i class="icon-qrcode"></i>Find mobile app development training courses and degrees.</li>
                        </ul>
                        <p>Apps that are not preinstalled are usually available through distribution platforms called app stores. They began appearing in 2008 and are typically operated by the owner of the mobile operating system, such as the Apple App Store, Google Play, Windows Phone Store, and BlackBerry App World... </p>
                    </div>       		
            	</div>
        	</div>
             
             
             <div class="container">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                    <h2 class="title">Apps Responsive!</h2>
                        <p>Clash of Clans Hack Gems app for free. Clash of Clans Hack Gems Free. Clash of Clans Hack Gems · GTA 5 apk Android app for free. GTA 5 apk Android Free. GTA V (Grand Theft Auto 5) is a part of world famous GTA game series · Fortnite app for free. Fortnite Free. Play Fortnite on your mobile! Mobile Legends Hack ..feachers:</p>
                        
                        <p>This official Moodle Mobile app will ONLY work with Moodle sites that have been set up to allow it. Please talk to your Moodle administrator if you have any problems connecting. If your Moodle site has been configured correctly, you can use this app to: - Browse the content of your courses, even when offline - Receive .... </p> </div>  	
    
                    <div class="span6">
                    	<img src="img/xl.jpg" class="img-responsive"> 	
                    </div>       		
            	</div>
        	</div>
             <div class="container">
        		<div class="row news_block">
        			<div class="span6">
                      <img src="img/yt.jpg" class="img-responsive"> </div>  	
    
                    <div class="span6">
                    		<h2 class="title">Mobile Apps Production!</h2>
                        <p>Creating your own Mobile App with the Infinite Monkeys App Maker is super-easy. The entire site is drag-and-drop. You just pick what you want included your app, and then drag it in. However you define "community" we can help you connect with the people who are important to you...</p>
                        
                        <p>Responsive web design, originally defined by Ethan Marcotte in A List Apart, responds to the needs of the users and the devices they're using. The layout changes based on the size and capabilities of the device. For example, on a phone users would see content shown in a single column view; a tablet ... </p>
                    </div>       		
            	</div>
        	</div>
             
             
             <div class="container">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                    <h2 class="title">Mobile Apps Technology!</h2>
                        <p>Mobile app development is a term used to denote the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones...</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> Programming languages - For Android and iOS development you should have strong command in Java, Swift, Objective C and some knowledge of HTML, CSS, C, C++ may be required. ...</li>
                            <li><i class="icon-star"></i> Flexible images are also sized in relative units, so as to prevent them from displaying outside their containing element!</li>
                            <li><i class="icon-camera"></i> Media queries allow the page to use different CSS style rules based on characteristics of the device the site is being displayed on, most commonly the width of the browser.</li>
                            <li><i class="icon-qrcode"></i>Development Tools - Some of the majorly used tools for developing mobile apps are Phonegap, Appcelerator, Telerik.</li>
                        </ul>
                        <p>Responsive web design, originally defined by Ethan Marcotte in A List Apart, responds to the needs of the users and the devices they're using. The layout changes based on the size and capabilities of the device. For example, on a phone users would see content shown in a single column view; a tablet ... </p> </div>  	
    
                    <div class="span6">
                    	<img src="img/fv.png" class="img-responsive"> 	
                    </div>       		
            	</div>
                 </div></div></div></div>
        <!--Latest news-->
        
        <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
          Mobile apps  Benefits
            </div>
        </div>
     
     
        
        <!--latest posts-->
        
          <div class="wrap block">
        	<div class="container">
        		<div class="row news_block">
        			<div class="span6">
                      <img src="img/bb.jpg" class="img-responsive"> </div>  	
    
                    <div class="span6">
                    		<h2 class="title">Mobile apps Benefits!</h2>
                        <p>Businesses are using apps to improve their processes and increase the level of accessibility their customers have to them. The point of a mobile app is to seamlessly connect and interact with customers, making it a valuable tool for the modern business. Apps reduce costs of SMS messages and paper newsletters..</p>
                        <ul class="the-icons grey">
                        	<li><i class="icon-time"></i> The fluid grid concept calls for page element sizing to be in relative units like percentages, rather than absolute units like pixels or points.</li>
                            <li><i class="icon-star"></i> Flexible images are also sized in relative units, so as to prevent them from displaying outside their containing element!</li>
                            <li><i class="icon-camera"></i> Media queries allow the page to use different CSS style rules based on characteristics of the device the site is being displayed on, most commonly the width of the browser.</li>
                            <li><i class="icon-qrcode"></i>Find mobile app development training courses and degrees.</li>
                        </ul>
                        <p>Get a Customized Mobile App for Your Business Today! Besides using productivity apps such as e-mail and messenger clients, businesses use other mobile apps such as expense trackers, dashboards, etc. which help them perform specialized functions.. </p>
                    </div>       		
            	</div>
        	</div>
             
        
         
         
        
             <!--Welcome-->
   
        

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
                                    <a href=""><img src="img/fliker21.jpg"></a>
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
