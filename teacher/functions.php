<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 

// Handle form submission for adding/updating functions
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $function_name = mysqli_real_escape_string($db_conn, $_POST['function_name']);
    $function_date = mysqli_real_escape_string($db_conn, $_POST['function_date']);
    $description = mysqli_real_escape_string($db_conn, $_POST['description']);

    if (isset($_POST['function_id']) && !empty($_POST['function_id'])) {
        // Update function
        $function_id = intval($_POST['function_id']);
        $update_query = "UPDATE campus_functions 
                         SET function_name = '$function_name', function_date = '$function_date', description = '$description' 
                         WHERE id = $function_id";
        $result = mysqli_query($db_conn, $update_query);
        $message = $result ? "Function updated successfully!" : "Failed to update function: " . mysqli_error($db_conn);
    } else {
        // Add new function
        $insert_query = "INSERT INTO campus_functions (function_name, function_date, description) 
                         VALUES ('$function_name', '$function_date', '$description')";
        $result = mysqli_query($db_conn, $insert_query);
        $message = $result ? "Function added successfully!" : "Failed to add function: " . mysqli_error($db_conn);
    }
}

// Handle delete functionality
if (isset($_GET['delete_id'])) {
    $delete_id = intval($_GET['delete_id']);
    $delete_query = "DELETE FROM campus_functions WHERE id = $delete_id";
    $result = mysqli_query($db_conn, $delete_query);
    $message = $result ? "Function deleted successfully!" : "Failed to delete function: " . mysqli_error($db_conn);
}

// Fetch all campus functions
$query = "SELECT * FROM campus_functions ORDER BY function_date DESC";
$functions = mysqli_query($db_conn, $query);
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Campus Functions</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Campus Functions</li>
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
                <h3 class="card-title">Campus Functions</h3>
                <div class="card-tools">
                    <button class="btn btn-success btn-sm" data-toggle="modal" data-target="#functionModal">Add New
                        Function</button>
                </div>
            </div>
            <div class="card-body">
                <?php if (isset($message)): ?>
                <div class="alert alert-info"><?php echo $message; ?></div>
                <?php endif; ?>

                <?php if (mysqli_num_rows($functions) > 0): ?>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Function Name</th>
                            <th>Date</th>
                            <th>Description</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                        $counter = 1;
                        while ($row = mysqli_fetch_assoc($functions)): 
                        ?>
                        <tr>
                            <td><?php echo $counter++; ?></td>
                            <td><?php echo $row['function_name']; ?></td>
                            <td><?php echo $row['function_date']; ?></td>
                            <td><?php echo $row['description']; ?></td>
                            <td>
                                <button class="btn btn-warning btn-sm"
                                    onclick="editFunction(<?php echo $row['id']; ?>, '<?php echo $row['function_name']; ?>', '<?php echo $row['function_date']; ?>', '<?php echo addslashes($row['description']); ?>')">Edit</button>
                                <a href="?delete_id=<?php echo $row['id']; ?>" class="btn btn-danger btn-sm"
                                    onclick="return confirm('Are you sure you want to delete this function?')">Delete</a>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <p class="text-center">No functions found.</p>
                <?php endif; ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<!-- Function Modal -->
<div class="modal fade" id="functionModal" tabindex="-1" role="dialog" aria-labelledby="functionModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST">
                <div class="modal-header">
                    <h5 class="modal-title" id="functionModalLabel">Add/Edit Function</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="function_id" id="function_id">
                    <div class="form-group">
                        <label for="function_name">Function Name</label>
                        <input type="text" class="form-control" name="function_name" id="function_name" required>
                    </div>
                    <div class="form-group">
                        <label for="function_date">Date</label>
                        <input type="date" class="form-control" name="function_date" id="function_date" required>
                    </div>
                    <div class="form-group">
                        <label for="description">Description</label>
                        <textarea class="form-control" name="description" id="description" rows="3"></textarea>
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

<script>
function editFunction(id, name, date, description) {
    document.getElementById('function_id').value = id;
    document.getElementById('function_name').value = name;
    document.getElementById('function_date').value = date;
    document.getElementById('description').value = description;
    $('#functionModal').modal('show');
}
</script>

<?php include('footer.php'); ?>