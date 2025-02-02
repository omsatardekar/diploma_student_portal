<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 

// Handle form submission for adding/updating seminars/webinars
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $seminar_name = mysqli_real_escape_string($db_conn, $_POST['seminar_name']);
    $seminar_date = mysqli_real_escape_string($db_conn, $_POST['seminar_date']);
    $description = mysqli_real_escape_string($db_conn, $_POST['description']);

    if (isset($_POST['seminar_id']) && !empty($_POST['seminar_id'])) {
        // Update seminar/webinar
        $seminar_id = intval($_POST['seminar_id']);
        $update_query = "UPDATE campus_functions 
                         SET function_name = '$seminar_name', function_date = '$seminar_date', description = '$description' 
                         WHERE id = $seminar_id";
        $result = mysqli_query($db_conn, $update_query);
        $message = $result ? "Seminar/Webinar updated successfully!" : "Failed to update: " . mysqli_error($db_conn);
    } else {
        // Add new seminar/webinar
        $insert_query = "INSERT INTO campus_functions (function_name, function_date, description) 
                         VALUES ('$seminar_name', '$seminar_date', '$description')";
        $result = mysqli_query($db_conn, $insert_query);
        $message = $result ? "Seminar/Webinar added successfully!" : "Failed to add: " . mysqli_error($db_conn);
    }
}

// Handle delete functionality
if (isset($_GET['delete_id'])) {
    $delete_id = intval($_GET['delete_id']);
    $delete_query = "DELETE FROM campus_functions WHERE id = $delete_id";
    $result = mysqli_query($db_conn, $delete_query);
    $message = $result ? "Seminar/Webinar deleted successfully!" : "Failed to delete: " . mysqli_error($db_conn);
}

// Fetch all seminars/webinars
$query = "SELECT * FROM campus_functions ORDER BY function_date DESC";
$seminars = mysqli_query($db_conn, $query);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Seminars/Webinars</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Seminars/Webinars</li>
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
                <h3 class="card-title">Seminars/Webinars Management</h3>
                <div class="card-tools">
                    <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#seminarModal">Add New
                        Seminar/Webinar</button>
                </div>
            </div>
            <div class="card-body">
                <?php if (isset($message)): ?>
                <div class="alert alert-info"><?php echo $message; ?></div>
                <?php endif; ?>

                <?php if (mysqli_num_rows($seminars) > 0): ?>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Seminar/Webinar Name</th>
                            <th>Date</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $count = 1; while ($row = mysqli_fetch_assoc($seminars)): ?>
                        <tr>
                            <td><?php echo $count++; ?></td>
                            <td><?php echo htmlspecialchars($row['function_name']); ?></td>
                            <td><?php echo htmlspecialchars($row['function_date']); ?></td>
                            <td><?php echo htmlspecialchars($row['description']); ?></td>
                            <td>
                                <button class="btn btn-primary btn-sm editBtn" data-id="<?php echo $row['id']; ?>"
                                    data-name="<?php echo htmlspecialchars($row['function_name']); ?>"
                                    data-date="<?php echo htmlspecialchars($row['function_date']); ?>"
                                    data-description="<?php echo htmlspecialchars($row['description']); ?>">Edit</button>
                                <a href="?delete_id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Are you sure?')">Delete</a>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <p>No seminars/webinars found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>

<!-- Add/Edit Seminar Modal -->
<div class="modal fade" id="seminarModal" tabindex="-1" role="dialog" aria-labelledby="seminarModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="">
                <div class="modal-header">
                    <h5 class="modal-title" id="seminarModalLabel">Add/Edit Seminar/Webinar</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="seminar_id" id="seminar_id">
                    <div class="form-group">
                        <label for="seminar_name">Seminar/Webinar Name</label>
                        <input type="text" class="form-control" id="seminar_name" name="seminar_name" required>
                    </div>
                    <div class="form-group">
                        <label for="seminar_date">Date</label>
                        <input type="date" class="form-control" id="seminar_date" name="seminar_date" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" id="description" name="description" rows="3" required></textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save Changes</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Include footer -->
<?php include('footer.php'); ?>

<!-- JavaScript for editing -->
<script>
document.querySelectorAll('.editBtn').forEach(button => {
    button.addEventListener('click', function() {
        const id = this.getAttribute('data-id');
        const name = this.getAttribute('data-name');
        const date = this.getAttribute('data-date');
        const description = this.getAttribute('data-description');

        document.getElementById('seminar_id').value = id;
        document.getElementById('seminar_name').value = name;
        document.getElementById('seminar_date').value = date;
        document.getElementById('description').value = description;

        $('#seminarModal').modal('show');
    });
});
</script>