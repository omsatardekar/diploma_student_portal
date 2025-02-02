<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<!-- Content Header (Page header) -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Client List</h1>
      </div><!-- /.col -->
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
          <li class="breadcrumb-item active">Client List</li>
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
      <div class="card-header py-2">
        <h3 class="card-title">
          Client Inquiries
        </h3>
      </div>
      <div class="card-body">
        <div class="table-responsive bg-white">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>S.No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Message</th>
                <th>Created At</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $count = 1;
              $query = mysqli_query($db_conn, 'SELECT * FROM inquiries ORDER BY created_at DESC');
              while ($inquiry = mysqli_fetch_object($query)) { ?>
                <tr>
                  <td><?= $count++ ?></td>
                  <td><?= htmlspecialchars($inquiry->name) ?></td>
                  <td><?= htmlspecialchars($inquiry->email) ?></td>
                  <td><?= htmlspecialchars($inquiry->mobile) ?></td>
                  <td><?= nl2br(htmlspecialchars($inquiry->message)) ?></td>
                  <td><?= htmlspecialchars($inquiry->created_at) ?></td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div><!--/. container-fluid -->
</section>
<!-- /.content -->

<?php include('footer.php') ?>
