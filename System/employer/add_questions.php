<!doctype html>
<html lang="en">
<?php
include '../constants/settings.php';
include 'constants/check-login.php';



if ($user_online == "true") {
	if ($myrole == "employer") {
	} else {
		header("location:../");
	}
} else {
	header("location:../");
}

if (isset($_GET['category'])) {
	$country = $_GET['country'];
	$query1 = "SELECT * FROM tbl_categories WHERE country = :country ORDER BY category ASC";
	$fromsearch = true;
	$slc_country = "$country";
} else {	
	$query1 = "SELECT * FROM tbl_categories ORDER BY category DESC";
	$slc_country = "NULL";
	$slc_category = "NULL";
	$title = "Company List";
}

?>



<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Handy Hunt - Add Questions</title>
	<meta name="description" content="Online Job Management / Job Portal" />
	<meta name="keywords" content="job, work, resume, applicants, application, employee, employer, hire, hiring, human resource management, hr, online job management, company, worker, career, recruiting, recruitment" />
	<meta name="author" content="BwireSoft">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta property="og:image" content="http://<?php echo "$actual_link"; ?>/images/banner.jpg" />
	<meta property="og:image:secure_url" content="https://<?php echo "$actual_link"; ?>/images/banner.jpg" />
	<meta property="og:image:type" content="image/jpeg" />
	<meta property="og:image:width" content="500" />
	<meta property="og:image:height" content="300" />
	<meta property="og:image:alt" content="Bwire Jobs" />
	<meta property="og:description" content="Online Job Management / Job Portal" />

	<link rel="shortcut icon" href="../images/ico/favicon.png">

	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" media="screen">
	<link href="../css/animate.css" rel="stylesheet">
	<link href="../css/main.css" rel="stylesheet">
	<link href="../css/component.css" rel="stylesheet">

	<link rel="stylesheet" href="../icons/linearicons/style.css">
	<link rel="stylesheet" href="../icons/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../icons/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="../icons/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="../icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="../icons/rivolicons/style.css">
	<link rel="stylesheet" href="../icons/flaticon-line-icon-set/flaticon-line-icon-set.css">
	<link rel="stylesheet" href="../icons/flaticon-streamline-outline/flaticon-streamline-outline.css">
	<link rel="stylesheet" href="../icons/flaticon-thick-icons/flaticon-thick.css">
	<link rel="stylesheet" href="../icons/flaticon-ventures/flaticon-ventures.css">

	<link href="../css/style.css" rel="stylesheet">

</head>


