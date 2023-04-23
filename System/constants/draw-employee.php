<form name="frm" action="app/create-account.php" method="POST" autocomplete="off">
    <div class="login-box-wrapper">

        <div class="modal-header">
            <h4 class="modal-title text-center">Create your account for free</h4>
        </div>

        <div class="modal-body">

            <div class="row gap-20">




                <div class="col-sm-12 col-md-12">

                    <div class="form-group">
                        <label>First Name</label>
                        <input class="form-control" placeholder="Enter your first name" name="fname" required type="text">
                    </div>

                </div>

                <div class="col-sm-12 col-md-12">

                    <div class="form-group">
                        <label>Middle Name</label>
                        <input class="form-control" placeholder="Enter your middle name" name="mname" required type="text">
                    </div>

                </div>

                <div class="col-sm-12 col-md-12">

                    <div class="form-group">
                        <label>Last Name</label>
                        <input class="form-control" placeholder="Enter your last name" name="lname" required type="text">
                    </div>

                </div>

                <div class="col-sm-12 col-md-12">

                    <div class="form-group">
                        <label>Email Address</label>
                        <input class="form-control"  pattern=".+@gmail\.com" placeholder="Enter your email address" name="email" required type="email">
                    </div>

                </div>

                <div class="col-sm-12 col-md-12">

                    <div class="form-group">
                        <label>Password</label>
                        <input class="form-control" placeholder="Min 8 and Max 20 characters" name="password" required type="password">
                        <!--<button class="btn btn-outline-secondary" type="button" id="btn-toggle-password">
						<i class="fa fa-eye"></i>
						</button>-->
                    </div>

                </div>

                <div class="col-sm-12 col-md-12">

                    <div class="form-group">
                        <label>Password Confirmation</label>
                        <input class="form-control" placeholder="Re-type password again" name="confirmpassword" required type="password">
                        <!--<button class="form-control-append btn btn-outline-secondary" type="button" id="btn-toggle-password-one">
						<i class="fa fa-eye"></i>
						</button>-->
                    </div>

                </div>

                <input type="hidden" name="acctype" value="101">
                <input type="hidden" name="fullname" value="">


            </div>

        </div>

<div class="modal-footer text-center">
<ul>
  <li class="list"><button  onclick="return val();" type="submit" name="reg_mode" class="btn btn-primary">Register</button></li>
  <!-- <li class="list"><button class="btn btn-min" ><a href="register.php?p=Employer" class="btn-min-min btn-min">Signup as employer</a></button></li> -->
  <p>Register as Employer? <span>Register <a href="register.php?p=Employer">Here</a></span></p>
  <!-- <li class="list" > <a href="register.php?p=Employer" class="list1">SIGNUP AS EMPLOYER</a> </li> -->
</ul>
</div>									
</div>

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




