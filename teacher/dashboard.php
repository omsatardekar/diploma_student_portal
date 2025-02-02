<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Teacher Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Teacher</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </div><!-- /.col -->
        </div><!-- /.row -->
    </div><!-- /.container-fluid -->
</div>
<!-- /.content-header -->

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="row">
            <!-- Info Box for Total Students -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-graduation-cap"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Students</span>
                        <span class="info-box-number">2000</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Total Teachers -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-users"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Teachers</span>
                        <span class="info-box-number">50</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Total Courses -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-book-open"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Courses</span>
                        <span class="info-box-number">100</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for New Inquiries -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-question"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">New Inquiries</span>
                        <span class="info-box-number">10</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->
        </div><!-- /.row -->

        <hr>

        <!-- Teacher's Schedule and Upcoming Classes -->
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Upcoming Classes</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>Math 101</b> - 9:00 AM - Room 205</li>
                            <li><b>English 102</b> - 11:00 AM - Room 206</li>
                            <li><b>Physics 103</b> - 1:00 PM - Room 107</li>
                        </ul>
                        <a href="#" class="btn btn-info btn-block">View Full Schedule</a>
                    </div>
                </div>
            </div>

            <!-- Recent Activities Section -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Recent Activities</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>Completed</b> grading for <b>Math 101</b></li>
                            <li><b>Posted</b> new study material for <b>Physics 103</b></li>
                            <li><b>Updated</b> lecture notes for <b>English 102</b></li>
                        </ul>
                        <a href="#" class="btn btn-warning btn-block">View Full Activity Log</a>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->

        <hr>

        <!-- Announcements Section -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Important Announcements</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>Winter Break:</b> December 24 - January 2</li>
                            <li><b>New Semester Starts:</b> January 10, 2025</li>
                            <li><b>Staff Meeting:</b> December 22, 2024, at 2:00 PM</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->

    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php') ?>