<?php
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php');

// Add Subject Logic
if (isset($_POST['add_subject'])) {
    $subject_name = mysqli_real_escape_string($db_conn, $_POST['subject_name']);
    $subject_code = mysqli_real_escape_string($db_conn, $_POST['subject_code']);

    if (!empty($subject_name) && !empty($subject_code)) {
        $query = "INSERT INTO subjects (subject_name, subject_code) VALUES ('$subject_name', '$subject_code')";
        if (mysqli_query($db_conn, $query)) {
            $success = "Subject added successfully!";
        } else {
            $error = "Error: Unable to add subject.";
        }
    } else {
        $error = "All fields are required!";
    }
}

// Delete Subject Logic
if (isset($_GET['delete_id'])) {
    $delete_id = mysqli_real_escape_string($db_conn, $_GET['delete_id']);
    $query = "DELETE FROM subjects WHERE id='$delete_id'";
    if (mysqli_query($db_conn, $query)) {
        $success = "Subject deleted successfully!";
    } else {
        $error = "Error: Unable to delete subject.";
    }
}

// Fetch Subjects Logic
$query = "SELECT * FROM subjects ORDER BY id DESC";
$result = mysqli_query($db_conn, $query);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Subjects Management</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
                    <li class="breadcrumb-item active">Subjects Management</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Add Subject</h3>
            </div>
            <div class="card-body">
                <?php if (isset($success)) { echo "<div class='alert alert-success'>$success</div>"; } ?>
                <?php if (isset($error)) { echo "<div class='alert alert-danger'>$error</div>"; } ?>
                <form method="POST" action="">
                    <div class="form-group">
                        <label for="subject_name">Subject Name</label>
                        <input type="text" class="form-control" id="subject_name" name="subject_name"
                            placeholder="Enter Subject Name">
                    </div>
                    <div class="form-group">
                        <label for="subject_code">Subject Code</label>
                        <input type="text" class="form-control" id="subject_code" name="subject_code"
                            placeholder="Enter Subject Code">
                    </div>
                    <button type="submit" class="btn btn-primary" name="add_subject">Add Subject</button>
                </form>
            </div>
        </div>

        <div class="card mt-3">
            <div class="card-header">
                <h3 class="card-title">Available Subjects</h3>
            </div>
            <div class="card-body">
                <?php if (mysqli_num_rows($result) > 0): ?>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Subject Name</th>
                            <th>Subject Code</th>
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
                            <td><?php echo $row['subject_name']; ?></td>
                            <td><?php echo $row['subject_code']; ?></td>
                            <td>
                                <a href="?delete_id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Are you sure?')">Delete</a>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <p class="text-center">No subjects found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>

<?php include('footer.php'); ?>