<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Counselor Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Counselor</a></li>
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
            <!-- Info Box for Total Clients -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-user"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Clients</span>
                        <span class="info-box-number">120</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Active Sessions -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-handshake"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Active Sessions</span>
                        <span class="info-box-number">15</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for New Appointments -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-calendar-plus"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">New Appointments</span>
                        <span class="info-box-number">8</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Pending Follow-ups -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-phone"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Pending Follow-ups</span>
                        <span class="info-box-number">5</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->
        </div><!-- /.row -->

        <hr>

        <!-- Counselor's Upcoming Appointments -->
        <div class="row">
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Upcoming Appointments</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>John Doe</b> - 10:00 AM - Online Session</li>
                            <li><b>Jane Smith</b> - 12:00 PM - Office Session</li>
                            <li><b>David Brown</b> - 3:00 PM - Online Session</li>
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
                            <li><b>Completed</b> a session with <b>Emily Johnson</b></li>
                            <li><b>Followed up</b> with <b>Michael Lee</b></li>
                            <li><b>Added</b> new notes for <b>Sara White</b></li>
                        </ul>
                        <a href="#" class="btn btn-warning btn-block">View Activity Log</a>
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
                            <li><b>Workshop:</b> "Stress Management" on October 10, 2024</li>
                            <li><b>Team Meeting:</b> October 15, 2024, at 2:00 PM</li>
                            <li><b>Office Closed:</b> October 20, 2024</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->

        <hr>

        <!-- Client Feedback Section -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Client Feedback</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>John Doe:</b> "The session was extremely helpful!"</li>
                            <li><b>Jane Smith:</b> "Great advice on work-life balance."</li>
                            <li><b>David Brown:</b> "Looking forward to the next session!"</li>
                        </ul>
                        <a href="#" class="btn btn-success btn-block">View All Feedback</a>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->

    </div>
    <!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php') ?>
