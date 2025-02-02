<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Subjects</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Subjects</li>
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
                <h3 class="card-title">List of Subjects</h3>
            </div>
            <div class="card-body">
                <?php
        // Query to fetch subjects
        $query = "SELECT `id`, `subject_name`, `subject_code`, `created_at`, `updated_at` FROM `subjects` ";
        $result = mysqli_query($db_conn, $query);

        // Check if subjects exist
        if ($result && mysqli_num_rows($result) > 0) {
        ?>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Subject Name</th>
                            <th>Subject Code</th>
                            <th>Created At</th>
                            <th>Updated At</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
              $counter = 1;
              while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $counter++ . "</td>";
                echo "<td>" . htmlspecialchars($row['subject_name']) . "</td>";
                echo "<td>" . htmlspecialchars($row['subject_code']) . "</td>";
                echo "<td>" . htmlspecialchars($row['created_at']) . "</td>";
                echo "<td>" . htmlspecialchars($row['updated_at']) . "</td>";
                echo "</tr>";
              }
              ?>
                    </tbody>
                </table>
                <?php
        } else {
          echo "<p class='text-center'>No subjects available at the moment.</p>";
        }
        ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<?php include('footer.php') ?>