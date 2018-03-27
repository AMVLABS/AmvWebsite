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
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>AMV Application</title>
	
	<!-- core CSS -->
   <link rel="stylesheet" href="assets/css/style.css">
  <link href="css/bootstrap.css" rel="stylesheet">
  <link rel="icon" href="img/fabicon.png">
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
             <link rel="stylesheet" id="camera-css"  href="css/camera.css" type="text/css" media="all">
             <link href="css/bootstrap-responsive.css" rel="stylesheet">
             <link href="css/theme.css" rel="stylesheet">
             <link rel="stylesheet"  href="css/component.css" />
            <link rel="stylesheet"  href="css/animate.css" />
   <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/style2.css">
 <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>
 <link rel="stylesheet" href="assets/css/animate/animate.css" />

        <!--Theme custom css -->
     

        
    </head>
    
   
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

                                          </ul> </li> 
                                      <li class="current"><a href="javascript:{}">Solutions</a>
                                          <ul>
                                              <li class="current"><a href="cloud.html"><span>-</span>Cloud Service</a></li>
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
    <img src="img/Career.jpg" alt="slide">
    <div class="welcome-message">
        <div class="wrap-info">
            <div class="information">
                     <p  class="animated fadeInDown">Most famous IT in Bangalore 
</p>
       </div> 
        </div>
        </div>
    </div>
        <!--//banner-->
        
        <!--welcome-->
        
        <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
        Cloud Computing<span>AMV Application Solution </span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
     
     
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
  

<body class="homepage">


    <section id="middle">
        <div class="container">

            <div class="row">
                <div class="col-sm-6 wow fadeInDown">
                    <div class="skill">
                        <h2>Our Skills</h2>
                        <p>We offer end to end marketing services including campaign management and execution, customer insight, marketing consultancy and database platforms..</p>

                        <div class="progress-wrap">
                            <h3>Amazon Service</h3>
                            <div class="progress">
                              <div class="progress-bar  color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 85%">
                                <span class="bar-width">85%</span>
                              </div>

                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>HTML5</h3>
                            <div class="progress">
                              <div class="progress-bar color2" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 95%">
                               <span class="bar-width">95%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>Android</h3>
                            <div class="progress">
                              <div class="progress-bar color3" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                                <span class="bar-width">80%</span>
                              </div>
                            </div>
                        </div>

                        <div class="progress-wrap">
                            <h3>Cloud</h3>
                            <div class="progress">
                              <div class="progress-bar color4" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                <span class="bar-width">90%</span>
                              </div>
                            </div>
                        </div>
                    </div>

                </div><!--/.col-sm-6-->

            </div></div>
                    
    </section><!--/#middle-->
 <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
            <span>Cloud Description</span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
     
    <section id="content">

        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-8 wow fadeInDown">
                   <div class="tab-wrap"> 
                        <div class="media">
                            <div class="parrent pull-left">
                                <ul class="nav nav-tabs nav-stacked">
                                    <li class=""><a href="#tab1" data-toggle="tab" class="analistic-01">Cloud Development</a></li>
                                    <li class="active"><a href="#tab2" data-toggle="tab" class="analistic-02">Premium Plugin Included</a></li>
                                    <li class=""><a href="#tab3" data-toggle="tab" class="tehnical">Salesforce Development</a></li>
                                    <li class=""><a href="#tab4" data-toggle="tab" class="tehnical">Our Philosopy</a></li>
                                    <li class=""><a href="#tab5" data-toggle="tab" class="tehnical">What We Do?</a></li>
                                </ul>
                            </div>

                            <div class="parrent media-body">
                                <div class="tab-content">
                                    <div class="tab-pane fade" id="tab1">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/tab2.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Cloud Development</h2>
                                                 <p>most of Google's services could be considered cloud computing: Gmail, Google Calendar, Google Maps, and so on. Apple iCloud: Apple's cloud service is primarily used for online storage, backup, and synchronization of your mail, contacts, calendar, and more.</p>
                                            </div>
                                        </div>
                                    </div>

                                     <div class="tab-pane fade active in" id="tab2">
                                        <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/tab1.png">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Premium Plugin Included</h2>
                                                 <p> to use our premium plugins or avoid the developer warning to sign up for an API key, you will need to signup for an API key and update the script tag used to ... Lastly, you just need to extend your TinyMCE configuration to include any of the additional, advanced plugins.
                                                 </p>
                                            </div>
                                        </div>
                                     </div>

                                     <div class="tab-pane fade" id="tab3">
                                       <div class="media">
                                           <div class="pull-left">
                                                <img class="img-responsive" src="images/tab3.jpg">
                                            </div>
                                            <div class="media-body">
                                                 <h2>Salesforce Development</h2>
                                                 <p>Salesforce.com, Inc. (styled in its logo as salesƒorce; abbreviated usually as SF or SFDC) is an American cloud computing company headquartered in San Francisco, California. Though its revenue comes from a customer relationship management (CRM) product, Salesforce also sells commercial applications of social networking through acquisition and internal development.

