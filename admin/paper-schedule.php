<?php 
include('../includes/config.php');
include('header.php');
include('sidebar.php');

// Define message variables
$success_message = $error_message = "";

// Handle adding a new paper schedule
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    $subject = mysqli_real_escape_string($db_conn, $_POST['subject']);
    $exam_date = mysqli_real_escape_string($db_conn, $_POST['exam_date']);
    $exam_time = mysqli_real_escape_string($db_conn, $_POST['exam_time']);
    $room_number = mysqli_real_escape_string($db_conn, $_POST['room_number']);
    
    $query = "INSERT INTO paper_schedule (subject, exam_date, exam_time, room_number) 
              VALUES ('$subject', '$exam_date', '$exam_time', '$room_number')";
    
    if (mysqli_query($db_conn, $query)) {
        $success_message = "Paper schedule added successfully!";
    } else {
        $error_message = "Error: " . mysqli_error($db_conn);
    }
}

// Handle deleting a paper schedule
if (isset($_GET['delete_id'])) {
    $delete_id = intval($_GET['delete_id']);
    $delete_query = "DELETE FROM paper_schedule WHERE id = $delete_id";

    if (mysqli_query($db_conn, $delete_query)) {
        $success_message = "Paper schedule deleted successfully!";
    } else {
        $error_message = "Error deleting record: " . mysqli_error($db_conn);
    }
}

// Fetch the paper schedule from the database
$query = "SELECT * FROM paper_schedule ORDER BY exam_date, exam_time";
$result = mysqli_query($db_conn, $query);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Paper Schedule</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Paper Schedule</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <!-- Display success/error messages -->
                <?php if ($success_message): ?>
                <div class="alert alert-success"><?php echo $success_message; ?></div>
                <?php endif; ?>
                <?php if ($error_message): ?>
                <div class="alert alert-danger"><?php echo $error_message; ?></div>
                <?php endif; ?>

                <!-- Add New Paper Schedule Form -->
                <h3>Add New Paper Schedule</h3>
                <form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>">
                    <div class="form-group">
                        <label for="subject">Subject:</label>
                        <input type="text" class="form-control" id="subject" name="subject" required>
                    </div>
                    <div class="form-group">
                        <label for="exam_date">Exam Date:</label>
                        <input type="date" class="form-control" id="exam_date" name="exam_date" required>
                    </div>
                    <div class="form-group">
                        <label for="exam_time">Exam Time:</label>
                        <input type="time" class="form-control" id="exam_time" name="exam_time" required>
                    </div>
                    <div class="form-group">
                        <label for="room_number">Room Number:</label>
                        <input type="text" class="form-control" id="room_number" name="room_number" required>
                    </div>
                    <button type="submit" name="submit" class="btn btn-primary">Add Schedule</button>
                </form>

                <hr>

                <!-- Paper Schedule Table -->
                <h3>Existing Paper Schedules</h3>
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>Subject</th>
                            <th>Exam Date</th>
                            <th>Exam Time</th>
                            <th>Room Number</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php if (mysqli_num_rows($result) > 0): ?>
                        <?php while ($row = mysqli_fetch_assoc($result)): ?>
                        <tr>
                            <td><?php echo $row['subject']; ?></td>
                            <td><?php echo $row['exam_date']; ?></td>
                            <td><?php echo $row['exam_time']; ?></td>
                            <td><?php echo $row['room_number']; ?></td>
                            <td>
                                <a href="editpaperschedule.php?id=<?php echo $row['id']; ?>"
                                    class="btn btn-warning btn-sm">Edit</a>
                                <a href="<?php echo $_SERVER['PHP_SELF']; ?>?delete_id=<?php echo $row['id']; ?>"
                                    class="btn btn-danger btn-sm"
                                    onclick="return confirm('Are you sure you want to delete this schedule?')">Delete</a>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                        <?php else: ?>
                        <tr>
                            <td colspan="5">No schedules found</td>
                        </tr>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php'); ?>