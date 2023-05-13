<!doctype html>
<html lang="en">
<?php
require 'constants/settings.php';
require 'constants/check-login.php';
error_reporting(0);
$fromsearch = false;

if (isset($_GET['search']) && $_GET['search'] == "search") {

} else {
}

if (isset($_GET['page'])) {
	$page = $_GET['page'];
	if ($page == "" || $page == "1") {
		$page1 = 0;
		$page = 1;
	} else {
		$page1 = ($page * 16) - 16;
	}
} else {
	$page1 = 0;
	$page = 1;
}


?>

<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Handy Hunt - Applicant</title>
	<meta name="description" content="Online Job Management / Job Portal" />
	<meta name="keywords"
		content="job, work, resume, applicants, application, employee, employer, hire, hiring, human resource management, hr, online job management, company, worker, career, recruiting, recruitment" />
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

	<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" media="screen">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/component.css" rel="stylesheet">

	<link rel="stylesheet" href="css/linearicons/style.css">
	<link rel="stylesheet" href="css/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/simple-line-icons/simple-line-icons.html">
	<link rel="stylesheet" href="css/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="css/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="css/rivolicons/style.css">
	<link rel="stylesheet" href="css/flaticon-line-icon-set/flaticon-line-icon-set.css">
	<link rel="stylesheet" href="css/flaticon-streamline-outline/flaticon-streamline-outline.css">
	<link rel="stylesheet" href="css/flaticon-thick-icons/flaticon-thick.css">
	<link rel="stylesheet" href="css/flaticon-ventures/flaticon-ventures.css">

	<link href="css/style.css" rel="stylesheet">


</head>