<body class="not-transparent-header">

	<div class="container-wrapper">

		<header id="header">

			<nav class="navbar navbar-default navbar-fixed-top navbar-sticky-function">

				<div class="container">

					<div class="logo-wrapper">
						<div class="logo">
							<a href="../"><img src="../images/handyman.png" alt="Logo" /></a>
						</div>
					</div>

					<div id="navbar" class="navbar-nav-wrapper navbar-arrow">

						<ul class="nav navbar-nav" id="responsive-menu">

							<li>

								<a href="./">Home</a>

							</li>

							<li>
								<a href="../job-list.php">Job List</a>

							</li>
							<!-- <li>
								<a href="looking.php">Looking for Job</a>
							</li> -->

							<li>
								<a href="../employers.php">Company</a>
							</li>

							<?php
									if ($user_online == true) {
												if ($myrole == "employer") {
													print '<li> 
													<a href="../employees.php"> 
													Applicant
													</a>
													</li>';
												}	
							} else {
							
							}
							?>


							<li>
								<a href="../contact.php">Contact Us</a>
							</li>

						</ul>

					</div>

					<div class="nav-mini-wrapper">
						<ul class="nav-mini sign-in">
							<li><a href="../logout.php">Logout</a></li>
							<li><a href="./">Profile</a></li>
						</ul>
					</div>

				</div>

				<div id="slicknav-mobile"></div>

			</nav>


		</header>

		<div class="main-wrapper">

			<div class="breadcrumb-wrapper">

				<div class="container">

					<ol class="breadcrumb-list booking-step">
						<li><a href="../">Jobs</a></li>
						<li><span>Change Password</span></li>
					</ol>

				</div>

			</div>


			<div class="admin-container-wrapper">

				<div class="container">

					<div class="GridLex-gap-15-wrappper">

						<div class="GridLex-grid-noGutter-equalHeight">

							<div class="GridLex-col-3_sm-4_xs-12">

								<div class="admin-sidebar">


									<div class="admin-user-item for-employer">

										<div class="image">
											<?php
											if ($logo == null) {
												print '<center>Company Logo Here</center>';
											} else {
												echo '<center><img alt="image" title="' . $compname . '" width="180" height="100" src="data:image/jpeg;base64,' . base64_encode($logo) . '"/></center>';
											}

											?><br>
										</div>

										<h4><?php echo "$compname"; ?></h4>

										
									</div>

									<div class="admin-user-action text-center">

										<a href="post-job.php" class="btn btn-primary btn-sm btn-inverse">Post a Job</a>

									</div>

									<ul class="admin-user-menu clearfix">
										<li class="">
											<a href="./"><i class="fa fa-user"></i> Profile</a>
										</li>
										<li class="active">
											<a href="change-password.php"><i class="fa fa-key"></i> Change Password</a>
										</li>

										<li>
											<a href="../company.php?ref=<?php echo "$myid"; ?>"><i class="fa fa-briefcase"></i> Company Overview</a>
										</li>
										<li>
											<a href="my-jobs.php"><i class="fa fa-bookmark"></i> Posted Jobs</a>
										</li>
										<li>
											<a href="my-employee.php"><i class="fa fa-bookmark"></i> Accepted Employees</a>
										</li>

										<li>
											<a href="../logout.php"><i class="fa fa-sign-out"></i> Logout</a>
										</li>
									</ul>

								</div>

							</div>

							<div class="GridLex-col-9_sm-8_xs-12">

								<div class="admin-content-wrapper">

									<div class="admin-section-title">

										<h2>Add Question</h2>

									</div>

									<form name="frm" class="post-form-wrapper" action="app/save_questions.php" method="POST">

										<div class="row gap-20">
											<?php include 'constants/check_reply.php';?>

											<select class="form-control" name="category" required />
												<option value="">-Select Category-</option>
												<?php
												require '../constants/db_config.php';
												try {
													$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
													$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
													$stmt = $conn->prepare("SELECT * FROM tbl_categories");
													$stmt->execute();
													$result = $stmt->fetchAll();
													foreach ($result as $row) {
														$cat = $row['category'];
														?>
														<option <?php if ($slc_category == "$cat") { print ' selected '; } ?> value="<?php echo $row['category']; ?>"><?php echo $row['category']; ?></option>
													<?php
													}
													$stmt->execute();
												} catch (PDOException $e) {
												}
												?>
											</select>
											<br>
											
											
											<div id="question-wrapper" style="display:none;">
												<!-- This div will be displayed if a category is selected -->
												<!-- <h4><?php echo $myid ?></h4> -->
												<input type="hidden" name="id" id="id" value="<?php echo $myid ?>">
												<label for="question" style="padding-top: 5px;">Question:</label>
												<input type="text" class="form-control"  name="question" id="question" required />
												<label for="question" style="padding-top: 5px;">A:</label>
												<input type="text" class="form-control" name="choose_A" id="choose_A" required />
												<label for="question" style="padding-top: 5px;">B:</label>
												<input type="text" class="form-control" name="choose_B" id="choose_B" required />
												<label for="question" style="padding-top: 5px;">C:</label>
												<input type="text" class="form-control" name="choose_C" id="choose_C" required />
												<label for="question" style="padding-top: 5px;">D:</label>
												<input type="text" class="form-control" name="choose_D" id="choose_D" required />
												<label for="question" style="padding-top: 5px;" >Answer:</label>
												<input type="text" class="form-control" name="answer" id="answer" placeholder="Letter Only" required />
											</div>
											
											<div class="clear"><br></div>

											<div class="col-sm-12 mt-10">
												<button type="submit" name="UploadQuestion" class="btn btn-primary">Add Questions</button>
											</div>

										</div>

										<script>
										// Show the question-wrapper div when a category is selected
										document.querySelector('select[name="category"]').addEventListener('change', function() {
											if (this.value !== '') {
												document.getElementById('question-wrapper').style.display = 'block';
											} else {
												document.getElementById('question-wrapper').style.display = 'none';
											}
										});
										</script>
									</form>
									<br>


								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<footer class="footer-wrapper">

				<div class="main-footer">

					<div class="container">

						<div class="row">

							<div class="col-sm-12 col-md-9">

								<div class="row">

									<div class="col-sm-6 col-md-4">

										<div class="footer-about-us">
											<h5 class="footer-title">About Handy Hunt</h5>
											<p>Handy Hunt is a job portal, online job management system developed by handyhunt group for capstone in 2022.</p>

										</div>

									</div>

									<div class="col-sm-6 col-md-5 mt-30-xs">
										<h5 class="footer-title">Quick Links</h5>
										<ul class="footer-menu clearfix">
											<li><a href="./">Home</a></li>
											<li><a href="job-list.php">Job List</a></li>
											<li><a href="employers.php">Company</a></li>
											<li><a href="employees.php">Applicant</a></li>
											<li><a href="contact.php">Contact Us</a></li>
											<li><a href="#">Go to top</a></li>

										</ul>

									</div>

								</div>

							</div>

							<div class="col-sm-12 col-md-3 mt-30-sm">

								<h5 class="footer-title">Handy Hunt Contact</h5>

								<p>Address : University of Caloocan City, Congressional Campus</p>
								<p>Email : <a href="mailto:nightingale.nath2@gmail.com">handyhunt@gmail.com</a></p>
								<p>Phone : <a href="tel:+233546607474">09101493778</a></p>


							</div>


						</div>

					</div>

				</div>

				<div class="bottom-footer">

				</div>

			</footer>

		</div>

	</div>



	<div id="back-to-top">
		<a href="#"><i class="ion-ios-arrow-up"></i></a>
	</div>

	<script type="text/javascript">
		function val() {
			if (frm.oldpassword.value == "") {
				alert("Enter The Old Password.");
				frm.password.focus();
				return false;
			}
			if (frm.password.value == "") {
				alert("Enter The New Password.");
				frm.password.focus();
				return false;
			}
			if ((frm.password.value).length < 8) {
				alert("Password should be minimum 8 characters.");
				frm.password.focus();
				return false;
			}
			if (!frm.password.value.match(/[a-z]/)) {
				alert("Password should contains lowercase letters.");
				frm.password.focus();
				return false;
			}
			if (!frm.password.value.match(/[A-Z]/)) {
				alert("Password should contains Uppercase letters.");
				frm.password.focus();
				return false;
			}
			if (!frm.password.value.match(/[0-9]/)) {
				alert("Password should contains Numbers.");
				frm.password.focus();
				return false;
			}

			if ((frm.password.value).length > 20) {
				alert("Password should be maximum 20 characters.");
				frm.password.focus();
				return false;
			}

			if (frm.confirmpassword.value == "") {
				alert("Enter the Confirmation Password.");
				return false;
			}
			if (frm.confirmpassword.value != frm.password.value) {
				alert("Password confirmation does not match.");
				return false;
			}
			if (frm.oldpassword.value != frm.checkoldpassword.value) {
				alert("Old Password confirmation does not match.");
				return false;
			}

			return true;
		}
	</script>

	<!-- Auto logout pag 5 mins inactive ang mouse at keyboard -->
	<script type="text/javascript" src="../js/user-timeout.js"></script>
	<!-- End -->
	<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="../js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-modalmanager.js"></script>
	<script type="text/javascript" src="../js/bootstrap-modal.js"></script>
	<script type="text/javascript" src="../js/smoothscroll.js"></script>
	<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="../js/jquery.waypoints.min.js"></script>
	<script type="text/javascript" src="../js/wow.min.js"></script>
	<script type="text/javascript" src="../js/jquery.slicknav.min.js"></script>
	<script type="text/javascript" src="../js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-tokenfield.js"></script>
	<script type="text/javascript" src="../js/typeahead.bundle.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap3-wysihtml5.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="../js/jquery-filestyle.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap-select.js"></script>
	<script type="text/javascript" src="../js/ion.rangeSlider.min.js"></script>
	<script type="text/javascript" src="../js/handlebars.min.js"></script>
	<script type="text/javascript" src="../js/jquery.countimator.js"></script>
	<script type="text/javascript" src="../js/jquery.countimator.wheel.js"></script>
	<script type="text/javascript" src="../js/slick.min.js"></script>
	<script type="text/javascript" src="../js/easy-ticker.js"></script>
	<script type="text/javascript" src="../js/jquery.introLoader.min.js"></script>
	<script type="text/javascript" src="../js/jquery.responsivegrid.js"></script>
	<script type="text/javascript" src="../js/customs.js"></script>


</body>



</html>