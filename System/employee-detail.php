<!doctype html>
<html lang="en">
<?php
require 'constants/settings.php';
require 'constants/check-login.php';
require 'constants/db_config.php';
if (isset($_GET['empid'])) {
	$empid = $_GET['empid'];

	try {
		$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
		$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


		$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE role = 'employee' AND member_no = :empid");

		$stmt->bindParam(':empid', $empid);
		$stmt->execute();
		$result = $stmt->fetchAll();
		$rec = count($result);
		if ($rec == "0") {
			header("location:./");
		} else {

			foreach ($result as $row) {
				$myfname = $row['first_name'];
				$mylname = $row['last_name'];
				$bdate = $row['bdate'];
				$bmonth = $row['bmonth'];
				$byear = $row['byear'];
				$mycountry = $row['country'];
				$mycity = $row['city'];
				$myphone = $row['phone'];
				$about = $row['about'];
				$empavatar = $row['avatar'];
				$current_year = date('Y');
				//  $myage = $current_year - $byear;
				$myedu = $row['education'];
				$mytitle = $row['title'];
				$mymail = $row['email'];
				$status = $row['status'];
				$isLooking = $row['isLooking'];
			}
		}
	} catch (PDOException $e) {
	}
} else {
	header("location:./");
}

?>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Handy Hunt - <?php echo "$myfname"; ?> <?php echo "$mylname"; ?></title>
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

	<link rel="shortcut icon" href="images/ico/favicon.png">

	<link rel="shortcut icon" href="images/ico/favicon.png">

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/component.css" rel="stylesheet">

	<link rel="stylesheet" href="icons/linearicons/style.css">
	<link rel="stylesheet" href="icons/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="icons/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="icons/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="icons/rivolicons/style.css">
	<link rel="stylesheet" href="icons/flaticon-line-icon-set/flaticon-line-icon-set.css">
	<link rel="stylesheet" href="icons/flaticon-streamline-outline/flaticon-streamline-outline.css">
	<link rel="stylesheet" href="icons/flaticon-thick-icons/flaticon-thick.css">
	<link rel="stylesheet" href="icons/flaticon-ventures/flaticon-ventures.css">

	<link href="css/style.css" rel="stylesheet">


</head>

<style>
	.autofit2 {
		height: 110px;
		width: 120px;
		object-fit: cover;
	}
</style>

