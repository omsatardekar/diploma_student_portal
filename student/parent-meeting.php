<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Parent Meetings</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Parent Meetings</li>
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
                <h3 class="card-title">Upcoming Parent Meetings</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Meeting Name</th>
                                <th>Meeting Date</th>
                                <th>Description</th>
                                <th>Created At</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
              $query = mysqli_query($db_conn, "SELECT `id`, `meeting_name`, `meeting_date`, `description`, `created_at` FROM `parent_meetings` WHERE 1 ORDER BY `meeting_date` ASC");
              if (mysqli_num_rows($query) > 0) {
                $count = 1;
                while ($row = mysqli_fetch_assoc($query)) {
                  echo "<tr>";
                  echo "<td>{$count}</td>";
                  echo "<td>" . htmlspecialchars($row['meeting_name']) . "</td>";
                  echo "<td>" . date("d M Y", strtotime($row['meeting_date'])) . "</td>";
                  echo "<td>" . htmlspecialchars($row['description']) . "</td>";
                  echo "<td>" . date("d M Y, h:i A", strtotime($row['created_at'])) . "</td>";
                  echo "</tr>";
                  $count++;
                }
              } else {
                echo "<tr><td colspan='5' class='text-center'>No parent meetings scheduled.</td></tr>";
              }
              ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<?php include('footer.php'); ?>