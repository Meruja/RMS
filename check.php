<?php
session_start();
include('config.php');
extract($_POST);
extract($_GET);


	$pass=md5($password);
	$que=mysqli_query($con,"select name,pass from student where email='$email_id' and pass='$pass' ");
	
	 $row= mysqli_num_rows($que);
	 if($row)

	 {
		 $_SESSION['student']=$email_id;
		echo "<script>window.location='index.php'</script>";
	 	
	 }
	
    
	
	 
	 
	 $pass1=md5($password);
	$que1=mysqli_query($con,"select email,pass,status from instructor where email='$email_id' and pass='$pass1'");
	 $row2= mysqli_num_rows($que1);
	 
	 if($row2)
	 {
		 $_SESSION['staff']=$email_id;
		echo "<script>window.location='Instructor'</script>";
	 }
	 	
	 
	 
	 $que2=mysqli_query($con,"select email,pass from admin where email='$email_id' and pass='$password'");
	
	 $row3= mysqli_num_rows($que2);
	 if($row3)
	 {
		 $_SESSION['admin']=$email_id;
		echo "<script>window.location='admin'</script>";
	 }
	  else
	 {
		 //$er="Invalid  Login";
		//header("location:index.php?err=$er");
		//exit;
	 echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Invalid  Login</font>";
	 }
	


	?>