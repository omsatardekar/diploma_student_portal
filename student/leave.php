 <?php
ob_start(); // Start output buffering

include('../includes/config.php');
include('header.php');
include('sidebar.php');

// Handle leave application submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $leave_type = mysqli_real_escape_string($db_conn, $_POST['leave_type']);
    $start_date = mysqli_real_escape_string($db_conn, $_POST['start_date']);
    $end_date = mysqli_real_escape_string($db_conn, $_POST['end_date']);
    $student_id = $std_id; // Assuming the student ID is available in $std_id
    
    // Insert leave request into the database
    $query = "INSERT INTO leaves (employee_name, leave_type, start_date, end_date, student_id, status) 
              VALUES ('$std_id', '$leave_type', '$start_date', '$end_date', '$student_id', 'Pending')";
    
    if (mysqli_query($db_conn, $query)) {
        $success_message = "Leave application submitted successfully!";
        // Redirect to the same page to prevent form resubmission on refresh
        header("Location: ".$_SERVER['PHP_SELF']);
        exit();
    } else {
        $error_message = "Failed to submit leave application: " . mysqli_error($db_conn);
    }
}
?>

 <!-- Content Header (Page header) -->
 <div class="content-header">
     <div class="container-fluid">
         <div class="row mb-2">
             <div class="col-sm-6">
                 <h1 class="m-0 text-dark">Apply for Leave</h1>
             </div><!-- /.col -->
             <div class="col-sm-6">
                 <ol class="breadcrumb float-sm-right">
                     <li class="breadcrumb-item"><a href="#">Student</a></li>
                     <li class="breadcrumb-item active">Leave Application</li>
                 </ol>
             </div><!-- /.col -->
         </div><!-- /.row -->
     </div><!-- /.container-fluid -->
 </div>
 <!-- /.content-header -->

 <!-- Main content -->
 <section class="content">
     <div class="container-fluid">

         <!-- Success or Error Message -->
         <?php if (isset($success_message)): ?>
         <div class="alert alert-success"><?php echo $success_message; ?></div>
         <?php elseif (isset($error_message)): ?>
         <div class="alert alert-danger"><?php echo $error_message; ?></div>
         <?php endif; ?>

         <!-- Leave Application Form -->
         <div class="card">
             <div class="card-body">
                 <form method="POST" action="">
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

         <!-- View Applied Leave -->
         <div class="card">
             <div class="card-header">
                 <h3 class="card-title">Your Leave Status</h3>
             </div>
             <div class="card-body">
                 <table class="table table-bordered">
                     <thead>
                         <tr>
                             <th>Leave Type</th>
                             <th>Start Date</th>
                             <th>End Date</th>
                             <th>Status</th>
                         </tr>
                     </thead>
                     <tbody>
                         <?php
                        // Fetch the student's leave history based on their student_id
                        $query = "SELECT * FROM leaves WHERE student_id = '$std_id' ORDER BY created_at DESC";
                        $result = mysqli_query($db_conn, $query);
                        while ($leave = mysqli_fetch_assoc($result)) {
                            ?>
                         <tr>
                             <td><?php echo $leave['leave_type']; ?></td>
                             <td><?php echo $leave['start_date']; ?></td>
                             <td><?php echo $leave['end_date']; ?></td>
                             <td><?php echo $leave['status']; ?></td>
                         </tr>
                         <?php } ?>
                     </tbody>
                 </table>
             </div>
         </div>

     </div>
     <!--/. container-fluid -->
 </section>
 <!-- /.content -->

 <?php 
include('footer.php'); 
ob_end_flush(); // End output buffering and send the output to the browser
?>