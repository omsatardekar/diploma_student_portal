<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Your Results</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Results</li>
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
                <h3 class="card-title">View Your Results</h3>
            </div>
            <div class="card-body">
                <!-- Form to select academic year and semester -->
                <form method="post" action="">
                    <div class="row">
                        <div class="col-md-4">
                            <label for="academic_year">Select Academic Year:</label>
                            <select name="academic_year" id="academic_year" class="form-control">
                                <option value="">Select Year</option>
                                <option value="2023-24">2023-24</option>
                                <option value="2022-23">2022-23</option>
                                <option value="2021-22">2021-22</option>
                                <!-- Add more years if needed -->
                            </select>
                        </div>
                        <div class="col-md-4">
                            <label for="semester">Select Semester:</label>
                            <select name="semester" id="semester" class="form-control">
                                <option value="">Select Semester</option>
                                <option value="1">Semester 1</option>
                                <option value="2">Semester 2</option>
                                <option value="3">Semester 3</option>
                                <option value="4">Semester 4</option>
                                <!-- Add more semesters if needed -->
                            </select>
                        </div>
                        <div class="col-md-4">
                            <button type="submit" name="view_results" class="btn btn-primary mt-4">View Results</button>
                        </div>
                    </div>
                </form>

                <?php
                if (isset($_POST['view_results'])) {
                    // Get selected academic year and semester
                    $academic_year = $_POST['academic_year'];
                    $semester = $_POST['semester'];

                    // Check if both fields are selected and session is valid
                    if (!empty($academic_year) && !empty($semester)) {
                        if (isset($_SESSION['student_id'])) {
                            $student_id = $_SESSION['student_id']; // Assuming the student ID is stored in the session

                            // Query to fetch the results based on academic year, semester, and student ID
                            $query = "SELECT * FROM `results` WHERE `student_id` = '$student_id' AND `academic_year` = '$academic_year' AND `semester` = '$semester'";
                            $result = mysqli_query($db_conn, $query);

                            if (mysqli_num_rows($result) > 0) {
                                // Display the results
                                echo "<table class='table table-bordered table-striped'>";
                                echo "<thead><tr>
                                        <th>#</th>
                                        <th>Subject</th>
                                        <th>Marks Obtained</th>
                                        <th>Max Marks</th>
                                        <th>Status</th>
                                      </tr></thead><tbody>";

                                $counter = 1;
                                while ($row = mysqli_fetch_assoc($result)) {
                                    $status = ($row['marks_obtained'] >= 40) ? 'Passed' : 'Failed'; // Assuming pass marks are 40
                                    echo "<tr>
                                            <td>{$counter}</td>
                                            <td>{$row['subject']}</td>
                                            <td>{$row['marks_obtained']}</td>
                                            <td>{$row['max_marks']}</td>
                                            <td>{$status}</td>
                                          </tr>";
                                    $counter++;
                                }
                                echo "</tbody></table>";
                            } else {
                                echo "<p>Data not present for the selected student for the selected academic year and semester.</p>";
                            }
                        } else {
                            echo "<p>Student ID is not set in the session. Please login again.</p>";
                        }
                    } else {
                        echo "<p>Please select both academic year and semester.</p>";
                    }
                }
                ?>
            </div>
        </div>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php') ?>