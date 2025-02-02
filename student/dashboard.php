<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Dashboard</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Dashboard</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <!-- Info boxes -->
        <div class="row">
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-graduation-cap"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Students</span>
                        <span class="info-box-number">2000</span>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-users"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Teachers</span>
                        <span class="info-box-number">50</span>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-book-open"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Courses</span>
                        <span class="info-box-number">100</span>
                    </div>
                </div>
            </div>
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-question"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">New Inquiries</span>
                        <span class="info-box-number">10</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Motivational Message -->
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Keep Learning and Growing!</h3>
                    </div>
                    <div class="card-body">
                        <p>Welcome back to your dashboard! Keep up the great work. Your learning journey is progressing,
                            and there's so much more to achieve. Keep pushing forward!</p>
                        <p>Remember: "The more that you read, the more things you will know. The more that you learn,
                            the more places you'll go." — Dr. Seuss</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Recent Activities -->
        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Recent Activities</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li>Completed the "Advanced Math" course.</li>
                            <li>Joined the "Introduction to Programming" course.</li>
                            <li>Submitted the "JavaScript Basics" assignment.</li>
                            <li>Engaged in a discussion about "Web Development Trends" in the community forum.</li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Upcoming Events</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li>Webinar on "Career Growth through Online Courses" - 10th December.</li>
                            <li>Live Q&A session with top educators - 15th December.</li>
                            <li>Deadline for assignment submission: "Data Science 101" - 20th December.</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

<?php include('footer.php'); ?>