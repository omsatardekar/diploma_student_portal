<?php 
include('../includes/config.php');
include('header.php'); 
include('sidebar.php');

// Fetch campus functions from the database
$sql = "SELECT `id`, `function_name`, `function_date`, `description` FROM `campus_functions` WHERE 1";
$result = $db_conn->query($sql);

// Handle registration form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['register'])) {
    $function_id = $_POST['function_id'];
    $student_name = $_POST['student_name'];
    $student_email = $_POST['student_email'];

    // Save registration data into the new table 'function_registrations'
    $sql_register = "INSERT INTO `function_registrations` (`function_id`, `student_name`, `student_email`) VALUES (?, ?, ?)";
    $stmt = $db_conn->prepare($sql_register);
    $stmt->bind_param("iss", $function_id, $student_name, $student_email);
    $stmt->execute();
    $message = "Registration successful!";
}
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Campus Functions</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Campus Functions</li>
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
                <!-- Display any messages -->
                <?php if (isset($message)) { echo "<div class='alert alert-success'>$message</div>"; } ?>

                <!-- Check if there are any functions available -->
                <?php if ($result->num_rows > 0): ?>
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
                        <?php while($row = $result->fetch_assoc()): ?>
                        <tr id="function-<?php echo $row['id']; ?>">
                            <td><?php echo $row['id']; ?></td>
                            <td><?php echo htmlspecialchars($row['function_name']); ?></td>
                            <td><?php echo date("F j, Y", strtotime($row['function_date'])); ?></td>
                            <td><?php echo substr($row['description'], 0, 100); ?>...</td>
                            <td>
                                <?php
                                // Check if the user is already registered
                                $check_registration = "SELECT * FROM `function_registrations` WHERE `function_id` = ? AND `student_email` = ?";
                                $stmt_check = $db_conn->prepare($check_registration);
                                $stmt_check->bind_param("is", $row['id'], $_SESSION['user_email']);
                                $stmt_check->execute();
                                $result_check = $stmt_check->get_result();
                                if ($result_check->num_rows > 0) {
                                    echo "<button class='btn btn-success btn-sm'>Registered</button>";
                                } else {
                                    echo "<button class='btn btn-primary btn-sm register-now' data-id='" . $row['id'] . "'>Register Now</button>";
                                }
                                ?>
                            </td>
                        </tr>
                        <?php endwhile; ?>
                    </tbody>
                </table>
                <?php else: ?>
                <p>No campus functions available at the moment. Please check back later.</p>
                <?php endif; ?>

                <!-- Registration Form Modal -->
                <div id="registration-form" style="display:none;">
                    <form method="POST" action="">
                        <h3>Register for the Function</h3>
                        <input type="hidden" name="function_id" id="function_id">
                        <div class="form-group">
                            <label for="student_name">Name</label>
                            <input type="text" class="form-control" name="student_name" required>
                        </div>
                        <div class="form-group">
                            <label for="student_email">Email</label>
                            <input type="email" class="form-control" name="student_email" required>
                        </div>
                        <button type="submit" name="register" class="btn btn-success">Register</button>
                        <button type="button" id="close-registration" class="btn btn-danger">Close</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php'); ?>

<!-- JavaScript to handle the Register Now button and show registration form -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
$(document).ready(function() {
    // When the "Register Now" button is clicked
    $('.register-now').click(function() {
        var functionId = $(this).data('id'); // Get the function ID
        $('#function_id').val(functionId); // Set the function ID in the hidden input
        $('#registration-form').fadeIn(); // Show the registration form
    });

    // Close the registration form
    $('#close-registration').click(function() {
        $('#registration-form').fadeOut(); // Hide the registration form
    });
});
</script>

<style>
/* Styling for the registration form */
#registration-form {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background: white;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    width: 60%;
    max-width: 400px;
    z-index: 1000;
}

form .form-group {
    margin-bottom: 15px;
}

#close-registration {
    background-color: red;
    color: white;
    border: none;
    padding: 5px 10px;
    border-radius: 5px;
    cursor: pointer;
    margin-left: 10px;
}
</style>