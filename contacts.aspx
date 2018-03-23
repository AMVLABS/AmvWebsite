<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

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
                                      </ul>  </li>
                                  <li class="sub-menu"><a href="javascript:{}">Cloud Solutions</a>
                                      <ul>
                                          <li><a href="Cloud.html"><span>-</span>Cloud Service</a></li>
                                          <li><a href="Disaster.html"><span>-</span>Disaster Recovery Services</a></li>
                                          <li><a href="Cloud.html"><span>-</span>Cloud Solution Provider</a></li>
                                          <li><a href="internet.html"><span>-</span>Internet of Things</a></li>       
                                          <li><a href="amazon.html"><span>-</span>Amazon Services</a></li>                                          

                                      </ul>                                          
                                  </li>
                                       
                                    
                                  <li class="sub-menu"><a href="javascript:{}">Blog</a>
                                       <ul>
                                          <li><a href="blog.html"><span>-</span>Blog with right sidebar</a></li>
                                          <li><a href="blog_post.html"><span>-</span>Blog post</a></li>                                      
                                      </ul>
                                  </li>
                                  <li class="current"><a href="contacts.html">Contacts</a></li>
                                </ul>
                            </div>
                         </nav>                            
                    </div>
                </div>                
            </div>
         </div>
    </div>    
    
<!--//header-->
    
<!--page_container-->
<div class="page_container">
	<div class="breadcrumb">
    	<div class="wrap">
        	<div class="container">
                <a href="index1.html">Contacts</a>
            </div>
        </div>
    </div>
	<div class="wrap">
    	<div class="container">
            <section>
            	<div class="row">
                	<div class="span4">
                    	<h2 class="title"><span>Contact Info</span></h2>
                        <div id="map"><iframe src="https://www.google.com/maps/embed?pb=!1m22!1m12!1m3!1d124443.56908327973!2d77.54466825827146!3d12.916619772669952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m7!3e6!4m0!4m4!1s0x3bae14fbe6242363%3A0x3f74ed130f110c25!3m2!1d12.9166291!2d77.6147088!5e0!3m2!1sen!2sin!4v1520900099290" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
                        <p>12, Outer Ring Rd, Jay Bheema Nagar, 1st Stage,<br> BTM Layout 1, Bengaluru, Karnataka 560068</p>
                        <p>Phone: 087224 14141<br/>Email: <a href="mailto:#">hr@amvlabs.com</a><br/>Web: <a href="#">http://amvlabs.com/</a></p>                           
                    </div>
                	<div class="span8">
                    	<h2 class="title"><span>Get In Touch</span></h2>
                        <div class="contact_form">  
                        	<div id="note"></div>
                            <div id="fields">
                                <form id="ajax-contact-form" action="">
                                    <input class="span7" type="text" name="name" id="name" value="" placeholder="Name (required)" />
                                    <input class="span7" type="text" name="email" id="email" value="" placeholder="Email (required)" />
                                    <input class="span7" type="text" name="subject" id="subject" value="" placeholder="Subject" />
                                    <textarea name="message" id="message" class="span8" placeholder="Message"></textarea>
                                    <div class="clear"></div>
                                    <input type="reset" class="btn dark_btn" value="Clear form" />
                                    <input type="submit" class="btn send_btn" value="Submit" onclick="return EmailSend();" />
                                    <div class="clear"></div>
                                </form>
                            </div>
                        </div>                   
                    </div>                	
            	</div>
            </section>
        </div>
    </div>
</div>
<!--//page_container-->

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
                        	<span class="testimonials_arrow"></span>AMV Solution is the greatest company who has done their work properly in time to time.so its best to do work here or best to give project here.
                        	<div class="clear"></div>
                            <div class="author">MR. A.Mahesh Kumar, Company inc.</div>
                        </li>
                      <li>
                        	<span class="testimonials_arrow"></span>AMV Solution is the greatest company who has done their work properly in time to time.so its best to do work here or best to give project here.
                        	<div class="clear"></div>
                            <div class="author">Miss Sweta Kumari, Company inc.</div>
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

<!--//footer-->    

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.js"></script>
<script src="js/superfish.js"></script>
<script type="text/javascript" src="js/jquery.tweet.js"></script>
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
<script type="text/javascript" src="js/myscript.js"></script>
<script src="js/application.js"></script>
<script type="text/javascript">
	$(document).ready(function(){	
		$("#ajax-contact-form").submit(function() {
			var str = $(this).serialize();		
			$.ajax({
				type: "POST",
				url: "contact_form/contact_process.php",
				data: str,
				success: function(msg) {
					// Message Sent - Show the 'Thank You' message and hide the form
					if(msg == 'OK') {
						result = '<div class="notification_ok">Your message has been sent. Thank you!</div>';
						$("#fields").hide();
					} else {
						result = msg;
					}
					$('#note').html(result);
				}
			});
			return false;
		});
});

function EmailSend() {
    var name = $("#name").val();
    var email = $("#email").val();
    var message = $("#message").val();
    var subject = $("#subject").val();
    alert(name + email + message + subject);
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
</body>
</html>
