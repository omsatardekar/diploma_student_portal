<?php 
include('../includes/config.php'); // Database connection
include('header.php'); // Header includes
include('sidebar.php'); // Sidebar includes
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Exam Fee Payment</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Exam Fee</li>
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
            <div class="card-header">
                <h3 class="card-title">Pay Examination Fee</h3>
            </div>
            <div class="card-body">
                <!-- Exam Fee Payment Form -->
                <form action="" method="POST">
                    <div class="form-group">
                        <label for="student_name">Student Name</label>
                        <input type="text" name="student_name" id="student_name" class="form-control"
                            placeholder="Enter your full name" required>
                    </div>

                    <div class="form-group">
                        <label for="course">Course</label>
                        <select name="course" id="course" class="form-control" required>
                            <option value="">Select Course</option>
                            <!-- Fetch courses dynamically from the database -->
                            <?php
                            $query = "SELECT * FROM courses";
                            $result = mysqli_query($db_conn, $query);
                            while($row = mysqli_fetch_assoc($result)) {
                                echo "<option value='" . $row['id'] . "'>" . $row['name'] . "</option>";
                            }
                            ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="fee_amount">Fee Amount</label>
                        <input type="number" name="fee_amount" id="fee_amount" class="form-control"
                            placeholder="Enter fee amount" required>
                    </div>

                    <div class="form-group">
                        <label for="payment_method">Payment Method</label>
                        <select name="payment_method" id="payment_method" class="form-control" required>
                            <option value="">Select Payment Method</option>
                            <option value="Credit Card">Credit Card</option>
                            <option value="Debit Card">Debit Card</option>
                            <option value="Net Banking">Net Banking</option>
                            <option value="UPI">UPI</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="transaction_id">Transaction ID</label>
                        <input type="text" name="transaction_id" id="transaction_id" class="form-control"
                            placeholder="Enter transaction ID" required>
                    </div>

                    <button type="submit" name="submit" class="btn btn-primary">Pay Fee</button>
                </form>
            </div>
        </div>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php
// Handle form submission
if (isset($_POST['submit'])) {
    $student_name = mysqli_real_escape_string($db_conn, $_POST['student_name']);
    $course = mysqli_real_escape_string($db_conn, $_POST['course']);
    $fee_amount = mysqli_real_escape_string($db_conn, $_POST['fee_amount']);
    $payment_method = mysqli_real_escape_string($db_conn, $_POST['payment_method']);
    $transaction_id = mysqli_real_escape_string($db_conn, $_POST['transaction_id']);

    $query = "INSERT INTO exam_fees (student_name, course_id, fee_amount, payment_method, transaction_id) 
              VALUES ('$student_name', '$course', '$fee_amount', '$payment_method', '$transaction_id')";

    if (mysqli_query($db_conn, $query)) {
        echo "<script>alert('Fee payment successful!'); window.location.href='';</script>";
    } else {
        echo "Error: " . mysqli_error($db_conn);
    }
}

include('footer.php'); // Footer includes
?>