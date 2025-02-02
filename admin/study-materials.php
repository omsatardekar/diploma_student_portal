<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Study Materials</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Study Materials</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->
        <div class="card">
            <div class="card-header py-2">
                <h3 class="card-title">Study Materials</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive bg-white">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>S.No.</th>
                                <th>Title</th>
                                <th>Attachment</th>
                                <th>Class</th>
                                <th>Subject</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                    // Assuming $std_id comes from session or GET request
                    if (isset($_SESSION['std_id'])) {
                        $std_id = $_SESSION['std_id']; // Get the student ID from session
                    } else {
                        echo "Student ID not found.";
                        exit;
                    }

                    // Fetch the user's metadata (ensure 'class' key exists)
                    $usermeta = get_user_metadata($std_id);
                    if (isset($usermeta['class'])) {
                        $class = $usermeta['class'];  // Get the class from user metadata
                    } else {
                        echo "Class not found for student.";
                        exit;
                    }

                    // SQL query to get study materials by class
                    $query = mysqli_query($db_conn, "SELECT * FROM `posts` as p INNER JOIN `metadata` as m ON p.id = m.item_id WHERE p.`type` = 'study-material' AND m.meta_key = 'class' AND m.meta_value = '$class'");

                    // Check if query executed successfully
                    if ($query === false) {
                        echo "Error in SQL query: " . mysqli_error($db_conn);
                        exit;
                    }

                    $count = 1;
                    while ($att = mysqli_fetch_object($query)) {
                        // Fetch class and subject data
                        $class = get_post(['id' => $att->class_id]);
                        $subject_id = get_metadata($att->item_id, 'subject')[0]->meta_value;
                        $subject = get_post(['id' => $subject_id]);
                        $file_attachment = get_metadata($att->item_id, 'file_attachment')[0]->meta_value;
                    ?>
                            <tr>
                                <td><?=$count++?></td>
                                <td><?=$att->title?></td>
                                <td><a href="<?="../dist/uploads/".$file_attachment; ?>">Download File</a></td>
                                <td><?=$class->title?></td>
                                <td><?=$subject->title?></td>
                                <td><?=$att->publish_date?></td>
                            </tr>
                            <?php } ?>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /.row -->
    </div>
</section>

<?php include('footer.php') ?>