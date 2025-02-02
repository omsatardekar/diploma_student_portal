<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 

// Handle form submission for adding/updating meetings
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $meeting_name = mysqli_real_escape_string($db_conn, $_POST['meeting_name']);
    $meeting_date = mysqli_real_escape_string($db_conn, $_POST['meeting_date']);
    $description = mysqli_real_escape_string($db_conn, $_POST['description']);

    if (isset($_POST['meeting_id']) && !empty($_POST['meeting_id'])) {
        // Update existing meeting
        $meeting_id = intval($_POST['meeting_id']);
        $update_query = "UPDATE parent_meetings 
                         SET meeting_name = '$meeting_name', meeting_date = '$meeting_date', description = '$description' 
                         WHERE id = $meeting_id";
        $result = mysqli_query($db_conn, $update_query);
        $message = $result ? "Meeting updated successfully!" : "Failed to update: " . mysqli_error($db_conn);
    } else {
        // Add a new meeting
        $insert_query = "INSERT INTO parent_meetings (meeting_name, meeting_date, description) 
                         VALUES ('$meeting_name', '$meeting_date', '$description')";
        $result = mysqli_query($db_conn, $insert_query);
        $message = $result ? "Meeting added successfully!" : "Failed to add: " . mysqli_error($db_conn);
    }
}

// Handle delete functionality
if (isset($_GET['delete_id'])) {
    $delete_id = intval($_GET['delete_id']);
    $delete_query = "DELETE FROM parent_meetings WHERE id = $delete_id";
    $result = mysqli_query($db_conn, $delete_query);
    $message = $result ? "Meeting deleted successfully!" : "Failed to delete: " . mysqli_error($db_conn);
}

// Fetch all meetings
$query = "SELECT * FROM parent_meetings ORDER BY meeting_date DESC";
$meetings = mysqli_query($db_conn, $query);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Parent-Teacher Meetings</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Home</a></li>
                    <li class="breadcrumb-item active">Parent-Teacher Meetings</li>
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
                <h3 class="card-title">Manage Meetings</h3>
                <div class="card-tools">
                    <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#meetingModal">Add New
                        Meeting</button>
                </div>
            </div>
            <div class="card-body">
                <?php if (isset($message)): ?>
                <div class="alert alert-info"><?php echo $message; ?></div>
                <?php endif; ?>

                <?php if (mysqli_num_rows($meetings) > 0): ?>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Meeting Name</th>
                            <th>Date</th>
                            <th>Description</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $count = 1; while ($row = mysqli_fetch_assoc($meetings)): ?>
                        <tr>
                            <td><?php echo $count++; ?></td>
                            <td><?php echo htmlspecialchars($row['meeting_name']); ?></td>
                            <td><?php echo htmlspecialchars($row['meeting_date']); ?></td>
                            <td><?php echo htmlspecialchars($row['description']); ?></td>
                            <td>
                                <button class="btn btn-primary btn-sm editBtn" data-id="<?php echo $row['id']; ?>"
                                    data-name="<?php echo htmlspecialchars($row['meeting_name']); ?>"
                                    data-date="<?php echo htmlspecialchars($row['meeting_date']); ?>"
                                    data-description="<?php echo htmlspecialchars($row['description']); ?>">Edit</button>
                                <a href="?delete_id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Are you sure?')">Delete</a>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <p>No meetings found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<!-- Add/Edit Meeting Modal -->
<div class="modal fade" id="meetingModal" tabindex="-1" role="dialog" aria-labelledby="meetingModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="">
                <div class="modal-header">
                    <h5 class="modal-title" id="meetingModalLabel">Add/Edit Meeting</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="meeting_id" id="meeting_id">
                    <div class="form-group">
                        <label for="meeting_name">Meeting Name</label>
                        <input type="text" class="form-control" id="meeting_name" name="meeting_name" required>
                    </div>
                    <div class="form-group">
                        <label for="meeting_date">Date</label>
                        <input type="date" class="form-control" id="meeting_date" name="meeting_date" required>
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

<?php include('footer.php'); ?>

<!-- JavaScript for editing -->
<script>
document.querySelectorAll('.editBtn').forEach(button => {
    button.addEventListener('click', function() {
        const id = this.getAttribute('data-id');
        const name = this.getAttribute('data-name');
        const date = this.getAttribute('data-date');
        const description = this.getAttribute('data-description');

        document.getElementById('meeting_id').value = id;
        document.getElementById('meeting_name').value = name;
        document.getElementById('meeting_date').value = date;
        document.getElementById('description').value = description;

        $('#meetingModal').modal('show');
    });
});
</script>