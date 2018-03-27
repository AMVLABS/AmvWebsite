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
       System.Net.NetworkCredential("info.trainingenquiry@gmail.com", "Swethaa20");
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
            <title>AMV Application</title>
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
             <link rel="stylesheet" href="css/style.css">
             <link rel="stylesheet" href="css/style2.css">

          
        
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
                                      <li class="current"><a href="index.html">Home</a></li>
                                      <li class="sub-menu"><a href="javascript:{}">About Us</a>
                                        <ul>
                                              <li><a href="about.html"><span>-</span>About us</a></li>
                                              <li><a href="news.html"><span>-</span>News & Events</a></li>
                                              <li><a href="career.html"><span>-</span>Career</a></li>
                                               <li><a href="gallery.html"><span>-</span>Gallery</a></li>

                                          </ul>  
                                      <li class="sub-menu"><a href="javascript:{}">Solutions</a>
                                          <ul>
                                              <li><a href="cloud.html"><span>-</span>Cloud Service</a></li>
                                              <li><a href="Disaster.html"><span>-</span>Disaster Recovery Services</a></li>
                                              <li><a href="Cloudsolution.html"><span>-</span>Cloud Solution Provider</a></li>
                                              <li><a href="internet.html"><span>-</span>Internet of Things</a></li>  
                                              <li><a href="amazon.html"><span>-</span>Amazon Services</a></li>                                          

                                          </ul>                                          
                                      </li>
                                        
                                         <li class="sub-menu"><a href="javascript:{}">Mobile Apps</a>
                                          <ul>
                                              <li><a href="web.html"><span>-</span>Responsive Web Apps </a></li>
                                              <li><a href="mobile.html"><span>-</span>Mobile Application</a></li>
                                             <li><a href="IOS.html"><span>-</span>IOS Apps </a></li>
                                  
                                          </ul>                                          
                                      </li>
                                                                    
                                      <li class="sub-menu"><a href="javascript:{}">Blog</a>
                                           <ul>
                                              <li><a href="blog.html"><span>-</span>Blog with right sidebar</a></li>
                                              <li><a href="blog_post.html"><span>-</span>Blog post</a></li>                                      
                                          </ul>
                                      </li>
                                      <li><a href="contacts.html">Contact Us</a></li>
                                    </ul>
                                </div>
                             </nav>                            
                        </div>
                    </div>                
                </div>
             </div>
        </div>    

  
  
      <!--page_container-->
    <div class="page_container">
        <!--slider-->
        <div id="main_slider">
            <div class="camera_wrap" id="camera_wrap_1">
                <div data-src="img/1.jpg"></div>
                <div data-src="img/2.jpg"></div>
                <div data-src="img/3.jpg"></div>
                <div data-src="img/4.jpg"></div> 
                <div data-src="img/5.jpg"></div>                                        
                <div data-src="img/6.jpg"></div>                                        
                 <div data-src="img/7.jpg"></div>                                        
                </div><!-- #camera_wrap_1 -->
           
       
       
     <div class="clear"></div>	
        </div>        
        <!--//slider-->   
        <div class="wrap block">
            <div class="container welcome_block">
                <H1>WELCOME TO AMV SOLUTION</H1>          
            </div>
            </div>
   
         
          
          <!--planning-->
        <div class="wrap planning">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <a href="#">
                        	<span class="img_icon ICON"></span>
                            <span class="link_title">Mobile apps </span>
Mobile app development is a term used to denote the act or process by which a mobile app is developed for mobile devices.                        </a>
                    </div>
                    <div class="span3">
                        <a href="#">
                        	<span class="img_icon icon21"></span>
                            <span class="link_title">Testing</span>
Learn Software Testing in simple and easy steps starting from basic to advanced concepts.                        </a>
                    </div>
                    <div class="span3">
                        <a href="#">
                        	<span class="img_icon i9con31"></span>
                            <span class="link_title">Cloud Development</span>
Gmail, Google Calendar, Google Maps, and so on.                         </a>
                    </div>
                    <div class="span3">
                        <a href="#">
                        	<span class="img_icon icon41"></span>
                            <span class="link_title">Data warehousing</span>
Data warehousing is the process of constructing and using a data warehouse.                         </a>
                    </div>                           	
                </div>
            </div>
        </div>
        <!--//planning-->
        
        <!--Welcome-->
        <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
            Our Features<span>AMV Solution India</span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
     
      
<!--//welcome-->
        
        <!--feachers-->
        <div class="container_12">
    <div class="grid_12 center">
 
      <section class="tt-grid-wrapper">
        <ul class="tt-grid tt-effect-stackback tt-effect-delay">
          
          
         <li><a href="#"><img src="images/feat1.jpg" alt="img01"></a></li>
          <li><a href="#"><img src="images/feat2.jpg" alt="img02"></a></li>
          <li><a href="#"><img src="images/feat3.jpg" alt="img03"></a></li>
          <li><a href="#"><img src="images/feat4.jpg" alt="img04"></a></li>
          <li><a href="#"><img src="images/feat5.jpg" alt="img05"></a></li>
          <li><a href="#"><img src="images/feat6.jpg" alt="img06"></a></li>


        </ul>
        <nav>
          <a class="tt-current"></a><a></a><a></a><a></a>
        </nav>
      </section>
      <div class="clear"></div>
     
    </div>
  </div>
        <!--//features-->  
        
      <br><br><br><br><br><br>  
        <!--footer-->
   
    <div id="footer">
    	<div class="wrap">
    		<div class="container">
            	<div class="row">
                	<div class="span3">
                        <h2 class="title">Map</h2><div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m23!1m12!1m3!1d124443.56908327973!2d77.54466825827146!3d12.916619772669952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m8!3e6!4m0!4m5!1s0x3bae14fbe6242363%3A0x3f74ed130f110c25!2stechmax+btm!3m2!1d12.9166291!2d77.6147088!5e0!3m2!1sen!2sin!4v1521064253489" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe></div>
                    </div>
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
