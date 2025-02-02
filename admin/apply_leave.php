<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Collect form data
    $employee_name = mysqli_real_escape_string($db_conn, $_POST['employee_name']);
    $leave_type = mysqli_real_escape_string($db_conn, $_POST['leave_type']);
    $start_date = mysqli_real_escape_string($db_conn, $_POST['start_date']);
    $end_date = mysqli_real_escape_string($db_conn, $_POST['end_date']);
    
    // Insert data into the database
    $query = "INSERT INTO leaves (employee_name, leave_type, start_date, end_date) VALUES ('$employee_name', '$leave_type', '$start_date', '$end_date')";
    
    if (mysqli_query($conn, $query)) {
        $success_message = "Leave application submitted successfully!";
    } else {
        $error_message = "Failed to submit leave application: " . mysqli_error($conn);
    }
}
?>

<!-- Content Header -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Apply for Leave</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
                    <li class="breadcrumb-item active">Apply for Leave</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Main Content -->
<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <!-- Display Success or Error Messages -->
                <?php if (isset($success_message)): ?>
                <div class="alert alert-success"><?php echo $success_message; ?></div>
                <?php elseif (isset($error_message)): ?>
                <div class="alert alert-danger"><?php echo $error_message; ?></div>
                <?php endif; ?>

                <!-- Leave Application Form -->
                <form method="POST" action="">
                    <div class="form-group">
                        <label for="employee_name">Employee Name</label>
                        <input type="text" name="employee_name" class="form-control" id="employee_name"
                            placeholder="Enter your name" required>
                    </div>
                    <div class="form-group">
                        <label for="leave_type">Leave Type</label>
                        <select name="leave_type" class="form-control" id="leave_type" required>
                            <option value="">Select Leave Type</option>
                            <option value="Sick Leave">Sick Leave</option>
                            <option value="Casual Leave">Casual Leave</option>
                            <option value="Maternity Leave">Maternity Leave</option>
                            <option value="Paternity Leave">Paternity Leave</option>
                            <option value="Annual Leave">Annual Leave</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="start_date">Start Date</label>
                        <input type="date" name="start_date" class="form-control" id="start_date" required>
                    </div>
                    <div class="form-group">
                        <label for="end_date">End Date</label>
                        <input type="date" name="end_date" class="form-control" id="end_date" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    </div>
</section>

<?php include('footer.php'); ?>