<body class="not-transparent-header">

	<div class="container-wrapper">

		<header id="header">

			<nav class="navbar navbar-default navbar-fixed-top navbar-sticky-function">

				<div class="container">

					<div class="logo-wrapper">
						<div class="logo">
							<a href="./"><img src="images/handyman.png" alt="Logo" /></a>
						</div>
					</div>

					<div id="navbar" class="navbar-nav-wrapper navbar-arrow">

						<ul class="nav navbar-nav" id="responsive-menu">

							<li>

								<a href="./">Home</a>

							</li>

							<li>
								<a href="job-list.php">Job List</a>

							</li>
							<!-- <li>
								<a href="looking.php">Looking for Job</a>
							</li> -->
							<li>
								<a href="employers.php">Company</a>
							</li>

							<?php
									if ($user_online == true) {
												if ($myrole == "employer") {
													print '<li> 
													<a href="employees.php"> 
													Applicant
													</a>
													</li>';
												}	
							} else {
							
							}
							?>

							<li>
								<a href="contact.php">Contact Us</a>
							</li>

						</ul>

					</div>

					<div class="nav-mini-wrapper">
						<ul class="nav-mini sign-in">
							<?php
							if ($user_online == true) {
								print '
						    <li><a href="logout.php">Logout</a></li>
							<li><a href="' . $myrole . '">Profile</a></li>';
							} else {
								print '
							<li><a href="login.php">Login</a></li>
							<li><a href="register.php?p=Employee">Register</a></li>';
							}

							?>

						</ul>
					</div>

				</div>

				<div id="slicknav-mobile"></div>

			</nav>

			<div id="registerModal" class="modal fade login-box-wrapper" tabindex="-1" style="display: none;" data-backdrop="static" data-keyboard="false" data-replace="true">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title text-center">Create your account for free</h4>
				</div>

				<div class="modal-body">

					<div class="row gap-20">

						<div class="col-sm-6 col-md-6">
							<a href="register.php?p=Employer" class="btn btn-facebook btn-block mb-5-xs">Register as Employer</a>
						</div>
						<div class="col-sm-6 col-md-6">
							<a href="register.php?p=Employee" class="btn btn-facebook btn-block mb-5-xs">Register as Employee</a>
						</div>

					</div>

				</div>

				<div class="modal-footer text-center">
					<button type="button" data-dismiss="modal" class="btn btn-primary btn-inverse">Close</button>
				</div>

			</div>


		</header>


		<div class="main-wrapper">

			<div class="breadcrumb-wrapper">

				<div class="container">

					<ol class="breadcrumb-list booking-step">
						<!-- <li><a href="employees.php">All Employees</a></li> -->
						<li><span><?php echo "$myfname"; ?> <?php echo "$mylname"; ?></span></li>
					</ol>

				</div>

			</div>

			<div class="section sm">

				<div class="container">

					<div class="row">

						<div class="col-md-10 col-md-offset-1">

							<div class="employee-detail-wrapper">

								<div class="employee-detail-header text-center">

									<div class="image">
										<?php
										if ($empavatar == null) {
											print '<center><img class="img-circle autofit2" src="images/default.jpg"  alt="image"  /></center>';
										} else {
											echo '<center><img class="img-circle autofit2" alt="image" src="data:image/jpeg;base64,' . base64_encode($empavatar) . '"/></center>';
										}
										?>
									</div>

									<h2 class="heading mb-15"><?php echo "$myfname"; ?> <?php echo "$mylname"; ?></h2>

									<p class="location"><i class="fa fa-map-marker"></i> <?php echo "$mycountry"; ?>, <?php echo "$mycity"; ?><span class="mh-5">|</span> <i class="fa fa-phone"></i> <?php echo "$myphone"; ?></p>


									<ul class="meta-list clearfix">
										<li>
											<h4 class="heading">Birth Day:</h4>
											<?php echo "$bdate"; ?>/<?php echo "$bmonth"; ?>/<?php echo "$byear"; ?>
										</li>
										<!-- <li>
												<h4 class="heading">Age:</h4>
												<?php echo "$myage"; ?>-year-old
											</li> -->
										<li>
											<h4 class="heading">Education:</h4>
											<?php echo "$myedu"; ?> in <?php echo "$mytitle"; ?>
										</li>
										<li>
											<h4 class="heading">Email: </h4>
											<?php echo "$mymail"; ?>
										</li>
										<li>
											<div class="container">
												<?php
												$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
												$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
												$mynewid = $empid;
												$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE status = 'unemployed' AND member_no = '$mynewid' ");
												$stmt->execute();
												$result = $stmt->fetchAll();
												$rec = count($result);
												if ($rec == 1) {
													//$emp = "50";
													$work_stat = "UNEMPLOYED";
													$stat_color = "progress-bar progress-bar-striped bg-danger";
												} else {
													//$emp = "100";
													$work_stat = "WORKING";
													$stat_color = "progress-bar progress-bar-striped bg-success";
												}


												?>
											</div>

											<h4 class="heading">Status </h4>
											<div class="progress">
												<div class="<?php echo $stat_color ?>" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width:100%">
													<?php echo $work_stat ?>
												</div>
											</div>
											<?php
											if ($isLooking == '1') {
											?>
												<span class="badge bg-progress-bar progress-bar-striped bg-success">
													Looking for a Job
												</span>

											<?php
											} else {
											?>
												<span class="badge bg-progress-bar progress-bar-striped bg-danger">
													Not Looking for a Job
												</span>

											<?php
											}


											?>
										</li>
									</ul>

								</div>

								<div class="employee-detail-company-overview mt-40 clearfix">

									<h3>Introduce my self</h3>

									<p><?php echo "$about"; ?></p>

									<!-- <div class="row">

										<div class="col-sm-12">

											<h3>Education</h3>

											<ul class="employee-detail-list">
												<?php
												require 'constants/db_config.php';
												try {
													$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
													$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
													$stmt = $conn->prepare("SELECT * FROM tbl_academic_qualification WHERE member_no = :empid ORDER BY id");
													$stmt->bindParam(':empid', $empid);
													$stmt->execute();
													$result = $stmt->fetchAll();
													$rec = count($result);
													if ($rec == "0") {
													} else {

														foreach ($result as $row) {
												?>
															<li>
																<h5><?php echo $row['course']; ?> </h5>
																<p class="text-muted font-italic">Level - <?php echo $row['level']; ?> , <?php echo $row['timeframe']; ?><span class="font600 text-primary"> <?php echo $row['institution']; ?></span> <?php echo $row['country']; ?></p>
																<p><a class="btn btn-primary btn-sm mb-5 mb-0-sm" href="view-certificate.php?id=<?php echo $row['id']; ?>">View Certificate</a></p>
															</li>
												<?php
														}
													}
												} catch (PDOException $e) {
												} ?>



											</ul>

										</div>



									</div> -->

									<h3>Work Experience</h3>
									<ul class="employee-detail-list">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_experience WHERE member_no = :empid ORDER BY id");
											$stmt->bindParam(':empid', $empid);
											$stmt->execute();
											$result = $stmt->fetchAll();
											$rec = count($result);
											if ($rec == "0") {
											} else {

												foreach ($result as $row) {
										?>
													<li>
														<h5><?php echo $row['title']; ?> </h5>
														<p class="text-muted font-italic"><?php echo $row['start_date']; ?> to <?php echo $row['end_date']; ?><span class="font600 text-primary"> <?php echo $row['institution']; ?></span></p>
														<p>Supervisor : <span class="font600 text-primary"> <?php echo $row['supervisor']; ?></span> , Phone : <span class="font600 text-primary"> <?php echo $row['supervisor_phone']; ?></span> <br><?php echo $row['duties']; ?></p>
													</li>
										<?php
												}
											}
										} catch (PDOException $e) {
										} ?>



									</ul>



									<h3>Training & Workshop</h3>
									<ul class="employee-detail-list">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_training WHERE member_no = :empid ORDER BY id");
											$stmt->bindParam(':empid', $empid);
											$stmt->execute();
											$result = $stmt->fetchAll();
											$rec = count($result);
											if ($rec == "0") {
											} else {

												foreach ($result as $row) {
													$certificate = $row['certificate'];
										?>
													<li>
														<h5><?php echo $row['training']; ?> </h5>
														<p class="text-muted font-italic"><span class="font600 text-primary"> <?php echo $row['institution']; ?></span> <?php echo $row['timeframe']; ?></p>
														<?php
														if ($certificate == "") {
														} else {
														?>
															<p><a class="btn btn-primary btn-sm mb-5 mb-0-sm" href="view-certificate-b.php?id=<?php echo $row['id']; ?>">View Certificate</a></p>
														<?php
														}

														?>

													</li>
										<?php
												}
											}
										} catch (PDOException $e) {
										} ?>



									</ul>

									<h3>Educational Attainment</h3>
									<ul class="employee-detail-list">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_professional_qualification WHERE member_no = :empid ORDER BY id");
											$stmt->bindParam(':empid', $empid);
											$stmt->execute();
											$result = $stmt->fetchAll();
											$rec = count($result);
											if ($rec == "0") {
											} else {

												foreach ($result as $row) {
													$certificate = $row['certificate'];
										?>
													<li>
														<h5><?php echo $row['title']; ?> </h5>
														<p class="text-muted font-italic"><?php echo $row['timeframe']; ?><span class="font600 text-primary"> <?php echo $row['institution']; ?></span> <?php echo $row['country']; ?></p>
														<p><a class="btn btn-primary btn-sm mb-5 mb-0-sm" href="view-certificate-c.php?id=<?php echo $row['id']; ?>">View Certificate</a></p>
													</li>
										<?php
												}
											}
										} catch (PDOException $e) {
										} ?>


									</ul>


									<h3>Other Attachments</h3>
									<ul class="employee-detail-list">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_other_attachments WHERE member_no = :empid ORDER BY id");
											$stmt->bindParam(':empid', $empid);
											$stmt->execute();
											$result = $stmt->fetchAll();
											$rec = count($result);
											if ($rec == "0") {
											} else {

												foreach ($result as $row) {
										?>
													<li>
														<h5><?php echo $row['title']; ?> </h5>
														<p class="font600 text-primary"><?php echo $row['issuer']; ?></p>
														<p><a class="btn btn-primary btn-sm mb-5 mb-0-sm" href="view-attachment.php?id=<?php echo $row['id']; ?>">View Attachment</a></p>
													</li>
										<?php
												}
											}
										} catch (PDOException $e) {
										} ?>



									</ul>


									<h3>Language Proficiency</h3>
									<ul class="employee-detail-list">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_language WHERE member_no = :empid ORDER BY id");
											$stmt->bindParam(':empid', $empid);
											$stmt->execute();
											$result = $stmt->fetchAll();
											$rec = count($result);
											if ($rec == "0") {
											} else {

												foreach ($result as $row) {
										?>
													<li>
														<h5><?php echo $row['language']; ?> </h5>
														<p class="text-muted font-italic">Speaking <span class="font600 text-primary"> <?php echo $row['speak']; ?></span> , Reading <span class="font600 text-primary"> <?php echo $row['reading']; ?></span> , Writing <span class="font600 text-primary"> <?php echo $row['writing']; ?></span></p>
													</li>
										<?php
												}
											}
										} catch (PDOException $e) {
										} ?>


									</ul>


									<h3>Referees</h3>
									<ul class="list-icon">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_referees WHERE member_no = :empid ORDER BY id");
											$stmt->bindParam(':empid', $empid);
											$stmt->execute();
											$result = $stmt->fetchAll();
											$rec = count($result);
											if ($rec == "0") {
											} else {

												foreach ($result as $row) {
										?>
													<li>

														<div class="icon">

															<i class="flaticon-line-icon-set-user-1"></i>

														</div>

														<h5><?php echo $row['ref_name']; ?></h5>
														<p><?php echo $row['ref_title']; ?> <span class="font600 text-primary"><?php echo $row['institution']; ?></span></p>
														<p>Email : <a href="mailto:<?php echo $row['ref_mail']; ?>"><?php echo $row['ref_mail']; ?></a></p>
														<p>Phone : <a href="tel:<?php echo $row['ref_phone']; ?>"><?php echo $row['ref_phone']; ?></a></p>

													</li>
										<?php
												}
											}
										} catch (PDOException $e) {
										} ?>




									</ul>

								</div>

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

	<div id="back-to-top">
		<a href="#"><i class="ion-ios-arrow-up"></i></a>
	</div>

	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	<script type="text/javascript" src="js/jquery-migrate-1.2.1.min.js"></script>
	<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-modalmanager.js"></script>
	<script type="text/javascript" src="js/bootstrap-modal.js"></script>
	<script type="text/javascript" src="js/smoothscroll.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.waypoints.min.js"></script>
	<script type="text/javascript" src="js/wow.min.js"></script>
	<script type="text/javascript" src="js/jquery.slicknav.min.js"></script>
	<script type="text/javascript" src="js/jquery.placeholder.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-tokenfield.js"></script>
	<script type="text/javascript" src="js/typeahead.bundle.min.js"></script>
	<script type="text/javascript" src="js/bootstrap3-wysihtml5.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-select.min.js"></script>
	<script type="text/javascript" src="js/jquery-filestyle.min.js"></script>
	<script type="text/javascript" src="js/bootstrap-select.js"></script>
	<script type="text/javascript" src="js/ion.rangeSlider.min.js"></script>
	<script type="text/javascript" src="js/handlebars.min.js"></script>
	<script type="text/javascript" src="js/jquery.countimator.js"></script>
	<script type="text/javascript" src="js/jquery.countimator.wheel.js"></script>
	<script type="text/javascript" src="js/slick.min.js"></script>
	<script type="text/javascript" src="js/easy-ticker.js"></script>
	<script type="text/javascript" src="js/jquery.introLoader.min.js"></script>
	<script type="text/javascript" src="js/jquery.responsivegrid.js"></script>
	<script type="text/javascript" src="js/customs.js"></script>


</body>

</html>