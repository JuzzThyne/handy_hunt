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
                <a href="employee.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-paperclip me-2"></i>Employee
                </a>
                <a href="employer.php" class="list-group-item list-group-item-action bg-transparent second-text">
                    <i class="fas fa-paperclip me-2"></i>Employer
                </a>
                <a href="email.php" class="list-group-item list-group-item-action bg-transparent second-text active">
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
                <div class="row g-3 my-2">
                    <div class="col-md-6">
                        <div class="p-3 bg-white shadow-lg d-flex justify-content-around align-items-center rounded">
                            <div>
                                <h3 class="fs-2"><?php echo $num; ?></h3>
                                <p class="fs-5">Total Email received</p>
                            </div>

                            <i class="fas fa-equals fs-1 primary-text border rounded-full secondary-bg p-3"></i>
                        </div>
                    </div>
                </div>


                <div class="row my-5">
                    <h3 class="fs-4 mb-3">E-mail received</h3>
                    <div class="col">
                        <div class="overflow-hidden">
                            <hr>
                            <table class="table table-borderless align-middle table-hover">
                                <thead>
                                    <tr>
                                        <th scope="col">id</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">E-mail</th>
                                        <th scope="col" width="100">Date issue</th>
                                        <th scope="col">Message</th>


                                    </tr>
                                </thead>

                                <tbody>

                                    <?php

                                    $query = "SELECT * FROM tbl_contact ORDER BY name DESC";
                                    $query_run = mysqli_query($conn, $query);

                                    if (mysqli_num_rows($query_run) > 0) {
                                        foreach ($query_run as $row) {
                                    ?>
                                            <tr>
                                                <td><?= $row['id']; ?></td>
                                                <td><?= $row['name']; ?></td>
                                                <td><?= $row['email']; ?>
                                                <td><?= $row['created_at']; ?> </td>
                                                <td><?= $row['message']; ?></td>

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