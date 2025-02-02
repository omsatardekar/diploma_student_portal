<?php include('../includes/config.php') ?>
<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Manage Student Fee Details</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Admin</a></li>
          <li class="breadcrumb-item active">Student Fee Details</li>
        </ol>
      </div>
    </div>
  </div>
</div>

<section class="content">
  <div class="container-fluid">

    <?php 
      $usermeta = get_user_metadata($std_id);
    ?>

    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Student Detail</h3>
      </div>
      <div class="card-body"> 
        <strong>Name: </strong> <?php echo get_users(array('id'=>$std_id))[0]->name ?> <br>
        <strong>Class: </strong> <?php echo $usermeta['class'] ?>
      </div>
    </div>

    <div class="card">
      <div class="card-header">
        <h3 class="card-title">Tuition Fee</h3>
      </div>
      <div class="card-body">
        <table class="table table-bordered">
          <thead> 
            <tr>
              <th>S.No</th>
              <th>Month</th>
              <th>Fee Status</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <?php
            $months = array('january', 'february', 'march', 'april', 'may', 'june', 'july', 'august', 'september', 'october', 'november', 'december');
            foreach ($months as $key => $value) {
              $highlight = ''; 
              if (date('F') == ucwords($value)) {
                $highlight = 'class="bg-success"';
              }
              ?>
              <tr>
                <td><?php echo ++$key ?></td>
                <td <?php echo $highlight ?>><?php echo ucwords($value) ?></td>
                <td></td>
                <td>
                  <button data-month="<?php echo ucwords($value) ?>" class="btn btn-sm btn-warning paynow-btn"><i class="fa fa-money-check-alt fa-fw"></i> Pay Now</button>
                </td>
              </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </div>

  </div>
</section>

<div class="modal fade" id="paynow-popup" tabindex="-1" role="dialog" aria-labelledby="paynow-popupLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="paynow-popupLabel">Pay Now</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="razorpay-payment-form">
          <div class="form-group">
            <label for="fullName">Full Name</label>
            <input type="text" id="fullName" class="form-control" readonly value="<?php echo get_users(array('id' => $std_id))[0]->name ?>">
          </div>
          <div class="form-group">
            <label for="email">Email Address</label>
            <input type="email" id="email" class="form-control" readonly value="<?php echo get_users(array('id' => $std_id))[0]->email ?>">
          </div>
          <div class="form-group">
            <label for="phone">Phone</label>
            <input type="text" id="phone" class="form-control" readonly value="1234567890">
          </div>
          <div class="form-group">
            <label for="month">Month</label>
            <input type="text" id="month" class="form-control" readonly>
          </div>
          <button type="button" id="payNowButton" class="btn btn-success">Pay Now</button>
        </form>
      </div>
    </div>
  </div>
</div>

<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
<script>
  jQuery(document).on('click', '.paynow-btn', function () {
    var month = jQuery(this).data('month');
    jQuery('#month').val(month);
    jQuery('#paynow-popup').modal('show');
  });

  jQuery('#payNowButton').on('click', function () {
    var options = {
      "key": "rzp_test_5PqllnPIYLwNHf",
      "amount": 50000, // Amount in paise (500.00 INR)
      "currency": "INR",
      "name": "Student Fee Payment",
      "description": "Fee for " + jQuery('#month').val(),
      "handler": function (response) {
        alert("Payment Successful. Payment ID: " + response.razorpay_payment_id);
        location.reload();
      },
      "prefill": {
        "name": jQuery('#fullName').val(),
        "email": jQuery('#email').val(),
        "contact": jQuery('#phone').val()
      },
      "theme": {
        "color": "#3399cc"
      }
    };
    var rzp = new Razorpay(options);
    rzp.open();
  });
</script>
<?php include('footer.php') ?>
