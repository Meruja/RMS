 <?php 
 require('config.php');
 extract($_POST);
 extract($_GET);
if(!empty($email))
 {
	if($usertype==1)
	{
	 $que=mysqli_query($con,"select email from student where email='$email'");
	 $row= mysqli_num_rows($que);
	 if($row)
	 {
	echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Sorry! Email already exists</font>";
	 }
	 else if(!filter_var($email,FILTER_VALIDATE_EMAIL))
	 {
		 echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Please enter valid email address</font>";
	 }
	 else
	 {
	 $pass=md5($pass);
	 mysqli_query($con,"insert into student values('','$username','$email','$pass','$Index_no','0')");
	echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:green'></span>
	<font color='green'>Congrats! ! Your account has been created Successfully.</font>";
	 }
	 }
	 
	//Instructor
	if($usertype==2){
	
	 $que=mysqli_query($con,"select email from instructor where email='$email'");
	 $row= mysqli_num_rows($que);
	 if($row)
	 {
	echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Sorry! Email already exists</font>";
	 }
	 else if(!filter_var($email,FILTER_VALIDATE_EMAIL))
	 {
		 echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:red'></span> <font color='red'>Please enter valid email address</font>";
	 }
	 else
	 {
	  $pass=md5($pass);
	  $mob =0;
	  //$dept=$_POST['dept'];
	 mysqli_query($con,"insert into instructor values('','$username','$email','$pass','$Dept','$mob','1')");
	echo "<span class='glyphicon glyphicon-exclamation-sign' style='color:green'></span>
	<font color='green'>Congrats Sir/Madam!   Your account has been created Successfully, Admin will review and activate it soon.</font>";
	 }
	 }
	 
 
 }
 ?>
