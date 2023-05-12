<form name="frm" action="app/create-account.php" method="POST" autocomplete="off" onsubmit="return val();">
<div class="login-box-wrapper">
							
<div class="modal-header">
<h4 class="modal-title text-center">Create your account</h4>
</div>

<div class="modal-body">
																
<div class="row gap-20">
											

												

												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Company Name</label>
<input class="form-control" placeholder="Enter your company name" name="company"  type="text" required> 
</div>
												
</div>

<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Company Type</label>
<input class="form-control" placeholder="Eg: partnership, corporation, etc" name="type" oninput="this.value = this.value.replace(/[^a-zA-Z\s]/g, '')"  type="text" required> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">

<div class="form-group"> 
<label>Email Address</label>
<!-- <input class="form-control"  pattern=".+@gmail\.com" placeholder="Enter your gmail/yahoo address" name="email" required type="text">  -->
<input class="form-control"  pattern=".+@gmail\.com" placeholder="Enter your email address" name="email"  type="text" required> 
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Password</label>
<input class="form-control" placeholder="Min 8 and Max 20 characters" id="password" name="password" type="password" required > 
<!--<button class="btn btn-outline-secondary" type="button" id="btn-toggle-password">
						<i class="fa fa-eye"></i>
						</button>-->
            <div id="message">
            <p id="letter" class="invalid">A lowercase letter</p>
            <p id="capital" class="invalid">A uppercase letter</p>
            <p id="number" class="invalid">A number</p>
            <p id="length" class="invalid">Minimum 8 characters</p>
            </div>
</div>
												
</div>
												
<div class="col-sm-12 col-md-12">
												
<div class="form-group"> 
<label>Password Confirmation</label>
<input class="form-control" placeholder="Re-type password again" id="confirmPassword" name="confirmpassword"  type="password" required>
<!--<button class="form-control-append btn btn-outline-secondary" type="button" id="btn-toggle-password-one">
						<i class="fa fa-eye"></i>
						</button> -->
            <p id="passwordMatchMessage" style="font-size: 13px;"></p>
</div>
												
</div>
												
<input type="hidden" name="acctype" value="102">
												
												
</div>

</div>

<div class="modal-footer text-center">
<ul>
  <li class="list"><button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Register</button></li>
  <!-- <li class="list"><button class="btn btn-min" ><a href="register.php?p=Employer" class="btn-min-min btn-min">Signup as employer</a></button></li> -->
  <p>Register as Applicant? <span>Register <a href="register.php?p=Employee">Here</a></span></p>
  <!-- <li class="list" > <a href="register.php?p=Employee" class="list1">SIGNUP AS EMPLOYEE</a> </li> -->
</ul>
<!-- <button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Register</button> -->
</div>
										
</div>
</form>




<script>
var btnTogglePassword = document.getElementById("btn-toggle-password");
var inputPassword = document.getElementsByName("password")[0];

btnTogglePassword.addEventListener("click", function() {
if (inputPassword.type === "password") {
inputPassword.type = "text";
btnTogglePassword.innerHTML = "<i class='fa fa-eye-slash'></i>";
} else {
inputPassword.type = "password";
btnTogglePassword.innerHTML = "<i class='fa fa-eye'></i>";
}
});
</script>
<script>
var btnTogglePassword1 = document.getElementById("btn-toggle-password-one");
var inputPassword1 = document.getElementsByName("confirmpassword")[0];

btnTogglePassword1.addEventListener("click", function() {
if (inputPassword1.type === "password") {
inputPassword1.type = "text";
btnTogglePassword1.innerHTML = "<i class='fa fa-eye-slash'></i>";
} else {
inputPassword1.type = "password";
btnTogglePassword1.innerHTML = "<i class='fa fa-eye'></i>";
}
});
</script>