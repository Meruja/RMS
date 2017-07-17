<?php
session_start();
include('config.php');
extract($_POST);
extract($_GET);

if(!empty($email_id))
{	
//student
	if($user==1)
	{
	$pass=md5($password);
	$que=mysqli_query($con,"select name,pass,status from student where email='$email_id' and pass='$pass' ");
	
	 $row= mysqli_num_rows($que);
	 if($row)
	 {
	 	$status=mysqli_fetch_assoc($que);
		if($status['status']==1)
		{
		echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Your account is deactivated by admin</font>";
		}
		else
		{
		$_SESSION['student']=$email_id;
		echo "<script>window.location='index.php'</script>";
	 	} 
	}
	 else
	 {
		 
	 echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Invalid Student Login</font>";
	 }
	}
//HOD
	if($user==2)
	{
	$pass=md5($password);
	$que=mysqli_query($con,"select email,pass,status from instructor where email='$email_id' and pass='$pass'");
	 $row= mysqli_num_rows($que);
	 if($row)
	{
	 	$status=mysqli_fetch_assoc($que);
		if($status['status']==1)
		{
		echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Your account is pending for activation</font>";
		}
		else
		{
		$_SESSION['staff']=$email_id;
		echo "<script>window.location='Instructor'</script>";
	 	} 
	}
	else
	{
		echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Invalid HOD login </font>";
	}
	}
	
	if($user==3)
	{
	$que=mysqli_query($con,"select email,pass from admin where email='$email_id' and pass='$password'");
	
	 $row= mysqli_num_rows($que);
	 if($row)
	 {
		$_SESSION['admin']=$email_id;
		echo "<script>window.location='admin'</script>";
	}
	else
	 {
		echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Wrong Admin login details</font>";
	 }
	}
}
else
{
	echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Invalid username or password</font>";
}
?>