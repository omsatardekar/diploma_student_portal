<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 

// Handle delete request
if (isset($_GET['delete_id'])) {
    $delete_id = intval($_GET['delete_id']); // Sanitize input
    $delete_query = "DELETE FROM leaves WHERE id = $delete_id";
    if (mysqli_query($db_conn, $delete_query)) {
        $success_message = "Leave application deleted successfully!";
    } else {
        $error_message = "Failed to delete leave application: " . mysqli_error($db_conn);
    }
}

// Handle approve or reject request
if (isset($_GET['action']) && isset($_GET['id'])) {
    $action = $_GET['action'];
    $leave_id = intval($_GET['id']);
    
    if ($action == 'approve') {
        $update_query = "UPDATE leaves SET status = 'Approved' WHERE id = $leave_id";
        $status_message = "Leave application approved!";
    } elseif ($action == 'reject') {
        $update_query = "UPDATE leaves SET status = 'Rejected' WHERE id = $leave_id";
        $status_message = "Leave application rejected!";
    }

    if (mysqli_query($db_conn, $update_query)) {
        $success_message = $status_message;
    } else {
        $error_message = "Failed to update leave status: " . mysqli_error($db_conn);
    }
}

// Fetch leave data from the database
$query = "SELECT * FROM leaves";
$result = mysqli_query($db_conn, $query);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Leave Management</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                    <li class="breadcrumb-item active">Leave Management</li>
                </ol>
            </div>
        </div>
    </div>
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Leave Applications</h3>
                <div class="card-tools">
                    <a href="apply_leave.php" class="btn btn-success btn-sm">Apply for Leave</a>
                </div>
            </div>
            <div class="card-body">
                <!-- Display success or error messages -->
                <?php if (isset($success_message)): ?>
                <div class="alert alert-success"><?php echo $success_message; ?></div>
                <?php elseif (isset($error_message)): ?>
                <div class="alert alert-danger"><?php echo $error_message; ?></div>
                <?php endif; ?>

                <?php if (mysqli_num_rows($result) > 0): ?>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Employee Name</th>
                            <th>Leave Type</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th>Status</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $counter = 1;
                        while ($row = mysqli_fetch_assoc($result)): 
                        ?>
                        <tr>
                            <td><?php echo $counter++; ?></td>
                            <td><?php echo $row['employee_name']; ?></td>
                            <td><?php echo $row['leave_type']; ?></td>
                            <td><?php echo $row['start_date']; ?></td>
                            <td><?php echo $row['end_date']; ?></td>
                            <td>
                                <?php 
                                if ($row['status'] == 'Approved') echo '<span class="badge badge-success">Approved</span>';
                                elseif ($row['status'] == 'Pending') echo '<span class="badge badge-warning">Pending</span>';
                                else echo '<span class="badge badge-danger">Rejected</span>';
                                ?>
                            </td>
                            <td>
                                <a href="view_leave.php?id=<?php echo $row['id']; ?>"
                                    class="btn btn-info btn-sm">View</a>
                                <a href="?delete_id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Are you sure?')">Delete</a>
                                <?php if ($row['status'] == 'Pending'): ?>
                                <a href="?action=approve&id=<?php echo $row['id']; ?>"
                                    class="btn btn-success btn-sm">Approve</a>
                                <a href="?action=reject&id=<?php echo $row['id']; ?>"
                                    class="btn btn-danger btn-sm">Reject</a>
                                <?php endif; ?>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <p class="text-center">No leave applications found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<?php 
include('footer.php'); 
?>