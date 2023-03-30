<form name="frm" action="app/create-account.php" method="POST" autocomplete="off">
<div class="login-box-wrapper">
							
<div class="modal-header">
<h4 class="modal-title text-center">Create your account for free</h4>
</div>

<div class="modal-body">
																
<div class="row gap-20">
											

												

												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Company Name</label>
<input class="form-control" placeholder="Enter your company name" name="company" required type="text"> 
</div>
												
</div>

<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Company Type</label>
<input class="form-control" placeholder="Eg: partnership, corporation, etc" name="type" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Email Address</label>
<!-- <input class="form-control"  pattern=".+@gmail\.com" placeholder="Enter your gmail/yahoo address" name="email" required type="text">  -->
<input class="form-control"  pattern=".+@gmail\.com" placeholder="Enter your email address" name="email" required type="text"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Password</label>
<input class="form-control" placeholder="Min 8 and Max 20 characters" name="password" required type="password"> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Password Confirmation</label>
<input class="form-control" placeholder="Re-type password again" name="confirmpassword" required type="password"> 
</div>
												
</div>
												
<input type="hidden" name="acctype" value="102">
												
												
</div>

</div>

<div class="modal-footer text-center">
<ul>
  <li class="list"><button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Register</button></li>
  <!-- <li class="list"><button class="btn btn-min" ><a href="register.php?p=Employer" class="btn-min-min btn-min">Signup as employer</a></button></li> -->
  <li class="list" > <a href="register.php?p=Employee" class="list1">SIGNUP AS EMPLOYEE</a> </li>
</ul>
<!-- <button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Register</button> -->
</div>
										
</div>
</form>