As of spring 2018, it is one of the most highly valued American cloud computing companies with a market capitalization above $90 billion.[3] In August 2017, Salesforce announced that it had reached the $10 billion revenue run rate becoming the first enterprise cloud company to do so.[4]

Its common stock is listed on the New York Stock Exchange with the symbol CRM and is a constituent of the S&P 500 Index.
                                                 </p>
                                            </div>
                                        </div>
                                     </div>
                                     
                                     <div class="tab-pane fade" id="tab4">
                                        <p>A corporate philosophy enlightens a company's customers and employees of the intention of the organization, helping to build more meaningful relationships. A business owner should spend time developing a philosophy that aligns his goals and vision for his business.</p>
                                     </div>

                                     <div class="tab-pane fade" id="tab5">
                                        <p>company on earth to work for. What would it be like? For three years we've been investigating this question by asking hundreds of executives in surveys and in seminars all over the world to describe their ideal organization. This mission arose from our research into the relationship ...</p>
                                     </div>
                                </div> <!--/.tab-content-->  
                            </div> <!--/.media-body--> 
                        </div> <!--/.media-->     
                    </div><!--/.tab-wrap-->               
                </div><!--/.col-sm-6-->

               

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#content-->

   


      <br>
    <div class="wrap block">
            <div class="container welcome_block">
            	<div class="welcome_line welcome_t"></div>
          <span>Our WORKS</span>
                <div class="welcome_line welcome_b"></div>
            </div>
        </div>
          <div class="pl">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <a href="#">  <h2 font color="red">Android Development</h2><br>

                            Android has a reputation for being less secure than Apple's iOS, but Google says its platform has gotten a bad rap. The company has released its fourth annual security report..</a>
                    </div>
                    <div class="span3">
                        <a href="#"><h2 font color="red">Mobile Development</h2><br>
                        	Mobile app development is a term used to denote the act or process by which a mobile app is developed for mobile devices, such as personal digital assistants, enterprise digital assistants or mobile phones.
                        </a>
                    </div>
                    <div class="span3">
                        <a href="#"><h2 font color="red">Data Warehousing</h2><br>
                        	a data warehouse (DW or DWH), also known as an enterprise data warehouse (EDW), is a system used for reporting and data analysis, and is considered a core component of business intelligence..
                        </a>
                    </div>
                        <div class="span3">  
                        <a href="#"><h2 font color="red">Software Testing</h2><br>
                          Software testing is an investigation conducted to provide stakeholders with information about the quality of the software product or service under test. Software testing can also provide an objective.
                        </a>
                    </div>                       	
                </div>
            </div>
        </div>
<br>
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
    
      
        <!--footer-->
        
        
<div class="scrollup">
			<a href="#"><i class="fa fa-chevron-up"></i></a>
		</div>		


        <script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
        <script src="assets/js/vendor/bootstrap.min.js"></script>

        <script src="assets/js/plugins.js"></script>
        <script src="assets/js/main.js"></script>
        
    <script src="js/modernizr.custom.js"></script>
		
 <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/jquery.isotope.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/wow.min.js"></script>

    
    
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
