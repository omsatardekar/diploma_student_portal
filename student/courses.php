<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Courses</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Courses</li>
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
                <h3 class="card-title">Available Courses</h3>
            </div>
            <div class="card-body">
                <?php
        // Query to fetch course details
        $query = "SELECT `id`, `name`, `category`, `duration`, `date`, `image` FROM `courses` ";
        $result = mysqli_query($db_conn, $query);

        // Check if there are courses available
        if ($result && mysqli_num_rows($result) > 0) {
        ?>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Duration</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
              $counter = 1;
              while ($row = mysqli_fetch_assoc($result)) {
                echo "<tr>";
                echo "<td>" . $counter++ . "</td>";
                echo "<td>" . htmlspecialchars($row['name']) . "</td>";
                echo "<td>" . htmlspecialchars($row['category']) . "</td>";
                echo "<td>" . htmlspecialchars($row['duration']) . "</td>";
                echo "</tr>";
              }
              ?>
                    </tbody>
                </table>
                <?php
        } else {
          echo "<p class='text-center'>No courses available at the moment.</p>";
        }
        ?>
            </div>
        </div>
    </div>
</section>
<!-- /.content -->

<?php include('footer.php') ?>