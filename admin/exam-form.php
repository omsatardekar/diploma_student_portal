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
                <h1 class="m-0 text-dark">Exam Registration</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Exam Registration</li>
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
                <h3 class="card-title">Register for Exam</h3>
            </div>
            <div class="card-body">
                <!-- Exam Registration Form -->
                <form action="" method="POST" enctype="multipart/form-data">
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
                        <label for="exam_date">Exam Date</label>
                        <input type="date" name="exam_date" id="exam_date" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="exam_time">Exam Time</label>
                        <input type="time" name="exam_time" id="exam_time" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="id_proof">Upload ID Proof</label>
                        <input type="file" name="id_proof" id="id_proof" class="form-control" required>
                    </div>

                    <div class="form-group">
                        <label for="comments">Additional Comments</label>
                        <textarea name="comments" id="comments" class="form-control"
                            placeholder="Any special instructions or comments"></textarea>
                    </div>

                    <button type="submit" name="submit" class="btn btn-primary">Submit Registration</button>
                </form>
            </div>
        </div>

        <!-- Display Students List -->
        <div class="card mt-4">
            <div class="card-header">
                <h3 class="card-title">Registered Students</h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Student Name</th>
                            <th>Course</th>
                            <th>Exam Date</th>
                            <th>Exam Time</th>
                            <th>ID Proof</th>
                            <th>Comments</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $query = "SELECT er.*, c.name AS course_name 
                                  FROM exam_registrations er 
                                  JOIN courses c ON er.course_id = c.id 
                                  ORDER BY er.exam_date, er.exam_time";
                        $result = mysqli_query($db_conn, $query);
                        $counter = 1;

                        if (mysqli_num_rows($result) > 0) {
                            while ($row = mysqli_fetch_assoc($result)) {
                                echo "<tr>
                                    <td>{$counter}</td>
                                    <td>{$row['student_name']}</td>
                                    <td>{$row['course_name']}</td>
                                    <td>{$row['exam_date']}</td>
                                    <td>{$row['exam_time']}</td>
                                    <td><a href='../dist/uploads/{$row['id_proof']}' target='_blank'>View</a></td>
                                    <td>{$row['comments']}</td>
                                </tr>";
                                $counter++;
                            }
                        } else {
                            echo "<tr><td colspan='7'>No students registered yet</td></tr>";
                        }
                        ?>
                    </tbody>
                </table>
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
    $exam_date = mysqli_real_escape_string($db_conn, $_POST['exam_date']);
    $exam_time = mysqli_real_escape_string($db_conn, $_POST['exam_time']);
    $comments = mysqli_real_escape_string($db_conn, $_POST['comments']);

    if ($_FILES['id_proof']['error'] == 0) {
        $target_dir = "../dist/uploads/";
        $file_name = basename($_FILES['id_proof']['name']);
        $target_file = $target_dir . $file_name;

        if (move_uploaded_file($_FILES['id_proof']['tmp_name'], $target_file)) {
            $query = "INSERT INTO exam_registrations (student_name, course_id, exam_date, exam_time, id_proof, comments) 
                      VALUES ('$student_name', '$course', '$exam_date', '$exam_time', '$file_name', '$comments')";

            if (mysqli_query($db_conn, $query)) {
                echo "<script>alert('Registration successful!'); window.location.href='';</script>";
            } else {
                echo "Error: " . mysqli_error($db_conn);
            }
        } else {
            echo "File upload failed.";
        }
    } else {
        echo "Error in file upload.";
    }
}

include('footer.php'); // Footer includes
?>