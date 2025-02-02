<?php 
include('../includes/config.php'); 
include('../includes/functions.php'); // Assuming utility functions like get_user_metadata are here
include('header.php'); 
include('sidebar.php'); 

// Check if the user is logged in
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

// Validate and get the student ID (passed as a GET parameter)
if (!isset($_GET['std_id']) || !is_numeric($_GET['std_id'])) {
    echo "<div class='alert alert-danger'>Invalid student ID.</div>";
    include('footer.php');
    exit();
}

$std_id = intval($_GET['std_id']);

// Fetch user metadata
$usermeta = get_user_metadata($std_id); // Function assumed to be in functions.php
if (!$usermeta) {
    echo "<div class='alert alert-danger'>Student data not found.</div>";
    include('footer.php');
    exit();
}

// Set current month and year
$current_month = strtolower(date('F'));
$current_year = date('Y');

// Fetch attendance data
function get_attendance($std_id, $db_conn, $month, $year) {
    $stmt = $db_conn->prepare("SELECT * FROM attendance WHERE student_id = ? AND attendance_month = ? AND YEAR(current_session) = ?");
    $stmt->bind_param("isi", $std_id, $month, $year);
    $stmt->execute();
    return $stmt->get_result();
}

$attendance_data = get_attendance($std_id, $db_conn, $current_month, $current_year);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Student Attendance</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Attendance</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- Student Details -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Student Details</h3>
            </div>
            <div class="card-body">
                <strong>Name: </strong> <?php echo htmlspecialchars($usermeta['name']); ?><br>
                <strong>Class: </strong> <?php echo htmlspecialchars($usermeta['class']); ?>
            </div>
        </div>

        <!-- Attendance Details -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Attendance</h3>
            </div>
            <div class="card-body">
                <?php if ($attendance_data->num_rows > 0): ?>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Date</th>
                            <th>Status</th>
                            <th>Signin Time</th>
                            <th>Signout Time</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php while ($row = $attendance_data->fetch_assoc()): ?>
                        <?php $attendance = unserialize($row['attendance_value']); ?>
                        <?php foreach ($attendance as $date => $value): ?>
                        <tr>
                            <td><?php echo htmlspecialchars($date); ?></td>
                            <td><?php echo $value['signin_at'] ? 'Present' : 'Absent'; ?></td>
                            <td><?php echo $value['signin_at'] ? date('d-m-Y h:i:s', $value['signin_at']) : ''; ?></td>
                            <td><?php echo $value['signout_at'] ? date('d-m-Y h:i:s', $value['signout_at']) : ''; ?>
                            </td>
                        </tr>
                        <?php endforeach; ?>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <div class="alert alert-info">No attendance records found for this month.</div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<?php include('footer.php'); ?>