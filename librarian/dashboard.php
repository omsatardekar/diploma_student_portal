<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Librarian Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Librarian</a></li>
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
            <!-- Info Box for Total Books -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box">
                    <span class="info-box-icon bg-info elevation-1"><i class="fas fa-book"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Total Books</span>
                        <span class="info-box-number">3,245</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Issued Books -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-success elevation-1"><i class="fas fa-book-reader"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Issued Books</span>
                        <span class="info-box-number">320</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Pending Returns -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-calendar-times"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Pending Returns</span>
                        <span class="info-box-number">25</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->

            <!-- Info Box for Total Members -->
            <div class="col-12 col-sm-6 col-md-3">
                <div class="info-box mb-3">
                    <span class="info-box-icon bg-danger elevation-1"><i class="fas fa-users"></i></span>
                    <div class="info-box-content">
                        <span class="info-box-text">Library Members</span>
                        <span class="info-box-number">1,120</span>
                    </div><!-- /.info-box-content -->
                </div><!-- /.info-box -->
            </div><!-- /.col -->
        </div><!-- /.row -->

        <hr>

        <div class="row">
            <!-- Section for Recently Issued Books -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Recently Issued Books</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>The Alchemist</b> - Issued to <b>John Doe</b> - Due: 2024-10-05</li>
                            <li><b>1984</b> - Issued to <b>Jane Smith</b> - Due: 2024-10-08</li>
                            <li><b>The Great Gatsby</b> - Issued to <b>David Brown</b> - Due: 2024-10-12</li>
                        </ul>
                        <a href="#" class="btn btn-info btn-block">View All Issued Books</a>
                    </div>
                </div>
            </div>

            <!-- Section for Recent Activities -->
            <div class="col-md-6">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Recent Activities</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>Added</b> 5 new books to the catalog</li>
                            <li><b>Issued</b> "To Kill a Mockingbird" to <b>Emily Johnson</b></li>
                            <li><b>Returned</b> "Pride and Prejudice" by <b>Michael Lee</b></li>
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
                        <h3 class="card-title">Library Announcements</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>Book Fair:</b> "Annual Book Fair" on October 15, 2024</li>
                            <li><b>New Arrivals:</b> "The Catcher in the Rye" and "Moby Dick"</li>
                            <li><b>Library Closed:</b> October 20, 2024</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!-- /.row -->

        <hr>

        <!-- Feedback Section -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Member Feedback</h3>
                    </div>
                    <div class="card-body">
                        <ul>
                            <li><b>John Doe:</b> "The library has an amazing collection!"</li>
                            <li><b>Jane Smith:</b> "Loved the new self-help section."</li>
                            <li><b>David Brown:</b> "The staff is very supportive!"</li>
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