<style>
	.autofit2 {
		height: 63px;
		width: 63px;
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
							';
							}

							?>

						</ul>
					</div>

				</div>

				<div id="slicknav-mobile"></div>

			</nav>
			<div id="registerModal" class="modal fade login-box-wrapper" tabindex="-1" style="display: none;"
				data-backdrop="static" data-keyboard="false" data-replace="true">

				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title text-center">Create your account for free</h4>
				</div>

				<div class="modal-body">

					<div class="row gap-20">

						<div class="col-sm-6 col-md-6">
							<a href="register.php?p=Employer" class="btn btn-facebook btn-block mb-5-xs">Register as
								Employer</a>
						</div>
						<div class="col-sm-6 col-md-6">
							<a href="register.php?p=Employee" class="btn btn-facebook btn-block mb-5-xs">Register as
								Employee</a>
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
					<br>

					<!-- <ol class="breadcrumb-list booking-step">
						<li><a href="./">Home</a></li>
						<li><span>Employees</span></li>
					</ol> -->

					<form action="employees.php" method="GET" autocomplete="off">

						<div class="second-search-result-inner">
							<!-- <span class="labeling">Find Applicant</span> -->
							<div class="row">
								<!-- <div class="col-xss-12 col-xs-6 col-sm-6 col-md-5">
									<div class="form-group form-lg">
										<select class="form-control" name="category" required />
										<option value="">-Select Category-</option>
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);


											$stmt = $conn->prepare("SELECT * FROM tbl_categories ORDER BY category");
											$stmt->execute();
											$result = $stmt->fetchAll();

											foreach ($result as $row) {
												$cat = $row['category'];
												?>
												<option <?php if ($slc_category == "$cat") {
													print ' selected ';
												} ?> value="<?php echo $row['category']; ?>"><?php echo $row['category']; ?>
												</option>
												<?php
											}
											$stmt->execute();
										} catch (PDOException $e) {
										}

										?>

										</select>
									</div>
								</div> -->





								<?php
								$servername = "localhost";
								$username = "root";
								$password = "";
								$dbname = "job_portal";

								// Create connection
								$conn = mysqli_connect($servername, $username, $password, $dbname);

								// Check connection
								if (!$conn) {
									die("Connection failed: " . mysqli_connect_error());
								}
								?>
								<!-- <form method="GET" action="">
									<div class="col-xss-12 col-xs-6 col-sm-6 col-md-10" style="margin-top: 4px ">
										<input type="text" name="query" class="form-control	">

									</div>
									<div class="col-xss-12 col-xs-6 col-sm-4 col-md-2">
										<button name="search" value="✓" type="submit"
											class="btn btn-block">Search</button>
									</div>

								</form> -->
								<?php
								// Check if the search form has been submitted
								if (isset($_GET['query'])) {
									// Get the search query from the form
									$search = mysqli_real_escape_string($conn, $_GET['query']);
									// Prepare a SQL query to search for matching results
									$sql = "SELECT * FROM tbl_users WHERE first_name LIKE '%$search%' OR email LIKE '%$search%' OR country LIKE '%$search%' OR phone LIKE '%$search%' OR website LIKE '%$search%'";
									// Execute the SQL query
									$result = mysqli_query($conn, $sql);
									// Check if any results were found
									if (mysqli_num_rows($result) > 0) {
										// Display the results
										while ($row = mysqli_fetch_assoc($result)) {
											// Display each row of data
											$title = $row['first_name'];
											// echo $row['city_name'];
										}
									} else {
										// No results found
										echo "No results found.";
									}
								}
								?>
								<!-- <div class="col-xss-12 col-xs-6 col-sm-4 col-md-2">
									<button name="search" value="✓" type="submit" class="btn btn-block">Search</button>
								</div> -->

							</div>
						</div>

					</form>

				</div>

			</div>

			
					<!-- <div class="section sm">

						<div class="container">

							<div class="sorting-wrappper">

								<div class="sorting-header">
									<h3 class="sorting-title">Applicants</h3>
								</div>


							</div>

							<div class="employee-grid-wrapper">

								<div class="GridLex-gap-30">

									<div class="GridLex-grid-noGutter-equalHeight">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE role = 'employee' AND first_name = '$title' AND isAccept = '1' ORDER BY first_name LIMIT $page1,16");
											$stmt->execute();
											$result = $stmt->fetchAll();

											foreach ($result as $row) {
												$empavatar = $row['avatar'];
												?>
												<div class="GridLex-col-3_sm-4_xs-6_xss-12">

												<div class="employee-grid-item">
									
									<div class="action">
											
										<div class="row gap-10">
										
											<div class="col-xs-6 col-sm-6">
												<div class="text-left">
													<button class="btn"><i class="icon-heart"></i></button> 
												</div>
											</div>
											
											<div class="col-xs-6 col-sm-6">
												<div class="text-right">
													<a class="btn text-right" href="employee-detail.php"><i class="icon-action-redo"></i></a> 
												</div>
											</div>
											
										</div>
										
									</div>
									
									<a target="_blank" href="employee-detail.php?empid=<?php echo $row['member_no']; ?>" class="clearfix">
										
										<div class="image clearfix">
										<?php 
										if ($empavatar == null) {
 									    print '<center><img class="img-circle autofit2" alt="image" src="data:image/jpeg;base64,'.base64_encode($empavatar).'"/></center>';
										print '<center><img class="img-circle autofit2" src="images/default.jpg" alt="image"  /></center>';
										}else{
 									    echo '$empavatar';
										echo '<center><img class="img-circle autofit2" alt="image" src="data:image/jpeg;base64,'.base64_encode($empavatar).'"/></center>';	
										}
										?>
										
						

										</div>
										
										<div class="content">
										
											<h4><?php echo $row['first_name'] ?> <?php echo $row['last_name'] ?></h4>
											<p class="location"><i class="fa fa-map-marker"></i> <?php echo $row['country'] ?></p>
											
											<h6 class="text-primary">Education : <?php echo $row['education'] ?></h6>
											
											<h6 class="text-primary"><?php echo $row['title'] ?></h6>
											
										</div>
									
									</a>
									
								</div>

												</div>
												<?php

											}
										} catch (PDOException $e) {
										} ?>






									</div>

								</div>

							</div>

						</div>

					
					</div> -->
					<div class="section sm">

						<div class="container">

							<div class="sorting-wrappper">

								<div class="sorting-header">
									<h3 class="sorting-title">Applicants</h3>
								</div>


							</div>

							<div class="employee-grid-wrapper">

								<div class="GridLex-gap-30">

									<div class="GridLex-grid-noGutter-equalHeight">
										<?php
										require 'constants/db_config.php';
										try {
											$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
											$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
											$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE role = 'employee' AND isAccept = '1' ORDER BY first_name LIMIT $page1,16");
											$stmt->execute();
											$result = $stmt->fetchAll();

											foreach ($result as $row) {
												$empavatar = $row['avatar'];
												?>
												<div class="GridLex-col-3_sm-4_xs-6_xss-12">

												<div class="employee-grid-item">
									
									<div class="action">
											
										<div class="row gap-10">
										
											<div class="col-xs-6 col-sm-6">
												<div class="text-left">
													<button class="btn"><i class="icon-heart"></i></button> 
												</div>
											</div>
											
											<div class="col-xs-6 col-sm-6">
												<div class="text-right">
													<a class="btn text-right" href="employee-detail.html"><i class="icon-action-redo"></i></a> 
												</div>
											</div>
											
										</div>
										
									</div>
									
									<a target="_blank" href="employee-detail.php?empid=<?php echo $row['member_no']; ?>" class="clearfix">
										
										<div class="image clearfix">
										<?php 
										if ($empavatar == null) {
 									    
										print '<center><img class="img-circle autofit2" src="images/default.jpg" alt="image"  /></center>';
										}else{
										echo '<center><img class="img-circle autofit2" alt="image" src="data:image/jpeg;base64,'.base64_encode($empavatar).'"/></center>';	
										}
										?>
										
						

										</div>
										
										<div class="content">
										
											<h4><?php echo $row['first_name'] ?> <?php echo $row['last_name'] ?></h4>
											<p class="location"><i class="fa fa-map-marker"></i> <?php echo $row['country'] ?></p>
											
											<h6 class="text-primary">Education : <?php echo $row['education'] ?></h6>
											
											<h6 class="text-primary"><?php echo $row['title'] ?></h6>
											
										</div>
									
									</a>
									
								</div>

												</div>
												<?php

											}
										} catch (PDOException $e) {
										} ?>






									</div>

								</div>

							</div>

						</div>

					
					</div>

					

			
		
					<div class="pager-wrapper">

						<ul class="pager-list">
							<?php
							require 'constants/db_config.php';
							$total_records = 0;
							try {
								$conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
								$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
								$stmt = $conn->prepare("SELECT * FROM tbl_users WHERE role = 'employee' AND isAccept = '1'ORDER BY first_name");
								$stmt->execute();
								$result = $stmt->fetchAll();

								foreach ($result as $row) {
									$total_records++;
								}
							} catch (PDOException $e) {
							} ?>

							<?php
							$records = $total_records / 16;
							$records = ceil($records);
							if ($records > 1) {
								$prevpage = $page - 1;
								$nextpage = $page + 1;

								print '<li class="paging-nav" ';
								if ($page == "1") {
									print 'class="disabled"';
								}
								print '><a ';
								if ($page == "1") {
									print '';
								} else {
									print 'href="employees.php?page=' . $prevpage . '"';
								}
								print '><i class="fa fa-chevron-left"></i></a></li>';
								for ($b = 1; $b <= $records; $b++) {

									?>
									<li class="paging-nav"><a <?php if ($b == $page) {
										print ' style="background-color:#33B6CB; color:white" ';
									} ?> href="employees.php?page=<?php echo "$b"; ?>"><?php echo $b . " "; ?></a></li>
									<?php
								}
								print '<li class="paging-nav"';
								if ($page == $records) {
									print 'class="disabled"';
								}
								print '><a ';
								if ($page == $records) {
									print '';
								} else {
									print 'href="employees.php?page=' . $nextpage . '"';
								}
								print '><i class="fa fa-chevron-right"></i></a></li>';
							}


							?>

						</ul>

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
											<p>Handy Hunt is a job portal, online job management system developed by
												handyhunt group for capstone in 2022.</p>

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