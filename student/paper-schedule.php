<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Time Table</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Time Table</li>
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
                <h3 class="card-title">Exam Time Table</h3>
            </div>
            <div class="card-body">
                <!-- Time Table -->
                <?php
              // Fetch the paper schedule from the database
              $query = "SELECT `id`, `subject`, `exam_date`, `exam_time`, `room_number` FROM `paper_schedule` WHERE 1";
              $result = mysqli_query($db_conn, $query);

              if (mysqli_num_rows($result) > 0) {
                echo "<table class='table table-bordered table-striped'>";
                echo "<thead><tr>
                        <th>#</th>
                        <th>Subject</th>
                        <th>Exam Date</th>
                        <th>Exam Time</th>
                        <th>Room Number</th>
                      </tr></thead><tbody>";
                
                // Loop through the fetched data and display it
                $counter = 1;
                while ($row = mysqli_fetch_assoc($result)) {
                  echo "<tr>
                          <td>{$counter}</td>
                          <td>{$row['subject']}</td>
                          <td>{$row['exam_date']}</td>
                          <td>{$row['exam_time']}</td>
                          <td>{$row['room_number']}</td>
                        </tr>";
                  $counter++;
                }
                
                echo "</tbody></table>";
              } else {
                echo "<p>No exam schedule found.</p>";
              }
            ?>
            </div>
        </div>
    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php') ?>