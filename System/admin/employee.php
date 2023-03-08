<head>
    <link rel="icon" href="../img/AMS Logo.png">
    <link rel="stylesheet" href="../css/fontawesome-free-6.0.0-web/css/all.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap5.min.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap5.min.js"></script>
    <link rel="stylesheet" href="styles.css" />





    <title>
        Handy Hunt Dashboard
    </title>
</head>





<?php
require 'connection/config.php';
session_start();

if (isset($_POST['updateActive'])) {
    $updated_id = $_POST['update_id'];

    $query = "UPDATE tbl_users SET isAccept='0' WHERE id='$updated_id'";
    $query_run = mysqli_query($conn, $query);
    echo "<script>alert('success')</script>";
}
if (isset($_POST['updateInactive'])) {
    $updated_id = $_POST['update_id'];

    $query = "UPDATE tbl_users SET isAccept='1' WHERE id='$updated_id'";
    $query_run = mysqli_query($conn, $query);
    echo "<script>alert('success')</script>";
}

if (!isset($_SESSION['username'])) {
    header("Location: index.php");
}

$query = "SELECT job_id FROM tbl_jobs";
$query_run = mysqli_query($conn, $query);
$num = mysqli_num_rows($query_run);


$tesda_passers = "SELECT id FROM tbl_tesda_passers";
$tesda_passers_run = mysqli_query($conn, $tesda_passers);
$tesda_passersCount = mysqli_num_rows($tesda_passers_run);

$tbl_users = "SELECT id FROM tbl_users";
$tbl_users_run = mysqli_query($conn, $tbl_users);
$tbl_usersCount = mysqli_num_rows($tbl_users_run);

$employee = "SELECT id FROM tbl_users WHERE role = 'employee'";
$employee_run = mysqli_query($conn, $employee);
$employeeCount = mysqli_num_rows($employee_run);

$employer = "SELECT id FROM tbl_users WHERE role = 'employer'";
$employer_run = mysqli_query($conn, $employer);
$employerCount = mysqli_num_rows($employer_run);

// increment
$i = 1;







?>

<body>
    <div class="d-flex" id="wrapper">
        <!-- Sidebar -->
        <div class="bg-white" id="sidebar-wrapper">
            <div class="sidebar-heading text-center py-4 primary-text fs-4 fw-bold text-uppercase border-bottom">
                <!-- <i class="fas fa-user-secret me-2"></i> -->
                Handy Hunt Dashboard
            </div>
            <div class="list-group list-group-flush my-3">
                <a href="dashboard.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-tachometer-alt me-2"></i>Dashboard
                </a>
                <a href="tesda passers.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-chart-line me-2"></i>Tesda Passers
                </a>
                <a href="job posts.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-chart-line me-2"></i>Job Posts
                </a>
                <a href="employee.php" class="list-group-item list-group-item-action bg-transparent second-text active">
                    <i class="fas fa-paperclip me-2"></i>Employee
                </a>
                <a href="employer.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-paperclip me-2"></i>Employer
                </a>
                <a href="email.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-paperclip me-2"></i>Email
                </a>

                <!-- <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li>
                        <a class="list-group-item list-group-item-action bg-transparent second-text fw-bold" href="appointment.php">
                            Pending
                        </a>
                    </li>
                    <li>
                        <a class="list-group-item list-group-item-action bg-transparent second-text fw-bold" href="completed.php">
                            Completed
                        </a>
                    </li>
                </ul> -->


                <a href="logout.php" class="list-group-item list-group-item-action bg-transparent text-danger fw-bold">
                    <i class="fas fa-power-off me-2"></i>Logout
                </a>
            </div>
        </div>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <nav class="navbar navbar-expand-lg navbar-light bg-transparent py-4 px-4">
                <div class="d-flex align-items-center">
                    <i class="fas fa-align-left primary-text fs-4 me-3" id="menu-toggle"></i>
                    <h2 class="fs-2 m-0">Dashboard</h2>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle second-text fw-bold" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <i class="fas fa-user me-2"></i><?php echo $_SESSION['username']; ?>
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <!-- <li><a class="dropdown-item" href="#">Profile</a></li>
                                <li><a class="dropdown-item" href="#">Settings</a></li> -->
                                <li><a class="dropdown-item" href="logout.php">Logout</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>

            <div class="container-fluid px-4">

                <div class="row my-5">
                    <h3 class="fs-4 mb-3">Employee</h3>

                    <div class="overflow-hidden">
                        <hr>
                        <table class="table table-borderless align-middle table-hover">
                            <thead>
                                <tr>

                                    <th>Name</th>
                                    <th>Phone</th>
                                    <th>Gender</th>
                                    <th>Birthday</th>
                                    <th>Education / Title</th>
                                    <th>Address</th>
                                    <th>Status</th>
                                    <th>Action</th>

                                </tr>
                            </thead>

                            <tbody>
                                <?php

                                $query = "SELECT * FROM tbl_users WHERE role = 'employee' ORDER BY id DESC";
                                $query_run = mysqli_query($conn, $query);

                                if (mysqli_num_rows($query_run) > 0) {
                                    foreach ($query_run as $row) {
                                ?>
                                        <tr>


                                            <td>
                                                <p class="fw-bold"><?= $row['first_name']; ?> <?= $row['middle_name']; ?> <?= $row['last_name']; ?></p>
                                                <p><?= $row['email']; ?></p>

                                            </td>
                                            <td>
                                                <?= $row['phone']; ?>
                                            </td>
                                            <td>
                                                <p><?= $row['gender']; ?> </p>
                                            </td>
                                            <td><?= $row['bdate']; ?>/<?= $row['bmonth']; ?>/<?= $row['byear']; ?></td>

                                            <td>
                                                <p><?= $row['education']; ?></p>
                                                <p><?= $row['title']; ?></p>
                                            </td>
                                            <td><?= $row['country']; ?>, <?= $row['city']; ?></td>

                                            <td>
                                                <?php
                                                if ($row['isAccept'] == '1') {
                                                ?>
                                                    <span class="badge bg-primary">Active</span>
                                                <?php
                                                } else {
                                                ?>
                                                    <span class="badge bg-danger">InActive</span>
                                                <?php
                                                }
                                                ?>
                                            </td>
                                            <td>
                                                <?php

                                                if ($row['isAccept'] == '1') {
                                                ?>
                                                    <form method="post">
                                                        <button class="btn btn-danger btn-sm" type="submit" name="updateActive">Reject</button>
                                                        <input type="hidden" name="update_id" value="<?= $row['id']; ?>">
                                                    </form>

                                                <?php
                                                } else {
                                                ?>
                                                    <form method="post">
                                                        <button class="btn btn-primary btn-sm" type="submit" name="updateInactive">Accept</button>
                                                        <input type="hidden" name="update_id" value="<?= $row['id']; ?>">
                                                    </form>

                                                <?php
                                                }
                                                ?>
                                            </td>
                                        </tr>

                                    <?php

                                    }
                                } else {
                                    ?>
                                    <tr>
                                        <td colspan="6">No record found</td>
                                    </tr>
                                <?php
                                }
                                ?>

                            </tbody>

                        </table>
                        <hr>
                    </div>
                </div>
            </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('table').DataTable()




        });
    </script>

</body>

</html>