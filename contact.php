 <?php
require('config.php');
 extract($_POST);
 
 if(isset($send))
 {
	$que=mysqli_query($con,"insert into contact values('','$name','$eid','$index','$msg',now())");
	$err="<font color='#FF0000'>Thanks for your feedback, we will contact you as soon as possible. </font>";
 
 }
 ?>
 	<Div class="col-md-4">
<h3>Contact Us</h3><br/>
<span class="glyphicon glyphicon-envelope"></span> Email: drexaminations@gmail.com<br/><br/>
<span class="glyphicon glyphicon-phone"></span> Mobile:0212223609<br/><br/>
<span class="glyphicon glyphicon-map-marker"></span> Website: <a href="www.jfn.ac.lk">Examination Department</a><br/>
		
	</Div>
 	<div class="col-md-8">
		<form method="post">
			<div class="form-group">
			<label for="exampleInputEmail1"><?php echo @$err;?></label>   
		  </div> 
			 
			<h4><font color="red"> Students! </font><br />
			<h4><font color="red"> Fill the form for any enquiry regarding to the results, Thank You. </font><br />
		</h4>
		  <div class="form-group">
			<label for="exampleInputEmail1">Name <font color="red">*</font></label>
			<input type="text" class="form-control" name="name"  placeholder="Enter your name" pattern="[a-z A-Z]*" required>
		  </div>
			 
		  <div class="form-group">
			<label for="exampleInputEmail1">Email address <font color="red">*</font></label>
			<input type="email" class="form-control" name="eid" id="exampleInputEmail1" placeholder="Enter your email address" required>
		  </div>

		  <div class="form-group">
			<label for="exampleInputEmail1">Index No <font color="red">*</font></label>
			<input type="text" class="form-control" name="index" maxlength="10"  placeholder="Enter your mobile number" >
		  </div> 

		  <div class="form-group">
			<label for="exampleInputEmail1">Message <font color="red">*</font></label>
			 <textarea class="form-control" name="msg" rows="3" maxlength="250" placeholder="A brief message about 250 letters" required></textarea>
		  </div> 
			<br/>
<div class="form-group">
    <button style="width:150px" name="send" class="btn btn-lg btn-primary btn-block" type="submit">Send</button>
</div>
	</form>	
	</div>
	</div>