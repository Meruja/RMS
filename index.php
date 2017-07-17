<?php
session_start();
require_once('config.php');

 ?>
<!DOCTYPE html>
<html lang="en">
  <head>
	<style>
		body {
  padding-top: 70px;
  padding-bottom: 30px;
}

.theme-dropdown .dropdown-menu {
  position: static;
  display: block;
  margin-bottom: 20px;
}

.theme-showcase > p > .btn {
  margin: 5px 0;
}

.theme-showcase .navbar .container {
  width: auto;
}
	</style>
	<style>
.panel {
    margin-bottom: 20px;
    background-color: #FF0000;
border: 1px solid #F2F3F3;
   }

*{margin:0px}
#searchbox
{
}
#display
{
width:250px;
display:none;
float:right; margin-right:60px;
border-left:solid 1px #dedede;
border-right:solid 1px #dedede;
border-bottom:solid 1px #dedede;
overflow:hidden;
}
.display_box
{
color:#FF0000;
border-top:solid 1px #dedede;
font-size:12px;
height:30px;
overflow:hidden;
}
.display_box:hover
{
background-color:#284761;
color:#FF0000;
}
</style>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Result Management System</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet">



    <!-- Just for debugging purposes. -->
    <script src="js/ie-emulation-modes-warning.js"></script>
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <style type="text/css">
    </style>
</head>

  <body role="document">

    <!-- Fixed navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top" style="background:#FF0000">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>

        <a class="navbar-brand" href="index.php" style="color:#fff">Result Management System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="index.php"style="color:#fff" ><span class="glyphicon glyphicon-home">Home</span></a></li>



			<li><a href="index.php?option=about" style="color:#fff" ><span class="glyphicon glyphicon-book">About Us</span></a></li>
			<?php
			if(isset($_SESSION['student']))
			{
			?><li><a href="Student/index.php" style="color:#fff" ><span class="glyphicon glyphicon-book">Student</span></a></li><?php
			}
			?>

			<?php
			if(isset($_SESSION['student']))
			{
			?><li><a href="Student/comresult.php" style="color:#fff" ><span class="glyphicon glyphicon-book">Common Result</span></a></li><?php
			}
			?>
            <li><a href="index.php?option=contact" style="color:#fff"><span class="glyphicon glyphicon-envelope">Contact Us</span></a></li>

          </ul>
		   <?php
		  if(!isset($_SESSION['student']))
		  {
		  ?>
		   <ul class="nav navbar-nav navbar-right">
					<li>
			<a href="#" data-toggle="modal" data-target="#log"style="color:#fff" >
			<span class="glyphicon glyphicon-lock"></span>Sign in</a>
		</li>

	<li>
			<a  href="#" data-toggle="modal" data-target="#m" style="color:#fff">
			<span class="glyphicon glyphicon-pencil"></span>SignUp</a>
		</li>

			</ul>
<?php
			}
			else
			{
			?>
<ul class="nav navbar-nav navbar-right">
					<li>
					<a  href="student/logout.php" style="color:#fff">
					<span class="glyphicon glyphicon-lock"></span>Sign out</a>
					</li>
					</ul>
			<?php
			}
			?>
        </div>
      </div>
    </nav>

<div class="row">
<div class="col-lg-12">
    <div class="container theme-showcase" role="main">
	  <?php
	  @$opt=$_REQUEST['option'];
	  if($opt!="")
	  {
		if($opt=="newuser")
		{
		include('regis.php');
		}
		if($opt=="login")
		{
		include('login.php');
		}
		if($opt=="about")
		{
		include('about.php');
		}
		if($opt=="contact")
		{
		include('contact.php');
		}
		if($opt=="forget_password")
		{
		include('forget_password.php');
		}
		if($opt=="enter_up")
		{
		include('enter_up.php');
		}
	  }else{
	  ?>
	  <!---------------------slider----------------------->
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>


    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="img/rms4.jpg" width="1300" height="200" >
      </div>

      <div class="item">
        <img src="img/rms5.jpg" width="1300" height="200">
      </div>

      <div class="item">
        <img src="img/rms6.jpg" width="1300" height="200" >
      </div>

    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<div class="row">
  <div class="col-sm-1">

  </div>
   <div class="col-sm-10">
 <h2 align="center" class="style1">Welcome to Online Result Management System </h2>

	 <p><strong><em> Welcome!</em></strong></p>
This Results Management System (RMS) helps administrator to track students' marks and facilitates students to keep track of their marks.
A head of department can upload the results once its released at the faculty level and then examination department can feed individual marks to the system by uploading an excel file.
The RMS also facilitate students to print their marks or export it to a pdf file.
     </div>
	</div>


  </div>

</div>
	  <!-----------------------slider--------------------->



<?php }?>


<br / > <br />
      <div class="row">



      </div>
    </div> <!-- /container -->






  <div class="nav navbar navbar-fixed-bottom bg-success" style="background:#FF0000; padding-top:5px;color:#000">
               <div class="row">
			   <div class="col-lg-1"></div>
			   <div class="col-lg-10">
					<span><h5 style="color:#fff" >Developed By Phoenix coders</h5></span>
				    <span style="float:right;"><a href="" target="_blank"><img src="img/linkedin.png" width="38" height="38"></a></span>
					<span style="float:right;"><a href=" target="_blank"><img src="img/twitter.png" width="38" height="38"></a></span>
					<span style="float:right;"><a href="https://www.facebook.com/university.jaffna/" target="_blank"><img src="img/facebook.png" width="38" height="38"></a></span>
    </div>
    </div>
    </div>

	</div>

<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <script src="../../assets/js/docs.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

<!-- registration model start -->

<?php include("login_p.php");?>
 
   		<?php  include('registration.php'); ?>

     <script src="jquery-1.11.2.min.js"></script>
     <script src="js/bootstrap.min.js"></script>

	<script>

	$(document).ready(function(){
					$("#err1").hide();
			$("#save").click(function(){

					var username =$('#username').val();
					var email =$('#email12').val();
					var pass =$('#pass123').val();
					var mob =$('#mob').val();
					var gen =$('#gender').val();
					var prog =$('#program').val();
					var course =$('#course').val();
                    var usertype =$('#usertype').val();
//	alert(mob);
var dataString = 'username='+ username + '&email='+ email+'&pass='+pass+'&mobile='+mob+'&gen='+gen+'&prog='+prog+'&course='+course+'&usertype='+usertype ;
//alert(dataString);
	if(email==''|| pass==''|| username=='' || mob=='' || gen=='' || prog=='' || course=='' || usertype=='')
   {
   		$("#err1").show();
    	$("#err1").html("Fill all the details before you submit. ");
	}
	else
	{

// AJAX Code To Submit Form.
	$.ajax(
	{
	type: "POST",
	url: "ajax_registration.php",
	data: dataString,
	cache: false,
	success: function(result)
		{
		//	$("#err").show();
		$('#err1').html(result);
		$("#err1").hide().slideDown();
						setTimeout(function()
						{
						$("#err1").hide();
						}, 3000);

		}
	});
	}
return false;


		});

	});

	</script>

	<script src="ajax_insert.js"></script>
<!-- registration model end -->

	</body>
</html>
